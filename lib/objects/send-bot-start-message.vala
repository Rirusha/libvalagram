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
 * Invites a bot to a chat (if it is not yet a member) and sends it the
 * /start command; requires can_invite_users member right. Bots can't be
 * invited to a private chat other than the chat with the bot.
 * Bots can't be invited to channels (although they can be added as
 * admins) and secret chats. Returns the sent message
 */
public class TDLib.SendBotStartMessage : TDObject {

    /**
     * Identifier of the bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Identifier of the target chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * A hidden parameter sent to the bot for deep linking purposes
     * ([[https://core.telegram.org/bots#deep-linking]])
     */
    public string parameter { get; construct set; }

    public SendBotStartMessage (
        int64 bot_user_id,
        int64 chat_id,
        string parameter
    ) {
        Object (
            bot_user_id: bot_user_id,
            chat_id: chat_id,
            parameter: parameter,
            tdlib_type: "sendBotStartMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
