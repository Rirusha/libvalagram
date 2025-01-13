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
 * Edits the media content of a message with a text, an animation, an
 * audio, a document, a photo or a video in an inline message sent via a
 * bot; for bots only
 */
public class TDLib.EditInlineMessageMedia : TDObject {

    /**
     * Inline message identifier
     */
    public string inline_message_id { get; construct set; }

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

    public EditInlineMessageMedia (
        string inline_message_id,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            inline_message_id: inline_message_id,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "editInlineMessageMedia",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
