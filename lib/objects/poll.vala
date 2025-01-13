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
 * Describes a poll
 */
public class TDLib.Poll : Error {

    /**
     * Unique poll identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Poll question; 1-300 characters. Only custom emoji entities are
     * allowed
     */
    public FormattedText question { get; construct set; }

    /**
     * List of poll answer options
     */
    public Gee.ArrayList<PollOption?> options { get; construct set; default = new Gee.ArrayList<PollOption?> (); }

    /**
     * Total number of voters, participating in the poll
     */
    public int32 total_voter_count { get; construct set; }

    /**
     * Identifiers of recent voters, if the poll is non-anonymous
     */
    public Gee.ArrayList<MessageSender?> recent_voter_ids { get; construct set; default = new Gee.ArrayList<MessageSender?> (); }

    /**
     * True, if the poll is anonymous
     */
    public bool is_anonymous { get; construct set; }

    /**
     * Type of the poll
     */
    public PollType type_ { get; construct set; }

    /**
     * Amount of time the poll will be active after creation, in seconds
     */
    public int32 open_period { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the poll will automatically be
     * closed
     */
    public int32 close_date { get; construct set; }

    /**
     * True, if the poll is closed
     */
    public bool is_closed { get; construct set; }

    public Poll (
        int64 id_,
        FormattedText question,
        Gee.ArrayList<PollOption?> options,
        int32 total_voter_count,
        Gee.ArrayList<MessageSender?> recent_voter_ids,
        bool is_anonymous,
        PollType type_,
        int32 open_period,
        int32 close_date,
        bool is_closed
    ) {
        Object (
            id_: id_,
            question: question,
            options: options,
            total_voter_count: total_voter_count,
            recent_voter_ids: recent_voter_ids,
            is_anonymous: is_anonymous,
            type_: type_,
            open_period: open_period,
            close_date: close_date,
            is_closed: is_closed,
            tdlib_type: "poll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
