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
 * Pins a message in a chat. A message can be pinned only if
 * messageProperties.can_be_pinned
 */
public class TDLib.PinChatMessage : TDObject {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the new pinned message
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass true to disable notification about the pinned message.
     * Notifications are always disabled in channels and private chats
     */
    public bool disable_notification { get; construct set; }

    /**
     * Pass true to pin the message only for self; private chats only
     */
    public bool only_for_self { get; construct set; }

    public PinChatMessage (
        int64 chat_id,
        int64 message_id,
        bool disable_notification,
        bool only_for_self
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            disable_notification: disable_notification,
            only_for_self: only_for_self,
            tdlib_type: "pinChatMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
