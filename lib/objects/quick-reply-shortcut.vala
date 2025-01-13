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
 * Describes a shortcut that can be used for a quick reply
 */
public class TDLib.QuickReplyShortcut : Error {

    /**
     * Unique shortcut identifier
     */
    public int32 id_ { get; construct set; }

    /**
     * The name of the shortcut that can be used to use the shortcut
     */
    public string name { get; construct set; }

    /**
     * The first shortcut message
     */
    public QuickReplyMessage first_message { get; construct set; }

    /**
     * The total number of messages in the shortcut
     */
    public int32 message_count { get; construct set; }

    public QuickReplyShortcut (
        int32 id_,
        string name,
        QuickReplyMessage first_message,
        int32 message_count
    ) {
        Object (
            id_: id_,
            name: name,
            first_message: first_message,
            message_count: message_count,
            tdlib_type: "quickReplyShortcut",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
