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
 * Contains information about a just created or just joined group call
 */
public class TDLib.GroupCallInfo : Error {

    /**
     * Identifier of the group call
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Join response payload for tgcalls; empty if the call isn't joined
     */
    public string join_payload { get; construct set; }

    public GroupCallInfo (
        int32 group_call_id,
        string join_payload
    ) {
        Object (
            group_call_id: group_call_id,
            join_payload: join_payload,
            tdlib_type: "groupCallInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
