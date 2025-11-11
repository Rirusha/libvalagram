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
 * Sends a draft for a being generated text message; for bots only
 */
public class TDLib.SendTextMessageDraft : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The forum topic identifier in which the message will be sent; pass 0
     * if none
     */
    public int32 forum_topic_id { get; construct set; }

    /**
     * Unique identifier of the draft
     */
    public int64 draft_id { get; construct set; }

    /**
     * Draft text of the message
     */
    public FormattedText text { get; construct set; }

    public SendTextMessageDraft (
        int64 chat_id,
        int32 forum_topic_id,
        int64 draft_id,
        FormattedText text
    ) {
        Object (
            chat_id: chat_id,
            forum_topic_id: forum_topic_id,
            draft_id: draft_id,
            text: text,
            tdlib_type: "sendTextMessageDraft",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
