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
 * Contains basic information about the photo of a chat
 */
public class TDLib.ChatPhotoInfo : Error {

    /**
     * A small (160x160) chat photo variant in JPEG format. The file can be
     * downloaded only before the photo is changed
     */
    public File small { get; construct set; }

    /**
     * A big (640x640) chat photo variant in JPEG format. The file can be
     * downloaded only before the photo is changed
     */
    public File big { get; construct set; }

    /**
     * Chat photo minithumbnail; may be null
     */
    public Minithumbnail? minithumbnail { get; construct set; }

    /**
     * True, if the photo has animated variant
     */
    public bool has_animation { get; construct set; }

    /**
     * True, if the photo is visible only for the current user
     */
    public bool is_personal { get; construct set; }

    public ChatPhotoInfo (
        File small,
        File big,
        Minithumbnail? minithumbnail,
        bool has_animation,
        bool is_personal
    ) {
        Object (
            small: small,
            big: big,
            minithumbnail: minithumbnail,
            has_animation: has_animation,
            is_personal: is_personal,
            tdlib_type: "chatPhotoInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
