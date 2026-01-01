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
 * Describes settings for a business account start page to set
 */
public class TDLib.InputBusinessStartPage : Error {

    /**
     * Title text of the start page;
     * 0-getOption("business_start_page_title_length_max") characters
     */
    public string title { get; construct set; }

    /**
     * Message text of the start page;
     * 0-getOption("business_start_page_message_length_max") characters
     */
    public new string message { get; construct set; }

    /**
     * Greeting sticker of the start page; pass null if none. The sticker
     * must belong to a sticker set and must not be a custom emoji
     */
    public InputFile sticker { get; construct set; }

    public InputBusinessStartPage (
        string title,
        string message,
        InputFile sticker
    ) {
        Object (
            title: title,
            message: message,
            sticker: sticker,
            tdlib_type: "inputBusinessStartPage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
