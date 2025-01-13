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
 * Edits the text of an inline text or game message sent via a bot; for
 * bots only
 */
internal class TDLib.EditInlineMessageText : TDObject {

    /**
     * Inline message identifier
     */
    public string inline_message_id { get; construct set; }

    /**
     * The new message reply markup; pass null if none
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * New text content of the message. Must be of type inputMessageText
     */
    public InputMessageContent input_message_content { get; construct set; }

    public EditInlineMessageText (
        string inline_message_id,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            inline_message_id: inline_message_id,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "editInlineMessageText",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
