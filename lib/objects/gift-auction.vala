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
 * Describes an auction on which a gift can be purchased
 */
public class TDLib.GiftAuction : Error {

    /**
     * Identifier of the auction
     */
    public string id_ { get; construct set; }

    /**
     * Number of gifts distributed in each round
     */
    public int32 gifts_per_round { get; construct set; }

    public GiftAuction (
        string id_,
        int32 gifts_per_round
    ) {
        Object (
            id_: id_,
            gifts_per_round: gifts_per_round,
            tdlib_type: "giftAuction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
