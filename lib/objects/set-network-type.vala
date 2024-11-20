/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Sets the current network type. Can be called before authorization.
 * Calling this method forces all network connections to reopen,
 * mitigating the delay in switching between different networks,
 * so it must be called whenever the network is changed, even if the
 * network type remains the same. Network type is used to check whether
 * the library can use the network at all and also for collecting
 * detailed network data usage statistics
 */
internal class TDLib.SetNetworkType : TDObject {

    /**
     * The new network type; pass null to set network type to
     * networkTypeOther
     */
    public NetworkType type_ { get; construct set; }

    public SetNetworkType (
        NetworkType type_
    ) {
        Object (
            type_: type_,
            tdlib_type: "setNetworkType",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
