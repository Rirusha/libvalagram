/*
 * Copyright (C) 2024-2025 Vladimir Vaskov
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <https://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

// THIS FILE WAS GENERATED, DON'T MODIFY IT

/**
 * Contains auto-download settings
 */
public class TDLib.AutoDownloadSettings : Error {

    /**
     * True, if the auto-download is enabled
     */
    public bool is_auto_download_enabled { get; construct set; }

    /**
     * The maximum size of a photo file to be auto-downloaded, in bytes
     */
    public int32 max_photo_file_size { get; construct set; }

    /**
     * The maximum size of a video file to be auto-downloaded, in bytes
     */
    public int64 max_video_file_size { get; construct set; }

    /**
     * The maximum size of other file types to be auto-downloaded, in bytes
     */
    public int64 max_other_file_size { get; construct set; }

    /**
     * The maximum suggested bitrate for uploaded videos, in kbit/s
     */
    public int32 video_upload_bitrate { get; construct set; }

    /**
     * True, if the beginning of video files needs to be preloaded for
     * instant playback
     */
    public bool preload_large_videos { get; construct set; }

    /**
     * True, if the next audio track needs to be preloaded while the user is
     * listening to an audio file
     */
    public bool preload_next_audio { get; construct set; }

    /**
     * True, if stories needs to be preloaded
     */
    public bool preload_stories { get; construct set; }

    /**
     * True, if "use less data for calls" option needs to be enabled
     */
    public bool use_less_data_for_calls { get; construct set; }

    public AutoDownloadSettings (
        bool is_auto_download_enabled,
        int32 max_photo_file_size,
        int64 max_video_file_size,
        int64 max_other_file_size,
        int32 video_upload_bitrate,
        bool preload_large_videos,
        bool preload_next_audio,
        bool preload_stories,
        bool use_less_data_for_calls
    ) {
        Object (
            is_auto_download_enabled: is_auto_download_enabled,
            max_photo_file_size: max_photo_file_size,
            max_video_file_size: max_video_file_size,
            max_other_file_size: max_other_file_size,
            video_upload_bitrate: video_upload_bitrate,
            preload_large_videos: preload_large_videos,
            preload_next_audio: preload_next_audio,
            preload_stories: preload_stories,
            use_less_data_for_calls: use_less_data_for_calls,
            tdlib_type: "autoDownloadSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
