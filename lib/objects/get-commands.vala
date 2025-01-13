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
 * Returns the list of commands supported by the bot for the given user
 * scope and language; for bots only
 */
internal class TDLib.GetCommands : TDObject {

    /**
     * The scope to which the commands are relevant; pass null to get
     * commands in the default bot command scope
     */
    public BotCommandScope scope { get; construct set; }

    /**
     * A two-letter ISO 639-1 language code or an empty string
     */
    public string language_code { get; construct set; }

    public GetCommands (
        BotCommandScope scope,
        string language_code
    ) {
        Object (
            scope: scope,
            language_code: language_code,
            tdlib_type: "getCommands",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
