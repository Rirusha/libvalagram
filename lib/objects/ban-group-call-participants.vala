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
 * Bans users from a group call not bound to a chat; requires
 * groupCall.is_owned. Only the owner of the group call can invite the
 * banned users back
 */
public class TDLib.BanGroupCallParticipants : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Identifiers of group call participants to ban; identifiers of unknown
     * users from the update updateGroupCallParticipants can be also passed
     * to the method
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public BanGroupCallParticipants (
        int32 group_call_id,
        Gee.ArrayList<int64?> user_ids
    ) {
        Object (
            group_call_id: group_call_id,
            user_ids: user_ids,
            tdlib_type: "banGroupCallParticipants",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
