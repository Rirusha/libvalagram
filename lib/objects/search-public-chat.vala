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
 * Searches a public chat by its username. Currently, only private chats,
 * supergroups and channels can be public. Returns the chat if found;
 * otherwise, an error is returned
 */
public class TDLib.SearchPublicChat : TDObject {

    /**
     * Username to be resolved
     */
    public string username { get; construct set; }

    public SearchPublicChat (
        string username
    ) {
        Object (
            username: username,
            tdlib_type: "searchPublicChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
