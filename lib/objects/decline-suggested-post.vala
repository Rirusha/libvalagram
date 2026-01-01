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
 * Declines a suggested post in a channel direct messages chat
 */
public class TDLib.DeclineSuggestedPost : TDObject {

    /**
     * Chat identifier of the channel direct messages chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message with the suggested post. Use
     * messageProperties.can_be_declined to check whether the suggested post
     * can be declined
     */
    public int64 message_id { get; construct set; }

    /**
     * Comment for the creator of the suggested post; 0-128 characters
     */
    public string comment { get; construct set; }

    public DeclineSuggestedPost (
        int64 chat_id,
        int64 message_id,
        string comment
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            comment: comment,
            tdlib_type: "declineSuggestedPost",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
