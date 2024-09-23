#if 1
#include "mp4v2/mp4v2.h"
#include "util/impl.h"
#include "mp4v2/general.h"

using namespace mp4v2::util;

char* ProgName;

// #define MP4_TRACK_TYPE_VIDEO "vide"
// #define MP4_TRACK_TYPE_AUDIO "soun"

// Forward declaration
void ClipTrack(MP4FileHandle srcFile, MP4TrackId trackId, MP4FileHandle dstFile, float startTime, float duration);
void PrintTrackInfo(MP4FileHandle file, MP4TrackId trackId);

int main(int argc, char** argv)
{
    const char* srcFileName = "av.mp4";
    const char* dstFileName = "out_cut_file.mp4";
    MP4TrackId trackId = MP4_INVALID_TRACK_ID;
    MP4LogLevel verbosity = MP4_LOG_ERROR;
    float startTime = 240.0;
    float duration = 36.0;

    MP4FileHandle srcFile = MP4Modify(srcFileName, verbosity);
    if (!srcFile) {
        cerr << "Error: unable to open source file\n";
        return 1;
    }

    MP4FileHandle dstFile = MP4_INVALID_FILE_HANDLE;
    if (dstFileName) {
        dstFile = MP4Create(dstFileName, verbosity);
        if (!dstFile) {
            cerr << "Error: unable to create destination file\n";
            MP4Close(srcFile);
            return 1;
        }
    }

    if (trackId == MP4_INVALID_TRACK_ID) {
        uint32_t numTracks = MP4GetNumberOfTracks(srcFile);
        for (uint32_t i = 0; i < numTracks; i++) {
            MP4TrackId trackId = MP4FindTrackId(srcFile, i);
            const char* trackType = MP4GetTrackType(srcFile, trackId);
            PrintTrackInfo(srcFile, trackId);

            if (strcmp(trackType, MP4_VIDEO_TRACK_TYPE) == 0 || strcmp(trackType, MP4_AUDIO_TRACK_TYPE) == 0 ) {
                ClipTrack(srcFile, trackId, dstFile, startTime, duration + 0.15);
            } else {
                cerr << "Warning: Unsupported track type " << trackType << "\n";
            }
            printf("\n");
        }
    } else {
        ClipTrack(srcFile, trackId, dstFile, startTime, duration);
    }

    // Ensure files are closed properly
    if (srcFile != MP4_INVALID_FILE_HANDLE) {
        MP4Close(srcFile);
    }
    if (dstFile != MP4_INVALID_FILE_HANDLE) {
        MP4Close(dstFile);
    }

    return 0;
}

void ClipTrack(
    MP4FileHandle srcFile, 
    MP4TrackId trackId, 
    MP4FileHandle dstFile,
    float startTime,
    float duration)
{
    
    MP4Duration maxTrackDuration = MP4GetTrackDuration(srcFile, trackId);
    uint32_t timescale = MP4GetTrackTimeScale(srcFile, trackId);

    MP4Timestamp trackStartTime = MP4ConvertToTrackTimestamp(srcFile, trackId, (uint64_t)(startTime * 1000), MP4_MSECS_TIME_SCALE);
    MP4Duration trackDuration   = MP4ConvertToTrackDuration(srcFile, trackId, (uint64_t)(duration * 1000), MP4_MSECS_TIME_SCALE);
    
    // Ensure the duration does not exceed the actual track duration
    if (trackStartTime + trackDuration > maxTrackDuration) {
        trackDuration = maxTrackDuration - trackStartTime;
    }

    printf("Track ID: %d, Start Time: %f, Duration: %f (Track Start: %llu, Track Duration: %llu)\n",
            trackId, startTime, duration, trackStartTime, trackDuration);

    MP4EditId editId = MP4AddTrackEdit(srcFile, trackId, 1, trackStartTime, trackDuration);

    if (editId == MP4_INVALID_EDIT_ID) {
        fprintf(stderr, "%s: can't create track edit\n", ProgName);
        return;
    }

    if (dstFile) {
        if (MP4CopyTrack(srcFile, trackId, trackDuration, dstFile, true) == MP4_INVALID_TRACK_ID) {
            printf("Coppy Track Failed !\n");
        }
        // Debugging output
        MP4DeleteTrackEdit(srcFile, trackId, editId);
    }
}

void PrintTrackInfo(MP4FileHandle file, MP4TrackId trackId) {
    MP4Duration duration = MP4GetTrackDuration(file, trackId);
    uint32_t timescale = MP4GetTrackTimeScale(file, trackId);
    float durationInSeconds = (float)duration / timescale;
    const char* type = MP4GetTrackType(file, trackId);
    
    cout << "Track ID: " << trackId
         << ", Type: " << (!strcmp(type, MP4_VIDEO_TRACK_TYPE) ? "Video" : "Audio")
         << ", Track Max Duration: " << duration
         << ", Duration: " << durationInSeconds << " seconds" << endl;
}

#endif