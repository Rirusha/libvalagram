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
 * Sends messages from a quick reply shortcut. Requires Telegram Business
 * subscription
 */
internal class TDLib.SendQuickReplyShortcutMessages : TDObject {

    /**
     * Identifier of the chat to which to send messages. The chat must be a
     * private chat with a regular user
     */
    public int64 chat_id { get; construct set; }

    /**
     * Unique identifier of the quick reply shortcut
     */
    public int32 shortcut_id { get; construct set; }

    /**
     * Non-persistent identifier, which will be returned back in
     * messageSendingStatePending object and can be used to match sent
     * messages and corresponding updateNewMessage updates
     */
    public int32 sending_id { get; construct set; }

    public SendQuickReplyShortcutMessages (
        int64 chat_id,
        int32 shortcut_id,
        int32 sending_id
    ) {
        Object (
            chat_id: chat_id,
            shortcut_id: shortcut_id,
            sending_id: sending_id,
            tdlib_type: "sendQuickReplyShortcutMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
