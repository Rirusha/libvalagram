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
 * Contains information about a forwarded message
 */
public class TDLib.MessageForwardInfo : Error {

    /**
     * Origin of the forwarded message
     */
    public MessageOrigin origin { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the message was originally sent
     */
    public int32 date { get; construct set; }

    /**
     * For messages forwarded to the chat with the current user (Saved
     * Messages), to the Replies bot chat, or to the channel's discussion
     * group, information about the source message from which the message was
     * forwarded last time; may be null for other forwards or if unknown
     */
    public ForwardSource? source { get; construct set; }

    /**
     * The type of public service announcement for the forwarded message
     */
    public string public_service_announcement_type { get; construct set; }

    public MessageForwardInfo (
        MessageOrigin origin,
        int32 date,
        ForwardSource? source,
        string public_service_announcement_type
    ) {
        Object (
            origin: origin,
            date: date,
            source: source,
            public_service_announcement_type: public_service_announcement_type,
            tdlib_type: "messageForwardInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
