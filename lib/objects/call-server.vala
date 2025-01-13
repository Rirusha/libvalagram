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
 * Describes a server for relaying call data
 */
public class TDLib.CallServer : Error {

    /**
     * Server identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Server IPv4 address
     */
    public string ip_address { get; construct set; }

    /**
     * Server IPv6 address
     */
    public string ipv6_address { get; construct set; }

    /**
     * Server port number
     */
    public int32 port { get; construct set; }

    /**
     * Server type
     */
    public CallServerType type_ { get; construct set; }

    public CallServer (
        int64 id_,
        string ip_address,
        string ipv6_address,
        int32 port,
        CallServerType type_
    ) {
        Object (
            id_: id_,
            ip_address: ip_address,
            ipv6_address: ipv6_address,
            port: port,
            type_: type_,
            tdlib_type: "callServer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
