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
 * Represents a list of message senders
 */
public class TDLib.MessageSenders : Error {

    /**
     * Approximate total number of messages senders found
     */
    public int32 total_count { get; construct set; }

    /**
     * List of message senders
     */
    public Gee.ArrayList<MessageSender?> senders { get; construct set; default = new Gee.ArrayList<MessageSender?> (); }

    public MessageSenders (
        int32 total_count,
        Gee.ArrayList<MessageSender?> senders
    ) {
        Object (
            total_count: total_count,
            senders: senders,
            tdlib_type: "messageSenders",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
