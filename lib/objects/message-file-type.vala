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
 * Contains information about a file with messages exported from another
 * app
 */
public abstract class TDLib.MessageFileType : Error {}

/**
 * The messages were exported from a private chat
 */
public class TDLib.MessageFileTypePrivate : MessageFileType {

    /**
     * Name of the other party; may be empty if unrecognized
     */
    public string name { get; construct set; }

    public MessageFileTypePrivate (
        string name
    ) {
        Object (
            name: name,
            tdlib_type: "messageFileTypePrivate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The messages were exported from a group chat
 */
public class TDLib.MessageFileTypeGroup : MessageFileType {

    /**
     * Title of the group chat; may be empty if unrecognized
     */
    public string title { get; construct set; }

    public MessageFileTypeGroup (
        string title
    ) {
        Object (
            title: title,
            tdlib_type: "messageFileTypeGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The messages were exported from a chat of unknown type
 */
public class TDLib.MessageFileTypeUnknown : MessageFileType {

    public MessageFileTypeUnknown () {
        Object (
            tdlib_type: "messageFileTypeUnknown",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
