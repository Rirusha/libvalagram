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
 * Describes a video chat, i.e. a group call bound to a chat
 */
public class TDLib.VideoChat : Error {

    /**
     * Group call identifier of an active video chat; 0 if none. Full
     * information about the video chat can be received through the method
     * {@link Client.get_group_call}
     */
    public int32 group_call_id { get; construct set; }

    /**
     * True, if the video chat has participants
     */
    public bool has_participants { get; construct set; }

    /**
     * Default group call participant identifier to join the video chat; may
     * be null
     */
    public MessageSender? default_participant_id { get; construct set; }

    public VideoChat (
        int32 group_call_id,
        bool has_participants,
        MessageSender? default_participant_id
    ) {
        Object (
            group_call_id: group_call_id,
            has_participants: has_participants,
            default_participant_id: default_participant_id,
            tdlib_type: "videoChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
