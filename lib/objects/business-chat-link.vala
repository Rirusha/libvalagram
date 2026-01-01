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
 * Contains information about a business chat link
 */
public class TDLib.BusinessChatLink : Error {

    /**
     * The HTTPS link
     */
    public string link { get; construct set; }

    /**
     * Message draft text that will be added to the input field
     */
    public FormattedText text { get; construct set; }

    /**
     * Link title
     */
    public string title { get; construct set; }

    /**
     * Number of times the link was used
     */
    public int32 view_count { get; construct set; }

    public BusinessChatLink (
        string link,
        FormattedText text,
        string title,
        int32 view_count
    ) {
        Object (
            link: link,
            text: text,
            title: title,
            view_count: view_count,
            tdlib_type: "businessChatLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
