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
 * Changes imported contacts using the list of contacts saved on the
 * device. Imports newly added contacts and, if at least the file
 * database is enabled, deletes recently deleted contacts.
 * Query result depends on the result of the previous query, so only one
 * query is possible at the same time
 */
public class TDLib.ChangeImportedContacts : TDObject {

    /**
     * The new list of contacts to import
     */
    public Gee.ArrayList<ImportedContact?> contacts { get; construct set; default = new Gee.ArrayList<ImportedContact?> (); }

    public ChangeImportedContacts (
        Gee.ArrayList<ImportedContact?> contacts
    ) {
        Object (
            contacts: contacts,
            tdlib_type: "changeImportedContacts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
