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
 * Describes a group of video synchronization source identifiers
 */
public class TDLib.GroupCallVideoSourceGroup : Error {

    /**
     * The semantics of sources, one of "SIM" or "FID"
     */
    public string semantics { get; construct set; }

    /**
     * The list of synchronization source identifiers
     */
    public Gee.ArrayList<int32?> source_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public GroupCallVideoSourceGroup (
        string semantics,
        Gee.ArrayList<int32?> source_ids
    ) {
        Object (
            semantics: semantics,
            source_ids: source_ids,
            tdlib_type: "groupCallVideoSourceGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
