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
 * Describes an instant view page for a web page
 */
public class TDLib.WebPageInstantView : Error {

    /**
     * Content of the instant view page
     */
    public Gee.ArrayList<PageBlock?> page_blocks { get; construct set; default = new Gee.ArrayList<PageBlock?> (); }

    /**
     * Number of the instant view views; 0 if unknown
     */
    public int32 view_count { get; construct set; }

    /**
     * Version of the instant view; currently, can be 1 or 2
     */
    public int32 version { get; construct set; }

    /**
     * True, if the instant view must be shown from right to left
     */
    public bool is_rtl { get; construct set; }

    /**
     * True, if the instant view contains the full page. A network request
     * might be needed to get the full instant view
     */
    public bool is_full { get; construct set; }

    /**
     * An internal link to be opened to leave feedback about the instant view
     */
    public InternalLinkType feedback_link { get; construct set; }

    public WebPageInstantView (
        Gee.ArrayList<PageBlock?> page_blocks,
        int32 view_count,
        int32 version,
        bool is_rtl,
        bool is_full,
        InternalLinkType feedback_link
    ) {
        Object (
            page_blocks: page_blocks,
            view_count: view_count,
            version: version,
            is_rtl: is_rtl,
            is_full: is_full,
            feedback_link: feedback_link,
            tdlib_type: "webPageInstantView",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
