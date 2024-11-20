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
 * Returns message senders voted for the specified option in a
 * non-anonymous polls. For optimal performance, the number of returned
 * users is chosen by TDLib
 */
internal class TDLib.GetPollVoters : TDObject {

    /**
     * Identifier of the chat to which the poll belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message containing the poll
     */
    public int64 message_id { get; construct set; }

    /**
     * 0-based identifier of the answer option
     */
    public int32 option_id { get; construct set; }

    /**
     * Number of voters to skip in the result; must be non-negative
     */
    public int32 offset { get; construct set; }

    /**
     * The maximum number of voters to be returned; must be positive and
     * can't be greater than 50. For optimal performance, the number of
     * returned voters is chosen by TDLib and can be smaller than the
     * specified limit, even if the end of the voter list has not been
     * reached
     */
    public int32 limit { get; construct set; }

    public GetPollVoters (
        int64 chat_id,
        int64 message_id,
        int32 option_id,
        int32 offset,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            option_id: option_id,
            offset: offset,
            limit: limit,
            tdlib_type: "getPollVoters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
