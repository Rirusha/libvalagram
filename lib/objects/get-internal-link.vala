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
 * Returns an HTTPS or a tg: link with the given type. Can be called
 * before authorization
 */
public class TDLib.GetInternalLink : TDObject {

    /**
     * Expected type of the link
     */
    public InternalLinkType type_ { get; construct set; }

    /**
     * Pass true to create an HTTPS link (only available for some link
     * types); pass false to create a tg: link
     */
    public bool is_http { get; construct set; }

    public GetInternalLink (
        InternalLinkType type_,
        bool is_http
    ) {
        Object (
            type_: type_,
            is_http: is_http,
            tdlib_type: "getInternalLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
