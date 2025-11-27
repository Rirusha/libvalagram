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
 * Contains a list of users and chats that spend most money on paid
 * messages and reactions in a live story
 */
public class TDLib.LiveStoryDonors : Error {

    /**
     * Total amount of spend Telegram Stars
     */
    public int64 total_star_count { get; construct set; }

    /**
     * List of top donors in the live story
     */
    public Gee.ArrayList<PaidReactor?> top_donors { get; construct set; default = new Gee.ArrayList<PaidReactor?> (); }

    public LiveStoryDonors (
        int64 total_star_count,
        Gee.ArrayList<PaidReactor?> top_donors
    ) {
        Object (
            total_star_count: total_star_count,
            top_donors: top_donors,
            tdlib_type: "liveStoryDonors",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
