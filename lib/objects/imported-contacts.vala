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
 * Represents the result of an importContacts request
 */
public class TDLib.ImportedContacts : Error {

    /**
     * User identifiers of the imported contacts in the same order as they
     * were specified in the request; 0 if the contact is not yet a
     * registered user
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * The number of users that imported the corresponding contact; 0 for
     * already registered users or if unavailable
     */
    public Gee.ArrayList<int32?> importer_count { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public ImportedContacts (
        Gee.ArrayList<int64?> user_ids,
        Gee.ArrayList<int32?> importer_count
    ) {
        Object (
            user_ids: user_ids,
            importer_count: importer_count,
            tdlib_type: "importedContacts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
