/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Shares a chat after pressing a keyboardButtonTypeRequestChat button
 * with the bot
 */
internal class TDLib.ShareChatWithBot : TDObject {

    /**
     * Identifier of the chat with the bot
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message with the button
     */
    public int64 message_id { get; construct set; }

    /**
     * Identifier of the button
     */
    public int32 button_id { get; construct set; }

    /**
     * Identifier of the shared chat
     */
    public int64 shared_chat_id { get; construct set; }

    /**
     * Pass true to check that the chat can be shared by the button instead
     * of actually sharing it. Doesn't check bot_is_member and
     * bot_administrator_rights restrictions.
     * If the bot must be a member, then all chats from getGroupsInCommon and
     * all chats, where the user can add the bot, are suitable. In the latter
     * case the bot will be automatically added to the chat.
     * If the bot must be an administrator, then all chats, where the bot
     * already has requested rights or can be added to administrators by the
     * user, are suitable. In the latter case the bot will be automatically
     * granted requested rights
     */
    public bool only_check { get; construct set; }

    public ShareChatWithBot (
        int64 chat_id,
        int64 message_id,
        int32 button_id,
        int64 shared_chat_id,
        bool only_check
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            button_id: button_id,
            shared_chat_id: shared_chat_id,
            only_check: only_check,
            tdlib_type: "shareChatWithBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
