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
 * Contains information about a proxy server added to the list of proxies
 */
public class TDLib.AddedProxy : Error {

    /**
     * Unique identifier of the proxy
     */
    public int32 id_ { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the proxy was last used; 0 if
     * never
     */
    public int32 last_used_date { get; construct set; }

    /**
     * True, if the proxy is enabled now
     */
    public bool is_enabled { get; construct set; }

    /**
     * The proxy
     */
    public Proxy proxy { get; construct set; }

    public AddedProxy (
        int32 id_,
        int32 last_used_date,
        bool is_enabled,
        Proxy proxy
    ) {
        Object (
            id_: id_,
            last_used_date: last_used_date,
            is_enabled: is_enabled,
            proxy: proxy,
            tdlib_type: "addedProxy",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
