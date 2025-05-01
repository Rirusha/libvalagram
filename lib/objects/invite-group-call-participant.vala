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
 * Invites a user to an active group call; for group calls not bound to a
 * chat only. Sends a service message of the type messageGroupCall.
 * The group call can have at most
 * getOption("group_call_participant_count_max") participants
 */
public class TDLib.InviteGroupCallParticipant : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Pass true if the group call is a video call
     */
    public bool is_video { get; construct set; }

    public InviteGroupCallParticipant (
        int32 group_call_id,
        int64 user_id,
        bool is_video
    ) {
        Object (
            group_call_id: group_call_id,
            user_id: user_id,
            is_video: is_video,
            tdlib_type: "inviteGroupCallParticipant",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
