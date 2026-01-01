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
 * Represents a chat event
 */
public class TDLib.ChatEvent : Error {

    /**
     * Chat event identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the event happened
     */
    public int32 date { get; construct set; }

    /**
     * Identifier of the user or chat who performed the action
     */
    public MessageSender member_id { get; construct set; }

    /**
     * The action
     */
    public ChatEventAction action { get; construct set; }

    public ChatEvent (
        int64 id_,
        int32 date,
        MessageSender member_id,
        ChatEventAction action
    ) {
        Object (
            id_: id_,
            date: date,
            member_id: member_id,
            action: action,
            tdlib_type: "chatEvent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
