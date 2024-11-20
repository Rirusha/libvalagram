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
 * Sends 2-10 messages grouped together into an album. Currently, only
 * audio, document, photo and video messages can be grouped into an
 * album.
 * Documents and audio files can be only grouped in an album with
 * messages of the same type. Returns sent messages
 */
internal class TDLib.SendMessageAlbum : TDObject {

    /**
     * Target chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * If not 0, the message thread identifier in which the messages will be
     * sent
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * Information about the message or story to be replied; pass null if
     * none
     */
    public InputMessageReplyTo reply_to { get; construct set; }

    /**
     * Options to be used to send the messages; pass null to use default
     * options
     */
    public MessageSendOptions options { get; construct set; }

    /**
     * Contents of messages to be sent. At most 10 messages can be added to
     * an album. All messages must have the same value of
     * show_caption_above_media
     */
    public Gee.ArrayList<InputMessageContent?> input_message_contents { get; construct set; default = new Gee.ArrayList<InputMessageContent?> (); }

    public SendMessageAlbum (
        int64 chat_id,
        int64 message_thread_id,
        InputMessageReplyTo reply_to,
        MessageSendOptions options,
        Gee.ArrayList<InputMessageContent?> input_message_contents
    ) {
        Object (
            chat_id: chat_id,
            message_thread_id: message_thread_id,
            reply_to: reply_to,
            options: options,
            input_message_contents: input_message_contents,
            tdlib_type: "sendMessageAlbum",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
