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
 * Sets the value of an option. (Check the list of available options on
 * [[https://core.telegram.org/tdlib/options]].) Only writable options
 * can be set. Can be called before authorization
 */
public class TDLib.SetOption : TDObject {

    /**
     * The name of the option
     */
    public string name { get; construct set; }

    /**
     * The new value of the option; pass null to reset option value to a
     * default value
     */
    public OptionValue value { get; construct set; }

    public SetOption (
        string name,
        OptionValue value
    ) {
        Object (
            name: name,
            value: value,
            tdlib_type: "setOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
