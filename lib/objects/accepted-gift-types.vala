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
 * Describes gift types that are accepted by a user
 */
public class TDLib.AcceptedGiftTypes : Error {

    /**
     * True, if unlimited regular gifts are accepted
     */
    public bool unlimited_gifts { get; construct set; }

    /**
     * True, if limited regular gifts are accepted
     */
    public bool limited_gifts { get; construct set; }

    /**
     * True, if upgraded gifts and regular gifts that can be upgraded for
     * free are accepted
     */
    public bool upgraded_gifts { get; construct set; }

    /**
     * True, if Telegram Premium subscription is accepted
     */
    public bool premium_subscription { get; construct set; }

    public AcceptedGiftTypes (
        bool unlimited_gifts,
        bool limited_gifts,
        bool upgraded_gifts,
        bool premium_subscription
    ) {
        Object (
            unlimited_gifts: unlimited_gifts,
            limited_gifts: limited_gifts,
            upgraded_gifts: upgraded_gifts,
            premium_subscription: premium_subscription,
            tdlib_type: "acceptedGiftTypes",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
