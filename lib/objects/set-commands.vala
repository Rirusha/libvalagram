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
 * Sets the list of commands supported by the bot for the given user
 * scope and language; for bots only
 */
public class TDLib.SetCommands : TDObject {

    /**
     * The scope to which the commands are relevant; pass null to change
     * commands in the default bot command scope
     */
    public BotCommandScope scope { get; construct set; }

    /**
     * A two-letter ISO 639-1 language code. If empty, the commands will be
     * applied to all users from the given scope, for which language there
     * are no dedicated commands
     */
    public string language_code { get; construct set; }

    /**
     * List of the bot's commands
     */
    public Gee.ArrayList<BotCommand?> commands { get; construct set; default = new Gee.ArrayList<BotCommand?> (); }

    public SetCommands (
        BotCommandScope scope,
        string language_code,
        Gee.ArrayList<BotCommand?> commands
    ) {
        Object (
            scope: scope,
            language_code: language_code,
            commands: commands,
            tdlib_type: "setCommands",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
