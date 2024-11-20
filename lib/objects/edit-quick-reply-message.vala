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
 * Asynchronously edits the text, media or caption of a quick reply
 * message. Use quickReplyMessage.can_be_edited to check whether a
 * message can be edited.
 * Media message can be edited only to a media message. The type of
 * message content in an album can't be changed with exception of
 * replacing a photo with a video or vice versa
 */
internal class TDLib.EditQuickReplyMessage : TDObject {

    /**
     * Unique identifier of the quick reply shortcut with the message
     */
    public int32 shortcut_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * New content of the message. Must be one of the following types:
     * inputMessageText, inputMessageAnimation, inputMessageAudio,
     * inputMessageDocument, inputMessagePhoto or inputMessageVideo
     */
    public InputMessageContent input_message_content { get; construct set; }

    public EditQuickReplyMessage (
        int32 shortcut_id,
        int64 message_id,
        InputMessageContent input_message_content
    ) {
        Object (
            shortcut_id: shortcut_id,
            message_id: message_id,
            input_message_content: input_message_content,
            tdlib_type: "editQuickReplyMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
