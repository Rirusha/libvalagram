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
 * Changes whether the paid message reaction of the user to a message is
 * anonymous. The message must have paid reaction added by the user
 */
internal class TDLib.TogglePaidMessageReactionIsAnonymous : TDObject {

    /**
     * Identifier of the chat to which the message belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass true to make paid reaction of the user on the message anonymous;
     * pass false to make the user's profile visible among top reactors
     */
    public bool is_anonymous { get; construct set; }

    public TogglePaidMessageReactionIsAnonymous (
        int64 chat_id,
        int64 message_id,
        bool is_anonymous
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            is_anonymous: is_anonymous,
            tdlib_type: "togglePaidMessageReactionIsAnonymous",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
