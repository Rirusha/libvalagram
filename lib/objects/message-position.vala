/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Contains information about a message in a specific position
 */
public class TDLib.MessagePosition : Error {

    /**
     * 0-based message position in the full list of suitable messages
     */
    public int32 position { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the message was sent
     */
    public int32 date { get; construct set; }

    public MessagePosition (
        int32 position,
        int64 message_id,
        int32 date
    ) {
        Object (
            position: position,
            message_id: message_id,
            date: date,
            tdlib_type: "messagePosition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
