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
 * Removes the verification status of a user or a chat by an owned bot
 */
internal class TDLib.RemoveMessageSenderBotVerification : TDObject {

    /**
     * Identifier of the owned bot, which verified the user or the chat
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Identifier of the user or the supergroup or channel chat, which
     * verification is removed
     */
    public MessageSender verified_id { get; construct set; }

    public RemoveMessageSenderBotVerification (
        int64 bot_user_id,
        MessageSender verified_id
    ) {
        Object (
            bot_user_id: bot_user_id,
            verified_id: verified_id,
            tdlib_type: "removeMessageSenderBotVerification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
