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
 * Represents a list of Telegram Star subscriptions
 */
public class TDLib.StarSubscriptions : Error {

    /**
     * The amount of owned Telegram Stars
     */
    public int64 star_count { get; construct set; }

    /**
     * List of subscriptions for Telegram Stars
     */
    public Gee.ArrayList<StarSubscription?> subscriptions { get; construct set; default = new Gee.ArrayList<StarSubscription?> (); }

    /**
     * The number of Telegram Stars required to buy to extend subscriptions
     * expiring soon
     */
    public int64 required_star_count { get; construct set; }

    /**
     * The offset for the next request. If empty, then there are no more
     * results
     */
    public string next_offset { get; construct set; }

    public StarSubscriptions (
        int64 star_count,
        Gee.ArrayList<StarSubscription?> subscriptions,
        int64 required_star_count,
        string next_offset
    ) {
        Object (
            star_count: star_count,
            subscriptions: subscriptions,
            required_star_count: required_star_count,
            next_offset: next_offset,
            tdlib_type: "starSubscriptions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
