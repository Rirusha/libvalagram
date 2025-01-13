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
 * Contains information about a Web App
 */
public class TDLib.WebAppInfo : Error {

    /**
     * Unique identifier for the Web App launch
     */
    public int64 launch_id { get; construct set; }

    /**
     * A Web App URL to open in a web view
     */
    public string url { get; construct set; }

    public WebAppInfo (
        int64 launch_id,
        string url
    ) {
        Object (
            launch_id: launch_id,
            url: url,
            tdlib_type: "webAppInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
