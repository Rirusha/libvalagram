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
 * Describes parameters of verification that is provided by a bot
 */
public class TDLib.BotVerificationParameters : Error {

    /**
     * Identifier of the custom emoji that is used as the verification sign
     */
    public int64 icon_custom_emoji_id { get; construct set; }

    /**
     * Name of the organization that provides verification
     */
    public string organization_name { get; construct set; }

    /**
     * Default custom description of verification reason to be used as
     * placeholder in setMessageSenderBotVerification; may be null if none
     */
    public FormattedText? default_custom_description { get; construct set; }

    /**
     * True, if the bot is allowed to provide custom description for verified
     * entities
     */
    public bool can_set_custom_description { get; construct set; }

    public BotVerificationParameters (
        int64 icon_custom_emoji_id,
        string organization_name,
        FormattedText? default_custom_description,
        bool can_set_custom_description
    ) {
        Object (
            icon_custom_emoji_id: icon_custom_emoji_id,
            organization_name: organization_name,
            default_custom_description: default_custom_description,
            can_set_custom_description: can_set_custom_description,
            tdlib_type: "botVerificationParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
