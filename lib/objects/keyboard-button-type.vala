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
 * Describes a keyboard button type
 */
public abstract class TDLib.KeyboardButtonType : Error {}

/**
 * A simple button, with text that must be sent when the button is
 * pressed
 */
public class TDLib.KeyboardButtonTypeText : KeyboardButtonType {

    public KeyboardButtonTypeText () {
        Object (
            tdlib_type: "keyboardButtonTypeText",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that sends the user's phone number when pressed; available
 * only in private chats
 */
public class TDLib.KeyboardButtonTypeRequestPhoneNumber : KeyboardButtonType {

    public KeyboardButtonTypeRequestPhoneNumber () {
        Object (
            tdlib_type: "keyboardButtonTypeRequestPhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that sends the user's location when pressed; available only
 * in private chats
 */
public class TDLib.KeyboardButtonTypeRequestLocation : KeyboardButtonType {

    public KeyboardButtonTypeRequestLocation () {
        Object (
            tdlib_type: "keyboardButtonTypeRequestLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that allows the user to create and send a poll when pressed;
 * available only in private chats
 */
public class TDLib.KeyboardButtonTypeRequestPoll : KeyboardButtonType {

    /**
     * If true, only regular polls must be allowed to create
     */
    public bool force_regular { get; construct set; }

    /**
     * If true, only polls in quiz mode must be allowed to create
     */
    public bool force_quiz { get; construct set; }

    public KeyboardButtonTypeRequestPoll (
        bool force_regular,
        bool force_quiz
    ) {
        Object (
            force_regular: force_regular,
            force_quiz: force_quiz,
            tdlib_type: "keyboardButtonTypeRequestPoll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that requests users to be shared by the current user;
 * available only in private chats. Use the method shareUsersWithBot to
 * complete the request
 */
public class TDLib.KeyboardButtonTypeRequestUsers : KeyboardButtonType {

    /**
     * Unique button identifier
     */
    public int32 id_ { get; construct set; }

    /**
     * True, if the shared users must or must not be bots
     */
    public bool restrict_user_is_bot { get; construct set; }

    /**
     * True, if the shared users must be bots; otherwise, the shared users
     * must not be bots. Ignored if restrict_user_is_bot is false
     */
    public bool user_is_bot { get; construct set; }

    /**
     * True, if the shared users must or must not be Telegram Premium users
     */
    public bool restrict_user_is_premium { get; construct set; }

    /**
     * True, if the shared users must be Telegram Premium users; otherwise,
     * the shared users must not be Telegram Premium users. Ignored if
     * restrict_user_is_premium is false
     */
    public bool user_is_premium { get; construct set; }

    /**
     * The maximum number of users to share
     */
    public int32 max_quantity { get; construct set; }

    /**
     * Pass true to request name of the users; bots only
     */
    public bool request_name { get; construct set; }

    /**
     * Pass true to request username of the users; bots only
     */
    public bool request_username { get; construct set; }

    /**
     * Pass true to request photo of the users; bots only
     */
    public bool request_photo { get; construct set; }

    public KeyboardButtonTypeRequestUsers (
        int32 id_,
        bool restrict_user_is_bot,
        bool user_is_bot,
        bool restrict_user_is_premium,
        bool user_is_premium,
        int32 max_quantity,
        bool request_name,
        bool request_username,
        bool request_photo
    ) {
        Object (
            id_: id_,
            restrict_user_is_bot: restrict_user_is_bot,
            user_is_bot: user_is_bot,
            restrict_user_is_premium: restrict_user_is_premium,
            user_is_premium: user_is_premium,
            max_quantity: max_quantity,
            request_name: request_name,
            request_username: request_username,
            request_photo: request_photo,
            tdlib_type: "keyboardButtonTypeRequestUsers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that requests a chat to be shared by the current user;
 * available only in private chats. Use the method shareChatWithBot to
 * complete the request
 */
public class TDLib.KeyboardButtonTypeRequestChat : KeyboardButtonType {

    /**
     * Unique button identifier
     */
    public int32 id_ { get; construct set; }

    /**
     * True, if the chat must be a channel; otherwise, a basic group or a
     * supergroup chat is shared
     */
    public bool chat_is_channel { get; construct set; }

    /**
     * True, if the chat must or must not be a forum supergroup
     */
    public bool restrict_chat_is_forum { get; construct set; }

    /**
     * True, if the chat must be a forum supergroup; otherwise, the chat must
     * not be a forum supergroup. Ignored if restrict_chat_is_forum is false
     */
    public bool chat_is_forum { get; construct set; }

    /**
     * True, if the chat must or must not have a username
     */
    public bool restrict_chat_has_username { get; construct set; }

    /**
     * True, if the chat must have a username; otherwise, the chat must not
     * have a username. Ignored if restrict_chat_has_username is false
     */
    public bool chat_has_username { get; construct set; }

    /**
     * True, if the chat must be created by the current user
     */
    public bool chat_is_created { get; construct set; }

    /**
     * Expected user administrator rights in the chat; may be null if they
     * aren't restricted
     */
    public ChatAdministratorRights? user_administrator_rights { get; construct set; }

    /**
     * Expected bot administrator rights in the chat; may be null if they
     * aren't restricted
     */
    public ChatAdministratorRights? bot_administrator_rights { get; construct set; }

    /**
     * True, if the bot must be a member of the chat; for basic group and
     * supergroup chats only
     */
    public bool bot_is_member { get; construct set; }

    /**
     * Pass true to request title of the chat; bots only
     */
    public bool request_title { get; construct set; }

    /**
     * Pass true to request username of the chat; bots only
     */
    public bool request_username { get; construct set; }

    /**
     * Pass true to request photo of the chat; bots only
     */
    public bool request_photo { get; construct set; }

    public KeyboardButtonTypeRequestChat (
        int32 id_,
        bool chat_is_channel,
        bool restrict_chat_is_forum,
        bool chat_is_forum,
        bool restrict_chat_has_username,
        bool chat_has_username,
        bool chat_is_created,
        ChatAdministratorRights? user_administrator_rights,
        ChatAdministratorRights? bot_administrator_rights,
        bool bot_is_member,
        bool request_title,
        bool request_username,
        bool request_photo
    ) {
        Object (
            id_: id_,
            chat_is_channel: chat_is_channel,
            restrict_chat_is_forum: restrict_chat_is_forum,
            chat_is_forum: chat_is_forum,
            restrict_chat_has_username: restrict_chat_has_username,
            chat_has_username: chat_has_username,
            chat_is_created: chat_is_created,
            user_administrator_rights: user_administrator_rights,
            bot_administrator_rights: bot_administrator_rights,
            bot_is_member: bot_is_member,
            request_title: request_title,
            request_username: request_username,
            request_photo: request_photo,
            tdlib_type: "keyboardButtonTypeRequestChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that opens a Web App by calling getWebAppUrl
 */
public class TDLib.KeyboardButtonTypeWebApp : KeyboardButtonType {

    /**
     * An HTTP URL to pass to getWebAppUrl
     */
    public string url { get; construct set; }

    public KeyboardButtonTypeWebApp (
        string url
    ) {
        Object (
            url: url,
            tdlib_type: "keyboardButtonTypeWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
