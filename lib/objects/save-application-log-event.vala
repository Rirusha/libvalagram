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
 * Saves application log event on the server. Can be called before
 * authorization
 */
public class TDLib.SaveApplicationLogEvent : TDObject {

    /**
     * Event type
     */
    public string type_ { get; construct set; }

    /**
     * Optional chat identifier, associated with the event
     */
    public int64 chat_id { get; construct set; }

    /**
     * The log event data
     */
    public JsonValue data { get; construct set; }

    public SaveApplicationLogEvent (
        string type_,
        int64 chat_id,
        JsonValue data
    ) {
        Object (
            type_: type_,
            chat_id: chat_id,
            data: data,
            tdlib_type: "saveApplicationLogEvent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
