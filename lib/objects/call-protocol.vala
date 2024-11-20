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
 * Specifies the supported call protocols
 */
public class TDLib.CallProtocol : Error {

    /**
     * True, if UDP peer-to-peer connections are supported
     */
    public bool udp_p2p { get; construct set; }

    /**
     * True, if connection through UDP reflectors is supported
     */
    public bool udp_reflector { get; construct set; }

    /**
     * The minimum supported API layer; use 65
     */
    public int32 min_layer { get; construct set; }

    /**
     * The maximum supported API layer; use 92
     */
    public int32 max_layer { get; construct set; }

    /**
     * List of supported tgcalls versions
     */
    public Gee.ArrayList<string?> library_versions { get; construct set; default = new Gee.ArrayList<string?> (); }

    public CallProtocol (
        bool udp_p2p,
        bool udp_reflector,
        int32 min_layer,
        int32 max_layer,
        Gee.ArrayList<string?> library_versions
    ) {
        Object (
            udp_p2p: udp_p2p,
            udp_reflector: udp_reflector,
            min_layer: min_layer,
            max_layer: max_layer,
            library_versions: library_versions,
            tdlib_type: "callProtocol",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
