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
 * Sends a suggested post based on a previously sent message in a channel
 * direct messages chat. Can be also used to suggest price or time change
 * for an existing suggested post.
 * Returns the sent message
 */
public class TDLib.AddOffer : TDObject {

    /**
     * Identifier of the channel direct messages chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message in the chat which will be sent as suggested
     * post. Use messageProperties.can_add_offer to check whether an offer
     * can be added
     * or messageProperties.can_edit_suggested_post_info to check whether
     * price or time of sending of the post can be changed
     */
    public int64 message_id { get; construct set; }

    /**
     * Options to be used to send the message. New information about the
     * suggested post must always be specified
     */
    public MessageSendOptions options { get; construct set; }

    public AddOffer (
        int64 chat_id,
        int64 message_id,
        MessageSendOptions options
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            options: options,
            tdlib_type: "addOffer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
