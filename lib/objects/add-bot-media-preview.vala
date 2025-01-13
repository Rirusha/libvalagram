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
 * Adds a new media preview to the beginning of the list of media
 * previews of a bot. Returns the added preview after addition is
 * completed server-side. The total number of previews must not exceed
 * getOption("bot_media_preview_count_max") for the given language
 */
public class TDLib.AddBotMediaPreview : TDObject {

    /**
     * Identifier of the target bot. The bot must be owned and must have the
     * main Web App
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * A two-letter ISO 639-1 language code for which preview is added. If
     * empty, then the preview will be shown to all users for whose languages
     * there are no dedicated previews.
     * If non-empty, then there must be an official language pack of the same
     * name, which is returned by {@link Client.get_localization_target_info}
     */
    public string language_code { get; construct set; }

    /**
     * Content of the added preview
     */
    public InputStoryContent content { get; construct set; }

    public AddBotMediaPreview (
        int64 bot_user_id,
        string language_code,
        InputStoryContent content
    ) {
        Object (
            bot_user_id: bot_user_id,
            language_code: language_code,
            content: content,
            tdlib_type: "addBotMediaPreview",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
