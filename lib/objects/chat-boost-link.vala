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
 * Contains an HTTPS link to boost a chat
 */
public class TDLib.ChatBoostLink : Error {

    /**
     * The link
     */
    public string link { get; construct set; }

    /**
     * True, if the link will work for non-members of the chat
     */
    public bool is_public { get; construct set; }

    public ChatBoostLink (
        string link,
        bool is_public
    ) {
        Object (
            link: link,
            is_public: is_public,
            tdlib_type: "chatBoostLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
