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
 * Describes a built-in theme of an official app
 */
public abstract class TDLib.BuiltInTheme : Error {}

/**
 * Classic light theme
 */
public class TDLib.BuiltInThemeClassic : BuiltInTheme {

    public BuiltInThemeClassic () {
        Object (
            tdlib_type: "builtInThemeClassic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Regular light theme
 */
public class TDLib.BuiltInThemeDay : BuiltInTheme {

    public BuiltInThemeDay () {
        Object (
            tdlib_type: "builtInThemeDay",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Regular dark theme
 */
public class TDLib.BuiltInThemeNight : BuiltInTheme {

    public BuiltInThemeNight () {
        Object (
            tdlib_type: "builtInThemeNight",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Tinted dark theme
 */
public class TDLib.BuiltInThemeTinted : BuiltInTheme {

    public BuiltInThemeTinted () {
        Object (
            tdlib_type: "builtInThemeTinted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Arctic light theme
 */
public class TDLib.BuiltInThemeArctic : BuiltInTheme {

    public BuiltInThemeArctic () {
        Object (
            tdlib_type: "builtInThemeArctic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
