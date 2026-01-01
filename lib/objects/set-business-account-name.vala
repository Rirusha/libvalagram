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
 * Changes the first and last name of a business account; for bots only
 */
public class TDLib.SetBusinessAccountName : TDObject {

    /**
     * Unique identifier of business connection
     */
    public string business_connection_id { get; construct set; }

    /**
     * The new value of the first name for the business account; 1-64
     * characters
     */
    public string first_name { get; construct set; }

    /**
     * The new value of the optional last name for the business account; 0-64
     * characters
     */
    public string last_name { get; construct set; }

    public SetBusinessAccountName (
        string business_connection_id,
        string first_name,
        string last_name
    ) {
        Object (
            business_connection_id: business_connection_id,
            first_name: first_name,
            last_name: last_name,
            tdlib_type: "setBusinessAccountName",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
