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
 * Contains information about a user that added paid reactions
 */
public class TDLib.PaidReactor : Error {

    /**
     * Identifier of the user or chat that added the reactions; may be null
     * for anonymous reactors that aren't the current user
     */
    public MessageSender? sender_id { get; construct set; }

    /**
     * Number of Telegram Stars added
     */
    public int32 star_count { get; construct set; }

    /**
     * True, if the reactor is one of the most active reactors; may be false
     * if the reactor is the current user
     */
    public bool is_top { get; construct set; }

    /**
     * True, if the paid reaction was added by the current user
     */
    public bool is_me { get; construct set; }

    /**
     * True, if the reactor is anonymous
     */
    public bool is_anonymous { get; construct set; }

    public PaidReactor (
        MessageSender? sender_id,
        int32 star_count,
        bool is_top,
        bool is_me,
        bool is_anonymous
    ) {
        Object (
            sender_id: sender_id,
            star_count: star_count,
            is_top: is_top,
            is_me: is_me,
            is_anonymous: is_anonymous,
            tdlib_type: "paidReactor",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
