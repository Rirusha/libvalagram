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
 * Sends a simple network request to the Telegram servers via proxy; for
 * testing only. Can be called before authorization
 */
public class TDLib.TestProxy : TDObject {

    /**
     * Proxy server domain or IP address
     */
    public string server { get; construct set; }

    /**
     * Proxy server port
     */
    public int32 port { get; construct set; }

    /**
     * Proxy type
     */
    public ProxyType type_ { get; construct set; }

    /**
     * Identifier of a datacenter with which to test connection
     */
    public int32 dc_id { get; construct set; }

    /**
     * The maximum overall timeout for the request
     */
    public double timeout { get; construct set; }

    public TestProxy (
        string server,
        int32 port,
        ProxyType type_,
        int32 dc_id,
        double timeout
    ) {
        Object (
            server: server,
            port: port,
            type_: type_,
            dc_id: dc_id,
            timeout: timeout,
            tdlib_type: "testProxy",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
