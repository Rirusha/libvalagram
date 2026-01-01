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
 * Describes the type of call server
 */
public abstract class TDLib.CallServerType : Error {}

/**
 * A Telegram call reflector
 */
public class TDLib.CallServerTypeTelegramReflector : CallServerType {

    /**
     * A peer tag to be used with the reflector
     */
    public Bytes peer_tag { get; construct set; }

    /**
     * True, if the server uses TCP instead of UDP
     */
    public bool is_tcp { get; construct set; }

    public CallServerTypeTelegramReflector (
        Bytes peer_tag,
        bool is_tcp
    ) {
        Object (
            peer_tag: peer_tag,
            is_tcp: is_tcp,
            tdlib_type: "callServerTypeTelegramReflector",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A WebRTC server
 */
public class TDLib.CallServerTypeWebrtc : CallServerType {

    /**
     * Username to be used for authentication
     */
    public string username { get; construct set; }

    /**
     * Authentication password
     */
    public string password { get; construct set; }

    /**
     * True, if the server supports TURN
     */
    public bool supports_turn { get; construct set; }

    /**
     * True, if the server supports STUN
     */
    public bool supports_stun { get; construct set; }

    public CallServerTypeWebrtc (
        string username,
        string password,
        bool supports_turn,
        bool supports_stun
    ) {
        Object (
            username: username,
            password: password,
            supports_turn: supports_turn,
            supports_stun: supports_stun,
            tdlib_type: "callServerTypeWebrtc",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
