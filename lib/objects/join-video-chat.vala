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
 * Joins an active video chat. Returns join response payload for tgcalls
 */
public class TDLib.JoinVideoChat : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Identifier of a group call participant, which will be used to join the
     * call; pass null to join as self; video chats only
     */
    public MessageSender participant_id { get; construct set; }

    /**
     * Parameters to join the call
     */
    public GroupCallJoinParameters join_parameters { get; construct set; }

    /**
     * Invite hash as received from internalLinkTypeVideoChat
     */
    public string invite_hash { get; construct set; }

    public JoinVideoChat (
        int32 group_call_id,
        MessageSender participant_id,
        GroupCallJoinParameters join_parameters,
        string invite_hash
    ) {
        Object (
            group_call_id: group_call_id,
            participant_id: participant_id,
            join_parameters: join_parameters,
            invite_hash: invite_hash,
            tdlib_type: "joinVideoChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
