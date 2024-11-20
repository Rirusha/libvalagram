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
 * Adds new contacts or edits existing contacts by their phone numbers;
 * contacts' user identifiers are ignored
 */
internal class TDLib.ImportContacts : TDObject {

    /**
     * The list of contacts to import or edit; contacts' vCard are ignored
     * and are not imported
     */
    public Gee.ArrayList<Contact?> contacts { get; construct set; default = new Gee.ArrayList<Contact?> (); }

    public ImportContacts (
        Gee.ArrayList<Contact?> contacts
    ) {
        Object (
            contacts: contacts,
            tdlib_type: "importContacts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
