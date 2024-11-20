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
 * Converts a themeParameters object to corresponding JSON-serialized
 * string. Can be called synchronously
 */
internal class TDLib.GetThemeParametersJsonString : TDObject {

    /**
     * Theme parameters to convert to JSON
     */
    public ThemeParameters theme { get; construct set; }

    public GetThemeParametersJsonString (
        ThemeParameters theme
    ) {
        Object (
            theme: theme,
            tdlib_type: "getThemeParametersJsonString",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
