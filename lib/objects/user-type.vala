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
 * Represents the type of user. The following types are possible: regular
 * users, deleted users and bots
 */
public abstract class TDLib.UserType : Error {}

/**
 * A regular user
 */
public class TDLib.UserTypeRegular : UserType {

    public UserTypeRegular () {
        Object (
            tdlib_type: "userTypeRegular",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A deleted user or deleted bot. No information on the user besides the
 * user identifier is available. It is not possible to perform any active
 * actions on this type of user
 */
public class TDLib.UserTypeDeleted : UserType {

    public UserTypeDeleted () {
        Object (
            tdlib_type: "userTypeDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A bot (see https://core.telegram.org/bots)
 */
public class TDLib.UserTypeBot : UserType {

    /**
     * True, if the bot is owned by the current user and can be edited using
     * the methods toggleBotUsernameIsActive, reorderBotActiveUsernames,
     * setBotProfilePhoto, setBotName, setBotInfoDescription, and
     * setBotInfoShortDescription
     */
    public bool can_be_edited { get; construct set; }

    /**
     * True, if the bot can be invited to basic group and supergroup chats
     */
    public bool can_join_groups { get; construct set; }

    /**
     * True, if the bot can read all messages in basic group or supergroup
     * chats and not just those addressed to the bot. In private and channel
     * chats a bot can always read all messages
     */
    public bool can_read_all_group_messages { get; construct set; }

    /**
     * True, if the bot has the main Web App
     */
    public bool has_main_web_app { get; construct set; }

    /**
     * True, if the bot supports inline queries
     */
    public bool is_inline { get; construct set; }

    /**
     * Placeholder for inline queries (displayed on the application input
     * field)
     */
    public string inline_query_placeholder { get; construct set; }

    /**
     * True, if the location of the user is expected to be sent with every
     * inline query to this bot
     */
    public bool need_location { get; construct set; }

    /**
     * True, if the bot supports connection to Telegram Business accounts
     */
    public bool can_connect_to_business { get; construct set; }

    /**
     * True, if the bot can be added to attachment or side menu
     */
    public bool can_be_added_to_attachment_menu { get; construct set; }

    /**
     * The number of recently active users of the bot
     */
    public int32 active_user_count { get; construct set; }

    public UserTypeBot (
        bool can_be_edited,
        bool can_join_groups,
        bool can_read_all_group_messages,
        bool has_main_web_app,
        bool is_inline,
        string inline_query_placeholder,
        bool need_location,
        bool can_connect_to_business,
        bool can_be_added_to_attachment_menu,
        int32 active_user_count
    ) {
        Object (
            can_be_edited: can_be_edited,
            can_join_groups: can_join_groups,
            can_read_all_group_messages: can_read_all_group_messages,
            has_main_web_app: has_main_web_app,
            is_inline: is_inline,
            inline_query_placeholder: inline_query_placeholder,
            need_location: need_location,
            can_connect_to_business: can_connect_to_business,
            can_be_added_to_attachment_menu: can_be_added_to_attachment_menu,
            active_user_count: active_user_count,
            tdlib_type: "userTypeBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * No information on the user besides the user identifier is available,
 * yet this user has not been deleted. This object is extremely rare and
 * must be handled like a deleted user. It is not possible to perform any
 * actions on users of this type
 */
public class TDLib.UserTypeUnknown : UserType {

    public UserTypeUnknown () {
        Object (
            tdlib_type: "userTypeUnknown",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
