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
 * Describes a photo to be set as a user profile or chat photo
 */
public abstract class TDLib.InputChatPhoto : Error {}

/**
 * A previously used profile photo of the current user
 */
public class TDLib.InputChatPhotoPrevious : InputChatPhoto {

    /**
     * Identifier of the current user's profile photo to reuse
     */
    public int64 chat_photo_id { get; construct set; }

    public InputChatPhotoPrevious (
        int64 chat_photo_id
    ) {
        Object (
            chat_photo_id: chat_photo_id,
            tdlib_type: "inputChatPhotoPrevious",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A static photo in JPEG format
 */
public class TDLib.InputChatPhotoStatic : InputChatPhoto {

    /**
     * Photo to be set as profile photo. Only inputFileLocal and
     * inputFileGenerated are allowed
     */
    public InputFile photo { get; construct set; }

    public InputChatPhotoStatic (
        InputFile photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "inputChatPhotoStatic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An animation in MPEG4 format; must be square, at most 10 seconds long,
 * have width between 160 and 1280 and be at most 2MB in size
 */
public class TDLib.InputChatPhotoAnimation : InputChatPhoto {

    /**
     * Animation to be set as profile photo. Only inputFileLocal and
     * inputFileGenerated are allowed
     */
    public InputFile animation { get; construct set; }

    /**
     * Timestamp of the frame, which will be used as static chat photo
     */
    public double main_frame_timestamp { get; construct set; }

    public InputChatPhotoAnimation (
        InputFile animation,
        double main_frame_timestamp
    ) {
        Object (
            animation: animation,
            main_frame_timestamp: main_frame_timestamp,
            tdlib_type: "inputChatPhotoAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A sticker on a custom background
 */
public class TDLib.InputChatPhotoSticker : InputChatPhoto {

    /**
     * Information about the sticker
     */
    public ChatPhotoSticker sticker { get; construct set; }

    public InputChatPhotoSticker (
        ChatPhotoSticker sticker
    ) {
        Object (
            sticker: sticker,
            tdlib_type: "inputChatPhotoSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
