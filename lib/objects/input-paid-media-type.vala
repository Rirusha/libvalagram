/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Describes type of paid media to sent
 */
public abstract class TDLib.InputPaidMediaType : Error {}

/**
 * The media is a photo. The photo must be at most 10 MB in size. The
 * photo's width and height must not exceed 10000 in total. Width and
 * height ratio must be at most 20
 */
public class TDLib.InputPaidMediaTypePhoto : InputPaidMediaType {

    public InputPaidMediaTypePhoto () {
        Object (
            tdlib_type: "inputPaidMediaTypePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The media is a video
 */
public class TDLib.InputPaidMediaTypeVideo : InputPaidMediaType {

    /**
     * Duration of the video, in seconds
     */
    public int32 duration { get; construct set; }

    /**
     * True, if the video is expected to be streamed
     */
    public bool supports_streaming { get; construct set; }

    public InputPaidMediaTypeVideo (
        int32 duration,
        bool supports_streaming
    ) {
        Object (
            duration: duration,
            supports_streaming: supports_streaming,
            tdlib_type: "inputPaidMediaTypeVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
