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
 * Changes default participant identifier, on whose behalf a video chat
 * in the chat will be joined
 */
public class TDLib.SetVideoChatDefaultParticipant : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Default group call participant identifier to join the video chats in
     * the chat
     */
    public MessageSender default_participant_id { get; construct set; }

    public SetVideoChatDefaultParticipant (
        int64 chat_id,
        MessageSender default_participant_id
    ) {
        Object (
            chat_id: chat_id,
            default_participant_id: default_participant_id,
            tdlib_type: "setVideoChatDefaultParticipant",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
