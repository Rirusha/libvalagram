/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Declines an invitation to an active group call via messageGroupCall.
 * Can be called both by the sender and the receiver of the invitation
 */
public class TDLib.DeclineGroupCallInvitation : TDObject {

    /**
     * Identifier of the chat with the message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message of the type messageGroupCall
     */
    public int64 message_id { get; construct set; }

    public DeclineGroupCallInvitation (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "declineGroupCallInvitation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
