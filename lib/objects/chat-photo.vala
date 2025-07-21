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
 * Describes a chat or user profile photo
 */
public class TDLib.ChatPhoto : Error {

    /**
     * Unique photo identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the photo has been added
     */
    public int32 added_date { get; construct set; }

    /**
     * Photo minithumbnail; may be null
     */
    public Minithumbnail? minithumbnail { get; construct set; }

    /**
     * Available variants of the photo in JPEG format, in different size
     */
    public Gee.ArrayList<PhotoSize?> sizes { get; construct set; default = new Gee.ArrayList<PhotoSize?> (); }

    /**
     * A big (up to 1280x1280) animated variant of the photo in MPEG4 format;
     * may be null
     */
    public AnimatedChatPhoto? animation { get; construct set; }

    /**
     * A small (160x160) animated variant of the photo in MPEG4 format; may
     * be null even if the big animation is available
     */
    public AnimatedChatPhoto? small_animation { get; construct set; }

    /**
     * Sticker-based version of the chat photo; may be null
     */
    public ChatPhotoSticker? sticker { get; construct set; }

    public ChatPhoto (
        int64 id_,
        int32 added_date,
        Minithumbnail? minithumbnail,
        Gee.ArrayList<PhotoSize?> sizes,
        AnimatedChatPhoto? animation,
        AnimatedChatPhoto? small_animation,
        ChatPhotoSticker? sticker
    ) {
        Object (
            id_: id_,
            added_date: added_date,
            minithumbnail: minithumbnail,
            sizes: sizes,
            animation: animation,
            small_animation: small_animation,
            sticker: sticker,
            tdlib_type: "chatPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
