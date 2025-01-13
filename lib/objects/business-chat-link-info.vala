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
 * Contains information about a business chat link
 */
public class TDLib.BusinessChatLinkInfo : Error {

    /**
     * Identifier of the private chat that created the link
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message draft text that must be added to the input field
     */
    public FormattedText text { get; construct set; }

    public BusinessChatLinkInfo (
        int64 chat_id,
        FormattedText text
    ) {
        Object (
            chat_id: chat_id,
            text: text,
            tdlib_type: "businessChatLinkInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
