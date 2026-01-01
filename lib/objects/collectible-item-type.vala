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
 * Describes a collectible item that can be purchased at
 * [[https://fragment.com]]
 */
public abstract class TDLib.CollectibleItemType : Error {}

/**
 * A username
 */
public class TDLib.CollectibleItemTypeUsername : CollectibleItemType {

    /**
     * The username
     */
    public string username { get; construct set; }

    public CollectibleItemTypeUsername (
        string username
    ) {
        Object (
            username: username,
            tdlib_type: "collectibleItemTypeUsername",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A phone number
 */
public class TDLib.CollectibleItemTypePhoneNumber : CollectibleItemType {

    /**
     * The phone number
     */
    public string phone_number { get; construct set; }

    public CollectibleItemTypePhoneNumber (
        string phone_number
    ) {
        Object (
            phone_number: phone_number,
            tdlib_type: "collectibleItemTypePhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
