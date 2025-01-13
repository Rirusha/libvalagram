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
 * Returns an instant view version of a web page if available. Returns a
 * 404 error if the web page has no instant view page
 */
public class TDLib.GetWebPageInstantView : TDObject {

    /**
     * The web page URL
     */
    public string url { get; construct set; }

    /**
     * Pass true to get full instant view for the web page
     */
    public bool force_full { get; construct set; }

    public GetWebPageInstantView (
        string url,
        bool force_full
    ) {
        Object (
            url: url,
            force_full: force_full,
            tdlib_type: "getWebPageInstantView",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
