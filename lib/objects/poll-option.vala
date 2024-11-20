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
 * Describes one answer option of a poll
 */
public class TDLib.PollOption : Error {

    /**
     * Option text; 1-100 characters. Only custom emoji entities are allowed
     */
    public FormattedText text { get; construct set; }

    /**
     * Number of voters for this option, available only for closed or voted
     * polls
     */
    public int32 voter_count { get; construct set; }

    /**
     * The percentage of votes for this option; 0-100
     */
    public int32 vote_percentage { get; construct set; }

    /**
     * True, if the option was chosen by the user
     */
    public bool is_chosen { get; construct set; }

    /**
     * True, if the option is being chosen by a pending setPollAnswer request
     */
    public bool is_being_chosen { get; construct set; }

    public PollOption (
        FormattedText text,
        int32 voter_count,
        int32 vote_percentage,
        bool is_chosen,
        bool is_being_chosen
    ) {
        Object (
            text: text,
            voter_count: voter_count,
            vote_percentage: vote_percentage,
            is_chosen: is_chosen,
            is_being_chosen: is_being_chosen,
            tdlib_type: "pollOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
