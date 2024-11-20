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
 * Represents an inline message that can be sent via the bot
 */
public class TDLib.PreparedInlineMessageId : Error {

    /**
     * Unique identifier for the message
     */
    public string id_ { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the message can't be used anymore
     */
    public int32 expiration_date { get; construct set; }

    public PreparedInlineMessageId (
        string id_,
        int32 expiration_date
    ) {
        Object (
            id_: id_,
            expiration_date: expiration_date,
            tdlib_type: "preparedInlineMessageId",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
