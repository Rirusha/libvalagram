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
 * Contains a list of chat themes based on upgraded gifts
 */
public class TDLib.GiftChatThemes : Error {

    /**
     * A list of chat themes
     */
    public Gee.ArrayList<GiftChatTheme?> themes { get; construct set; default = new Gee.ArrayList<GiftChatTheme?> (); }

    /**
     * The offset for the next request. If empty, then there are no more
     * results
     */
    public string next_offset { get; construct set; }

    public GiftChatThemes (
        Gee.ArrayList<GiftChatTheme?> themes,
        string next_offset
    ) {
        Object (
            themes: themes,
            next_offset: next_offset,
            tdlib_type: "giftChatThemes",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
