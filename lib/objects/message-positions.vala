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
 * Contains a list of message positions
 */
public class TDLib.MessagePositions : Error {

    /**
     * Total number of messages found
     */
    public int32 total_count { get; construct set; }

    /**
     * List of message positions
     */
    public Gee.ArrayList<MessagePosition?> positions { get; construct set; default = new Gee.ArrayList<MessagePosition?> (); }

    public MessagePositions (
        int32 total_count,
        Gee.ArrayList<MessagePosition?> positions
    ) {
        Object (
            total_count: total_count,
            positions: positions,
            tdlib_type: "messagePositions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
