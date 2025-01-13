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
 * Edits the text of a message (or a text of a game message). Returns the
 * edited message after the edit is completed on the server side
 */
public class TDLib.EditMessageText : TDObject {

    /**
     * The chat the message belongs to
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message. Use messageProperties.can_be_edited to
     * check whether the message can be edited
     */
    public int64 message_id { get; construct set; }

    /**
     * The new message reply markup; pass null if none; for bots only
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * New text content of the message. Must be of type inputMessageText
     */
    public InputMessageContent input_message_content { get; construct set; }

    public EditMessageText (
        int64 chat_id,
        int64 message_id,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "editMessageText",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
