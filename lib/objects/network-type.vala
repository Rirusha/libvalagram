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
 * Represents the type of network
 */
public abstract class TDLib.NetworkType : Error {}

/**
 * The network is not available
 */
public class TDLib.NetworkTypeNone : NetworkType {

    public NetworkTypeNone () {
        Object (
            tdlib_type: "networkTypeNone",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A mobile network
 */
public class TDLib.NetworkTypeMobile : NetworkType {

    public NetworkTypeMobile () {
        Object (
            tdlib_type: "networkTypeMobile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A mobile roaming network
 */
public class TDLib.NetworkTypeMobileRoaming : NetworkType {

    public NetworkTypeMobileRoaming () {
        Object (
            tdlib_type: "networkTypeMobileRoaming",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Wi-Fi network
 */
public class TDLib.NetworkTypeWiFi : NetworkType {

    public NetworkTypeWiFi () {
        Object (
            tdlib_type: "networkTypeWiFi",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A different network type (e.g., Ethernet network)
 */
public class TDLib.NetworkTypeOther : NetworkType {

    public NetworkTypeOther () {
        Object (
            tdlib_type: "networkTypeOther",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
