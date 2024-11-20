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
 * Adds 2-10 messages grouped together into an album to a quick reply
 * shortcut. Currently, only audio, document, photo and video messages
 * can be grouped into an album.
 * Documents and audio files can be only grouped in an album with
 * messages of the same type. Returns sent messages
 */
internal class TDLib.AddQuickReplyShortcutMessageAlbum : TDObject {

    /**
     * Name of the target shortcut
     */
    public string shortcut_name { get; construct set; }

    /**
     * Identifier of a quick reply message in the same shortcut to be
     * replied; pass 0 if none
     */
    public int64 reply_to_message_id { get; construct set; }

    /**
     * Contents of messages to be sent. At most 10 messages can be added to
     * an album. All messages must have the same value of
     * show_caption_above_media
     */
    public Gee.ArrayList<InputMessageContent?> input_message_contents { get; construct set; default = new Gee.ArrayList<InputMessageContent?> (); }

    public AddQuickReplyShortcutMessageAlbum (
        string shortcut_name,
        int64 reply_to_message_id,
        Gee.ArrayList<InputMessageContent?> input_message_contents
    ) {
        Object (
            shortcut_name: shortcut_name,
            reply_to_message_id: reply_to_message_id,
            input_message_contents: input_message_contents,
            tdlib_type: "addQuickReplyShortcutMessageAlbum",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
