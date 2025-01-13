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
 * Joins an active group call. Returns join response payload for tgcalls
 */
internal class TDLib.JoinGroupCall : TDObject {

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
     * Caller audio channel synchronization source identifier; received from
     * tgcalls
     */
    public int32 audio_source_id { get; construct set; }

    /**
     * Group call join payload; received from tgcalls
     */
    public string payload { get; construct set; }

    /**
     * Pass true to join the call with muted microphone
     */
    public bool is_muted { get; construct set; }

    /**
     * Pass true if the user's video is enabled
     */
    public bool is_my_video_enabled { get; construct set; }

    /**
     * If non-empty, invite hash to be used to join the group call without
     * being muted by administrators
     */
    public string invite_hash { get; construct set; }

    public JoinGroupCall (
        int32 group_call_id,
        MessageSender participant_id,
        int32 audio_source_id,
        string payload,
        bool is_muted,
        bool is_my_video_enabled,
        string invite_hash
    ) {
        Object (
            group_call_id: group_call_id,
            participant_id: participant_id,
            audio_source_id: audio_source_id,
            payload: payload,
            is_muted: is_muted,
            is_my_video_enabled: is_my_video_enabled,
            invite_hash: invite_hash,
            tdlib_type: "joinGroupCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
