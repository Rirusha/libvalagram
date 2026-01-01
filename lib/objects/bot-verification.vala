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
 * Describes verification status provided by a bot
 */
public class TDLib.BotVerification : Error {

    /**
     * Identifier of the bot that provided the verification
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Identifier of the custom emoji that is used as the verification sign
     */
    public int64 icon_custom_emoji_id { get; construct set; }

    /**
     * Custom description of verification reason set by the bot. Can contain
     * only Mention, Hashtag, Cashtag, PhoneNumber, BankCardNumber, Url, and
     * EmailAddress entities
     */
    public FormattedText custom_description { get; construct set; }

    public BotVerification (
        int64 bot_user_id,
        int64 icon_custom_emoji_id,
        FormattedText custom_description
    ) {
        Object (
            bot_user_id: bot_user_id,
            icon_custom_emoji_id: icon_custom_emoji_id,
            custom_description: custom_description,
            tdlib_type: "botVerification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
