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
 * Contains information about verification status of a chat or a user
 */
public class TDLib.VerificationStatus : Error {

    /**
     * True, if the chat or the user is verified by Telegram
     */
    public bool is_verified { get; construct set; }

    /**
     * True, if the chat or the user is marked as scam by Telegram
     */
    public bool is_scam { get; construct set; }

    /**
     * True, if the chat or the user is marked as fake by Telegram
     */
    public bool is_fake { get; construct set; }

    /**
     * Identifier of the custom emoji to be shown as verification sign
     * provided by a bot for the user; 0 if none
     */
    public int64 bot_verification_icon_custom_emoji_id { get; construct set; }

    public VerificationStatus (
        bool is_verified,
        bool is_scam,
        bool is_fake,
        int64 bot_verification_icon_custom_emoji_id
    ) {
        Object (
            is_verified: is_verified,
            is_scam: is_scam,
            is_fake: is_fake,
            bot_verification_icon_custom_emoji_id: bot_verification_icon_custom_emoji_id,
            tdlib_type: "verificationStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
