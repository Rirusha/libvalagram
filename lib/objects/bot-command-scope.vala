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
 * Represents the scope to which bot commands are relevant
 */
public abstract class TDLib.BotCommandScope : Error {}

/**
 * A scope covering all users
 */
public class TDLib.BotCommandScopeDefault : BotCommandScope {

    public BotCommandScopeDefault () {
        Object (
            tdlib_type: "botCommandScopeDefault",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A scope covering all private chats
 */
public class TDLib.BotCommandScopeAllPrivateChats : BotCommandScope {

    public BotCommandScopeAllPrivateChats () {
        Object (
            tdlib_type: "botCommandScopeAllPrivateChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A scope covering all group and supergroup chats
 */
public class TDLib.BotCommandScopeAllGroupChats : BotCommandScope {

    public BotCommandScopeAllGroupChats () {
        Object (
            tdlib_type: "botCommandScopeAllGroupChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A scope covering all group and supergroup chat administrators
 */
public class TDLib.BotCommandScopeAllChatAdministrators : BotCommandScope {

    public BotCommandScopeAllChatAdministrators () {
        Object (
            tdlib_type: "botCommandScopeAllChatAdministrators",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A scope covering all members of a chat
 */
public class TDLib.BotCommandScopeChat : BotCommandScope {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    public BotCommandScopeChat (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "botCommandScopeChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A scope covering all administrators of a chat
 */
public class TDLib.BotCommandScopeChatAdministrators : BotCommandScope {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    public BotCommandScopeChatAdministrators (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "botCommandScopeChatAdministrators",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A scope covering a member of a chat
 */
public class TDLib.BotCommandScopeChatMember : BotCommandScope {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    public BotCommandScopeChatMember (
        int64 chat_id,
        int64 user_id
    ) {
        Object (
            chat_id: chat_id,
            user_id: user_id,
            tdlib_type: "botCommandScopeChatMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
