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
 * Describes a message that can be used for quick reply
 */
public class TDLib.QuickReplyMessage : Error {

    /**
     * Unique message identifier among all quick replies
     */
    public int64 id_ { get; construct set; }

    /**
     * The sending state of the message; may be null if the message isn't
     * being sent and didn't fail to be sent
     */
    public MessageSendingState? sending_state { get; construct set; }

    /**
     * True, if the message can be edited
     */
    public bool can_be_edited { get; construct set; }

    /**
     * The identifier of the quick reply message to which the message
     * replies; 0 if none
     */
    public int64 reply_to_message_id { get; construct set; }

    /**
     * If non-zero, the user identifier of the bot through which this message
     * was sent
     */
    public int64 via_bot_user_id { get; construct set; }

    /**
     * Unique identifier of an album this message belongs to; 0 if none. Only
     * audios, documents, photos and videos can be grouped together in albums
     */
    public int64 media_album_id { get; construct set; }

    /**
     * Content of the message
     */
    public MessageContent content { get; construct set; }

    /**
     * Inline keyboard reply markup for the message; may be null if none
     */
    public ReplyMarkup? reply_markup { get; construct set; }

    public QuickReplyMessage (
        int64 id_,
        MessageSendingState? sending_state,
        bool can_be_edited,
        int64 reply_to_message_id,
        int64 via_bot_user_id,
        int64 media_album_id,
        MessageContent content,
        ReplyMarkup? reply_markup
    ) {
        Object (
            id_: id_,
            sending_state: sending_state,
            can_be_edited: can_be_edited,
            reply_to_message_id: reply_to_message_id,
            via_bot_user_id: via_bot_user_id,
            media_album_id: media_album_id,
            content: content,
            reply_markup: reply_markup,
            tdlib_type: "quickReplyMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
