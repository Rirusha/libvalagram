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
 * Describes settings for a business account start page
 */
public class TDLib.BusinessStartPage : Error {

    /**
     * Title text of the start page
     */
    public string title { get; construct set; }

    /**
     * Message text of the start page
     */
    public string message { get; construct set; }

    /**
     * Greeting sticker of the start page; may be null if none
     */
    public Sticker? sticker { get; construct set; }

    public BusinessStartPage (
        string title,
        string message,
        Sticker? sticker
    ) {
        Object (
            title: title,
            message: message,
            sticker: sticker,
            tdlib_type: "businessStartPage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
