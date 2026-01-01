/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Changes the fact-check of a message. Can be only used if
 * messageProperties.can_set_fact_check == true
 */
public class TDLib.SetMessageFactCheck : TDObject {

    /**
     * The channel chat the message belongs to
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * New text of the fact-check; 0-getOption("fact_check_length_max")
     * characters; pass null to remove it. Only Bold, Italic, and TextUrl
     * entities with [[https://t.me/]] links are supported
     */
    public FormattedText text { get; construct set; }

    public SetMessageFactCheck (
        int64 chat_id,
        int64 message_id,
        FormattedText text
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            text: text,
            tdlib_type: "setMessageFactCheck",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
