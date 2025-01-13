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
 * Describes a call
 */
public class TDLib.Call : Error {

    /**
     * Call identifier, not persistent
     */
    public int32 id_ { get; construct set; }

    /**
     * User identifier of the other call participant
     */
    public int64 user_id { get; construct set; }

    /**
     * True, if the call is outgoing
     */
    public bool is_outgoing { get; construct set; }

    /**
     * True, if the call is a video call
     */
    public bool is_video { get; construct set; }

    /**
     * Call state
     */
    public CallState state { get; construct set; }

    /**
     * Identifier of the group call associated with the call; 0 if the group
     * call isn't created yet. The group call can be received through the
     * method getGroupCall
     */
    public int32 group_call_id { get; construct set; }

    public Call (
        int32 id_,
        int64 user_id,
        bool is_outgoing,
        bool is_video,
        CallState state,
        int32 group_call_id
    ) {
        Object (
            id_: id_,
            user_id: user_id,
            is_outgoing: is_outgoing,
            is_video: is_video,
            state: state,
            group_call_id: group_call_id,
            tdlib_type: "call",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
