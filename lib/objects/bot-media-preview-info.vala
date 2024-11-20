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
 * Contains a list of media previews of a bot for the given language and
 * the list of languages for which the bot has dedicated previews
 */
public class TDLib.BotMediaPreviewInfo : Error {

    /**
     * List of media previews
     */
    public Gee.ArrayList<BotMediaPreview?> previews { get; construct set; default = new Gee.ArrayList<BotMediaPreview?> (); }

    /**
     * List of language codes for which the bot has dedicated previews
     */
    public Gee.ArrayList<string?> language_codes { get; construct set; default = new Gee.ArrayList<string?> (); }

    public BotMediaPreviewInfo (
        Gee.ArrayList<BotMediaPreview?> previews,
        Gee.ArrayList<string?> language_codes
    ) {
        Object (
            previews: previews,
            language_codes: language_codes,
            tdlib_type: "botMediaPreviewInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
