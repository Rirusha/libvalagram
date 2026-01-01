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
 * Describes the type of proxy server
 */
public abstract class TDLib.ProxyType : Error {}

/**
 * A SOCKS5 proxy server
 */
public class TDLib.ProxyTypeSocks5 : ProxyType {

    /**
     * Username for logging in; may be empty
     */
    public string username { get; construct set; }

    /**
     * Password for logging in; may be empty
     */
    public string password { get; construct set; }

    public ProxyTypeSocks5 (
        string username,
        string password
    ) {
        Object (
            username: username,
            password: password,
            tdlib_type: "proxyTypeSocks5",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A HTTP transparent proxy server
 */
public class TDLib.ProxyTypeHttp : ProxyType {

    /**
     * Username for logging in; may be empty
     */
    public string username { get; construct set; }

    /**
     * Password for logging in; may be empty
     */
    public string password { get; construct set; }

    /**
     * Pass true if the proxy supports only HTTP requests and doesn't support
     * transparent TCP connections via HTTP CONNECT method
     */
    public bool http_only { get; construct set; }

    public ProxyTypeHttp (
        string username,
        string password,
        bool http_only
    ) {
        Object (
            username: username,
            password: password,
            http_only: http_only,
            tdlib_type: "proxyTypeHttp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An MTProto proxy server
 */
public class TDLib.ProxyTypeMtproto : ProxyType {

    /**
     * The proxy's secret in hexadecimal encoding
     */
    public string secret { get; construct set; }

    public ProxyTypeMtproto (
        string secret
    ) {
        Object (
            secret: secret,
            tdlib_type: "proxyTypeMtproto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
