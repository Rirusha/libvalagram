/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Describes the type of chat
 */
public abstract class TDLib.ChatType : Error {}

/**
 * An ordinary chat with a user
 */
public class TDLib.ChatTypePrivate : ChatType {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    public ChatTypePrivate (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "chatTypePrivate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A basic group (a chat with 0-200 other users)
 */
public class TDLib.ChatTypeBasicGroup : ChatType {

    /**
     * Basic group identifier
     */
    public int64 basic_group_id { get; construct set; }

    public ChatTypeBasicGroup (
        int64 basic_group_id
    ) {
        Object (
            basic_group_id: basic_group_id,
            tdlib_type: "chatTypeBasicGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A supergroup or channel (with unlimited members)
 */
public class TDLib.ChatTypeSupergroup : ChatType {

    /**
     * Supergroup or channel identifier
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * True, if the supergroup is a channel
     */
    public bool is_channel { get; construct set; }

    public ChatTypeSupergroup (
        int64 supergroup_id,
        bool is_channel
    ) {
        Object (
            supergroup_id: supergroup_id,
            is_channel: is_channel,
            tdlib_type: "chatTypeSupergroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A secret chat with a user
 */
public class TDLib.ChatTypeSecret : ChatType {

    /**
     * Secret chat identifier
     */
    public int32 secret_chat_id { get; construct set; }

    /**
     * User identifier of the other user in the secret chat
     */
    public int64 user_id { get; construct set; }

    public ChatTypeSecret (
        int32 secret_chat_id,
        int64 user_id
    ) {
        Object (
            secret_chat_id: secret_chat_id,
            user_id: user_id,
            tdlib_type: "chatTypeSecret",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
