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
 * Options to be used when a Web App is opened
 */
public class TDLib.WebAppOpenParameters : Error {

    /**
     * Preferred Web App theme; pass null to use the default theme
     */
    public ThemeParameters theme { get; construct set; }

    /**
     * Short name of the current application; 0-64 English letters, digits,
     * and underscores
     */
    public string application_name { get; construct set; }

    /**
     * The mode in which the Web App is opened; pass null to open in
     * webAppOpenModeFullSize
     */
    public WebAppOpenMode mode { get; construct set; }

    public WebAppOpenParameters (
        ThemeParameters theme,
        string application_name,
        WebAppOpenMode mode
    ) {
        Object (
            theme: theme,
            application_name: application_name,
            mode: mode,
            tdlib_type: "webAppOpenParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
