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
 * Adds a proxy server for network requests. Can be called before
 * authorization
 */
public class TDLib.AddProxy : TDObject {

    /**
     * Proxy server domain or IP address
     */
    public string server { get; construct set; }

    /**
     * Proxy server port
     */
    public int32 port { get; construct set; }

    /**
     * Pass true to immediately enable the proxy
     */
    public bool enable { get; construct set; }

    /**
     * Proxy type
     */
    public ProxyType type_ { get; construct set; }

    public AddProxy (
        string server,
        int32 port,
        bool enable,
        ProxyType type_
    ) {
        Object (
            server: server,
            port: port,
            enable: enable,
            type_: type_,
            tdlib_type: "addProxy",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
