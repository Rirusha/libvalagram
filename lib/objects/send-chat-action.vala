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
 * Sends a notification about user activity in a chat
 */
internal class TDLib.SendChatAction : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * If not 0, the message thread identifier in which the action was
     * performed
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * Unique identifier of business connection on behalf of which to send
     * the request; for bots only
     */
    public string business_connection_id { get; construct set; }

    /**
     * The action description; pass null to cancel the currently active
     * action
     */
    public ChatAction action { get; construct set; }

    public SendChatAction (
        int64 chat_id,
        int64 message_thread_id,
        string business_connection_id,
        ChatAction action
    ) {
        Object (
            chat_id: chat_id,
            message_thread_id: message_thread_id,
            business_connection_id: business_connection_id,
            action: action,
            tdlib_type: "sendChatAction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
