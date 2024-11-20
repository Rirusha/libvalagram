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
 * Sends 2-10 messages grouped together into an album on behalf of a
 * business account; for bots only. Currently, only audio, document,
 * photo and video messages can be grouped into an album.
 * Documents and audio files can be only grouped in an album with
 * messages of the same type. Returns sent messages
 */
internal class TDLib.SendBusinessMessageAlbum : TDObject {

    /**
     * Unique identifier of business connection on behalf of which to send
     * the request
     */
    public string business_connection_id { get; construct set; }

    /**
     * Target chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Information about the message to be replied; pass null if none
     */
    public InputMessageReplyTo reply_to { get; construct set; }

    /**
     * Pass true to disable notification for the message
     */
    public bool disable_notification { get; construct set; }

    /**
     * Pass true if the content of the message must be protected from
     * forwarding and saving
     */
    public bool protect_content { get; construct set; }

    /**
     * Identifier of the effect to apply to the message
     */
    public int64 effect_id { get; construct set; }

    /**
     * Contents of messages to be sent. At most 10 messages can be added to
     * an album. All messages must have the same value of
     * show_caption_above_media
     */
    public Gee.ArrayList<InputMessageContent?> input_message_contents { get; construct set; default = new Gee.ArrayList<InputMessageContent?> (); }

    public SendBusinessMessageAlbum (
        string business_connection_id,
        int64 chat_id,
        InputMessageReplyTo reply_to,
        bool disable_notification,
        bool protect_content,
        int64 effect_id,
        Gee.ArrayList<InputMessageContent?> input_message_contents
    ) {
        Object (
            business_connection_id: business_connection_id,
            chat_id: chat_id,
            reply_to: reply_to,
            disable_notification: disable_notification,
            protect_content: protect_content,
            effect_id: effect_id,
            input_message_contents: input_message_contents,
            tdlib_type: "sendBusinessMessageAlbum",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
