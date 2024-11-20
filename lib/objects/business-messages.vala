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
 * Contains a list of messages from a business account as received by a
 * bot
 */
public class TDLib.BusinessMessages : Error {

    /**
     * List of business messages
     */
    public Gee.ArrayList<BusinessMessage?> messages { get; construct set; default = new Gee.ArrayList<BusinessMessage?> (); }

    public BusinessMessages (
        Gee.ArrayList<BusinessMessage?> messages
    ) {
        Object (
            messages: messages,
            tdlib_type: "businessMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
