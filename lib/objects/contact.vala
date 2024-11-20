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
 * Describes a user contact
 */
public class TDLib.Contact : Error {

    /**
     * Phone number of the user
     */
    public string phone_number { get; construct set; }

    /**
     * First name of the user; 1-255 characters in length
     */
    public string first_name { get; construct set; }

    /**
     * Last name of the user
     */
    public string last_name { get; construct set; }

    /**
     * Additional data about the user in a form of vCard; 0-2048 bytes in
     * length
     */
    public string vcard { get; construct set; }

    /**
     * Identifier of the user, if known; 0 otherwise
     */
    public int64 user_id { get; construct set; }

    public Contact (
        string phone_number,
        string first_name,
        string last_name,
        string vcard,
        int64 user_id
    ) {
        Object (
            phone_number: phone_number,
            first_name: first_name,
            last_name: last_name,
            vcard: vcard,
            user_id: user_id,
            tdlib_type: "contact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
