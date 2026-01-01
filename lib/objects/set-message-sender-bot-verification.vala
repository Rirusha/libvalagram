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
 * Changes the verification status of a user or a chat by an owned bot
 */
public class TDLib.SetMessageSenderBotVerification : TDObject {

    /**
     * Identifier of the owned bot, which will verify the user or the chat
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Identifier of the user or the supergroup or channel chat, which will
     * be verified by the bot
     */
    public MessageSender verified_id { get; construct set; }

    /**
     * Custom description of verification reason;
     * 0-getOption("bot_verification_custom_description_length_max").
     * If empty, then "was verified by organization "organization_name"" will
     * be used as description. Can be specified only if the bot is allowed to
     * provide custom description
     */
    public string custom_description { get; construct set; }

    public SetMessageSenderBotVerification (
        int64 bot_user_id,
        MessageSender verified_id,
        string custom_description
    ) {
        Object (
            bot_user_id: bot_user_id,
            verified_id: verified_id,
            custom_description: custom_description,
            tdlib_type: "setMessageSenderBotVerification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
