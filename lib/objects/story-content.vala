/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Contains the content of a story
 */
public abstract class TDLib.StoryContent : Error {}

/**
 * A photo story
 */
public class TDLib.StoryContentPhoto : StoryContent {

    /**
     * The photo
     */
    public Photo photo { get; construct set; }

    public StoryContentPhoto (
        Photo photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "storyContentPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video story
 */
public class TDLib.StoryContentVideo : StoryContent {

    /**
     * The video in MPEG4 format
     */
    public StoryVideo video { get; construct set; }

    /**
     * Alternative version of the video in MPEG4 format, encoded with H.264
     * codec; may be null
     */
    public StoryVideo? alternative_video { get; construct set; }

    public StoryContentVideo (
        StoryVideo video,
        StoryVideo? alternative_video
    ) {
        Object (
            video: video,
            alternative_video: alternative_video,
            tdlib_type: "storyContentVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A live story
 */
public class TDLib.StoryContentLive : StoryContent {

    /**
     * Identifier of the corresponding group call. The group call can be
     * received through the method {@link Client.get_group_call}
     */
    public int32 group_call_id { get; construct set; }

    /**
     * True, if the call is an RTMP stream instead of an ordinary group call
     */
    public bool is_rtmp_stream { get; construct set; }

    public StoryContentLive (
        int32 group_call_id,
        bool is_rtmp_stream
    ) {
        Object (
            group_call_id: group_call_id,
            is_rtmp_stream: is_rtmp_stream,
            tdlib_type: "storyContentLive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A story content that is not supported in the current TDLib version
 */
public class TDLib.StoryContentUnsupported : StoryContent {

    public StoryContentUnsupported () {
        Object (
            tdlib_type: "storyContentUnsupported",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
