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
 * Information about a bank card
 */
public class TDLib.BankCardInfo : Error {

    /**
     * Title of the bank card description
     */
    public string title { get; construct set; }

    /**
     * Actions that can be done with the bank card number
     */
    public Gee.ArrayList<BankCardActionOpenUrl?> actions { get; construct set; default = new Gee.ArrayList<BankCardActionOpenUrl?> (); }

    public BankCardInfo (
        string title,
        Gee.ArrayList<BankCardActionOpenUrl?> actions
    ) {
        Object (
            title: title,
            actions: actions,
            tdlib_type: "bankCardInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
