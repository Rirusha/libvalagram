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
 * Reports reactions set on a message to the Telegram moderators.
 * Reactions on a message can be reported only if
 * messageProperties.can_report_reactions
 */
internal class TDLib.ReportMessageReactions : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * Identifier of the sender, which added the reaction
     */
    public MessageSender sender_id { get; construct set; }

    public ReportMessageReactions (
        int64 chat_id,
        int64 message_id,
        MessageSender sender_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            sender_id: sender_id,
            tdlib_type: "reportMessageReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
