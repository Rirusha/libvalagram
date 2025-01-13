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
 * Specifies the kind of chat members to return in searchChatMembers
 */
public abstract class TDLib.ChatMembersFilter : Error {}

/**
 * Returns contacts of the user
 */
public class TDLib.ChatMembersFilterContacts : ChatMembersFilter {

    public ChatMembersFilterContacts () {
        Object (
            tdlib_type: "chatMembersFilterContacts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns the owner and administrators
 */
public class TDLib.ChatMembersFilterAdministrators : ChatMembersFilter {

    public ChatMembersFilterAdministrators () {
        Object (
            tdlib_type: "chatMembersFilterAdministrators",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns all chat members, including restricted chat members
 */
public class TDLib.ChatMembersFilterMembers : ChatMembersFilter {

    public ChatMembersFilterMembers () {
        Object (
            tdlib_type: "chatMembersFilterMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns users which can be mentioned in the chat
 */
public class TDLib.ChatMembersFilterMention : ChatMembersFilter {

    /**
     * If non-zero, the identifier of the current message thread
     */
    public int64 message_thread_id { get; construct set; }

    public ChatMembersFilterMention (
        int64 message_thread_id
    ) {
        Object (
            message_thread_id: message_thread_id,
            tdlib_type: "chatMembersFilterMention",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns users under certain restrictions in the chat; can be used only
 * by administrators in a supergroup
 */
public class TDLib.ChatMembersFilterRestricted : ChatMembersFilter {

    public ChatMembersFilterRestricted () {
        Object (
            tdlib_type: "chatMembersFilterRestricted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns users banned from the chat; can be used only by administrators
 * in a supergroup or in a channel
 */
public class TDLib.ChatMembersFilterBanned : ChatMembersFilter {

    public ChatMembersFilterBanned () {
        Object (
            tdlib_type: "chatMembersFilterBanned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns bot members of the chat
 */
public class TDLib.ChatMembersFilterBots : ChatMembersFilter {

    public ChatMembersFilterBots () {
        Object (
            tdlib_type: "chatMembersFilterBots",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
