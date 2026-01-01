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
 * Contains information about the main Web App of a bot
 */
public class TDLib.MainWebApp : Error {

    /**
     * URL of the Web App to open
     */
    public string url { get; construct set; }

    /**
     * The mode in which the Web App must be opened
     */
    public WebAppOpenMode mode { get; construct set; }

    public MainWebApp (
        string url,
        WebAppOpenMode mode
    ) {
        Object (
            url: url,
            mode: mode,
            tdlib_type: "mainWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
