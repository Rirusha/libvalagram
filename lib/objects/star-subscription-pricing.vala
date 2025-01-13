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
 * Describes subscription plan paid in Telegram Stars
 */
public class TDLib.StarSubscriptionPricing : Error {

    /**
     * The number of seconds between consecutive Telegram Star debiting
     */
    public int32 period { get; construct set; }

    /**
     * The amount of Telegram Stars that must be paid for each period
     */
    public int64 star_count { get; construct set; }

    public StarSubscriptionPricing (
        int32 period,
        int64 star_count
    ) {
        Object (
            period: period,
            star_count: star_count,
            tdlib_type: "starSubscriptionPricing",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
