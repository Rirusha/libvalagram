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
 * Edits the caption of an inline message sent via a bot; for bots only
 */
public class TDLib.EditInlineMessageCaption : TDObject {

    /**
     * Inline message identifier
     */
    public string inline_message_id { get; construct set; }

    /**
     * The new message reply markup; pass null if none
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * New message content caption; pass null to remove caption;
     * 0-getOption("message_caption_length_max") characters
     */
    public FormattedText caption { get; construct set; }

    /**
     * Pass true to show the caption above the media; otherwise, the caption
     * will be shown below the media. May be true only for animation, photo,
     * and video messages
     */
    public bool show_caption_above_media { get; construct set; }

    public EditInlineMessageCaption (
        string inline_message_id,
        ReplyMarkup reply_markup,
        FormattedText caption,
        bool show_caption_above_media
    ) {
        Object (
            inline_message_id: inline_message_id,
            reply_markup: reply_markup,
            caption: caption,
            show_caption_above_media: show_caption_above_media,
            tdlib_type: "editInlineMessageCaption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
