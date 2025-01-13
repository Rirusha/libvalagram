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
 * Describes the current state of the connection to Telegram servers
 */
public abstract class TDLib.ConnectionState : Error {}

/**
 * Waiting for the network to become available. Use
 * {@link Client.set_network_type} to change the available network type
 */
public class TDLib.ConnectionStateWaitingForNetwork : ConnectionState {

    public ConnectionStateWaitingForNetwork () {
        Object (
            tdlib_type: "connectionStateWaitingForNetwork",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Establishing a connection with a proxy server
 */
public class TDLib.ConnectionStateConnectingToProxy : ConnectionState {

    public ConnectionStateConnectingToProxy () {
        Object (
            tdlib_type: "connectionStateConnectingToProxy",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Establishing a connection to the Telegram servers
 */
public class TDLib.ConnectionStateConnecting : ConnectionState {

    public ConnectionStateConnecting () {
        Object (
            tdlib_type: "connectionStateConnecting",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Downloading data expected to be received while the application was
 * offline
 */
public class TDLib.ConnectionStateUpdating : ConnectionState {

    public ConnectionStateUpdating () {
        Object (
            tdlib_type: "connectionStateUpdating",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * There is a working connection to the Telegram servers
 */
public class TDLib.ConnectionStateReady : ConnectionState {

    public ConnectionStateReady () {
        Object (
            tdlib_type: "connectionStateReady",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
