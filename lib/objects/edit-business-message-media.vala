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
 * Edits the media content of a message with a text, an animation, an
 * audio, a document, a photo or a video in a message sent on behalf of a
 * business account; for bots only
 */
internal class TDLib.EditBusinessMessageMedia : TDObject {

    /**
     * Unique identifier of business connection on behalf of which the
     * message was sent
     */
    public string business_connection_id { get; construct set; }

    /**
     * The chat the message belongs to
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * The new message reply markup; pass null if none; for bots only
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * New content of the message. Must be one of the following types:
     * inputMessageAnimation, inputMessageAudio, inputMessageDocument,
     * inputMessagePhoto or inputMessageVideo
     */
    public InputMessageContent input_message_content { get; construct set; }

    public EditBusinessMessageMedia (
        string business_connection_id,
        int64 chat_id,
        int64 message_id,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            business_connection_id: business_connection_id,
            chat_id: chat_id,
            message_id: message_id,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "editBusinessMessageMedia",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
