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
 * Describes a sponsored chat
 */
public class TDLib.SponsoredChat : Error {

    /**
     * Unique identifier of this result
     */
    public int64 unique_id { get; construct set; }

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Additional optional information about the sponsor to be shown along
     * with the chat
     */
    public string sponsor_info { get; construct set; }

    /**
     * If non-empty, additional information about the sponsored chat to be
     * shown along with the chat
     */
    public string additional_info { get; construct set; }

    public SponsoredChat (
        int64 unique_id,
        int64 chat_id,
        string sponsor_info,
        string additional_info
    ) {
        Object (
            unique_id: unique_id,
            chat_id: chat_id,
            sponsor_info: sponsor_info,
            additional_info: additional_info,
            tdlib_type: "sponsoredChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
