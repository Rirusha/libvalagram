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
 * Describes collection of gifts
 */
public class TDLib.GiftCollection : Error {

    /**
     * Unique identifier of the collection
     */
    public int32 id_ { get; construct set; }

    /**
     * Name of the collection
     */
    public string name { get; construct set; }

    /**
     * Icon of the collection; may be null if none
     */
    public Sticker? icon { get; construct set; }

    /**
     * Total number of gifts in the collection
     */
    public int32 gift_count { get; construct set; }

    public GiftCollection (
        int32 id_,
        string name,
        Sticker? icon,
        int32 gift_count
    ) {
        Object (
            id_: id_,
            name: name,
            icon: icon,
            gift_count: gift_count,
            tdlib_type: "giftCollection",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
