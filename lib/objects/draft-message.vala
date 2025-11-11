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
 * Contains information about a message draft
 */
public class TDLib.DraftMessage : Error {

    /**
     * Information about the message to be replied; inputMessageReplyToStory
     * is unsupported; may be null if none
     */
    public InputMessageReplyTo? reply_to { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the draft was created
     */
    public int32 date { get; construct set; }

    /**
     * Content of the message draft; must be of the type inputMessageText,
     * inputMessageVideoNote, or inputMessageVoiceNote
     */
    public InputMessageContent input_message_text { get; construct set; }

    /**
     * Identifier of the effect to apply to the message when it is sent; 0 if
     * none
     */
    public int64 effect_id { get; construct set; }

    /**
     * Information about the suggested post; may be null if none
     */
    public InputSuggestedPostInfo? suggested_post_info { get; construct set; }

    public DraftMessage (
        InputMessageReplyTo? reply_to,
        int32 date,
        InputMessageContent input_message_text,
        int64 effect_id,
        InputSuggestedPostInfo? suggested_post_info
    ) {
        Object (
            reply_to: reply_to,
            date: date,
            input_message_text: input_message_text,
            effect_id: effect_id,
            suggested_post_info: suggested_post_info,
            tdlib_type: "draftMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
