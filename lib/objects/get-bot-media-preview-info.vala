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
 * Returns the list of media previews for the given language and the list
 * of languages for which the bot has dedicated previews
 */
public class TDLib.GetBotMediaPreviewInfo : TDObject {

    /**
     * Identifier of the target bot. The bot must be owned and must have the
     * main Web App
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * A two-letter ISO 639-1 language code for which to get previews. If
     * empty, then default previews are returned
     */
    public string language_code { get; construct set; }

    public GetBotMediaPreviewInfo (
        int64 bot_user_id,
        string language_code
    ) {
        Object (
            bot_user_id: bot_user_id,
            language_code: language_code,
            tdlib_type: "getBotMediaPreviewInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
