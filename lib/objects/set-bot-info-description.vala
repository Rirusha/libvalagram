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
 * Sets the text shown in the chat with a bot if the chat is empty. Can
 * be called only if userTypeBot.can_be_edited == true
 */
internal class TDLib.SetBotInfoDescription : TDObject {

    /**
     * Identifier of the target bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * A two-letter ISO 639-1 language code. If empty, the description will
     * be shown to all users for whose languages there is no dedicated
     * description
     */
    public string language_code { get; construct set; }

    /**
     * New bot's description on the specified language
     */
    public string description { get; construct set; }

    public SetBotInfoDescription (
        int64 bot_user_id,
        string language_code,
        string description
    ) {
        Object (
            bot_user_id: bot_user_id,
            language_code: language_code,
            description: description,
            tdlib_type: "setBotInfoDescription",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
