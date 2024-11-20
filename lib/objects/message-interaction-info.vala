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
 * Contains information about interactions with a message
 */
public class TDLib.MessageInteractionInfo : Error {

    /**
     * Number of times the message was viewed
     */
    public int32 view_count { get; construct set; }

    /**
     * Number of times the message was forwarded
     */
    public int32 forward_count { get; construct set; }

    /**
     * Information about direct or indirect replies to the message; may be
     * null. Currently, available only in channels with a discussion
     * supergroup and discussion supergroups for messages, which are not
     * replies itself
     */
    public MessageReplyInfo? reply_info { get; construct set; }

    /**
     * The list of reactions or tags added to the message; may be null
     */
    public MessageReactions? reactions { get; construct set; }

    public MessageInteractionInfo (
        int32 view_count,
        int32 forward_count,
        MessageReplyInfo? reply_info,
        MessageReactions? reactions
    ) {
        Object (
            view_count: view_count,
            forward_count: forward_count,
            reply_info: reply_info,
            reactions: reactions,
            tdlib_type: "messageInteractionInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
