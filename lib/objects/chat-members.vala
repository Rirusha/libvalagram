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
 * Contains a list of chat members
 */
public class TDLib.ChatMembers : Error {

    /**
     * Approximate total number of chat members found
     */
    public int32 total_count { get; construct set; }

    /**
     * A list of chat members
     */
    public Gee.ArrayList<ChatMember?> members { get; construct set; default = new Gee.ArrayList<ChatMember?> (); }

    public ChatMembers (
        int32 total_count,
        Gee.ArrayList<ChatMember?> members
    ) {
        Object (
            total_count: total_count,
            members: members,
            tdlib_type: "chatMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
