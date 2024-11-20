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
 * Returns the value of an option by its name. (Check the list of
 * available options on https://core.telegram.org/tdlib/options.) Can be
 * called before authorization. Can be called synchronously for options
 * "version" and "commit_hash"
 */
internal class TDLib.GetOption : TDObject {

    /**
     * The name of the option
     */
    public string name { get; construct set; }

    public GetOption (
        string name
    ) {
        Object (
            name: name,
            tdlib_type: "getOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
