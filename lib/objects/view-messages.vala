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
 * Informs TDLib that messages are being viewed by the user. Sponsored
 * messages must be marked as viewed only when the entire text of the
 * message is shown on the screen (excluding the button).
 * Many useful activities depend on whether the messages are currently
 * being viewed or not (e.g., marking messages as read, incrementing a
 * view counter, updating a view counter, removing deleted messages in
 * supergroups and channels)
 */
public class TDLib.ViewMessages : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The identifiers of the messages being viewed
     */
    public Gee.ArrayList<int64?> message_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Source of the message view; pass null to guess the source based on
     * chat open state
     */
    public MessageSource source { get; construct set; }

    /**
     * Pass true to mark as read the specified messages even if the chat is
     * closed
     */
    public bool force_read { get; construct set; }

    public ViewMessages (
        int64 chat_id,
        Gee.ArrayList<int64?> message_ids,
        MessageSource source,
        bool force_read
    ) {
        Object (
            chat_id: chat_id,
            message_ids: message_ids,
            source: source,
            force_read: force_read,
            tdlib_type: "viewMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
