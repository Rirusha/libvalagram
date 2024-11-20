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
 * Provides information about the status of a member in a chat
 */
public abstract class TDLib.ChatMemberStatus : Error {}

/**
 * The user is the owner of the chat and has all the administrator
 * privileges
 */
public class TDLib.ChatMemberStatusCreator : ChatMemberStatus {

    /**
     * A custom title of the owner; 0-16 characters without emoji; applicable
     * to supergroups only
     */
    public string custom_title { get; construct set; }

    /**
     * True, if the creator isn't shown in the chat member list and sends
     * messages anonymously; applicable to supergroups only
     */
    public bool is_anonymous { get; construct set; }

    /**
     * True, if the user is a member of the chat
     */
    public bool is_member { get; construct set; }

    public ChatMemberStatusCreator (
        string custom_title,
        bool is_anonymous,
        bool is_member
    ) {
        Object (
            custom_title: custom_title,
            is_anonymous: is_anonymous,
            is_member: is_member,
            tdlib_type: "chatMemberStatusCreator",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is a member of the chat and has some additional privileges.
 * In basic groups, administrators can edit and delete messages sent by
 * others, add new members, ban unprivileged members, and manage video
 * chats.
 * In supergroups and channels, there are more detailed options for
 * administrator privileges
 */
public class TDLib.ChatMemberStatusAdministrator : ChatMemberStatus {

    /**
     * A custom title of the administrator; 0-16 characters without emoji;
     * applicable to supergroups only
     */
    public string custom_title { get; construct set; }

    /**
     * True, if the current user can edit the administrator privileges for
     * the called user
     */
    public bool can_be_edited { get; construct set; }

    /**
     * Rights of the administrator
     */
    public ChatAdministratorRights rights { get; construct set; }

    public ChatMemberStatusAdministrator (
        string custom_title,
        bool can_be_edited,
        ChatAdministratorRights rights
    ) {
        Object (
            custom_title: custom_title,
            can_be_edited: can_be_edited,
            rights: rights,
            tdlib_type: "chatMemberStatusAdministrator",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is a member of the chat, without any additional privileges or
 * restrictions
 */
public class TDLib.ChatMemberStatusMember : ChatMemberStatus {

    /**
     * Point in time (Unix timestamp) when the user will be removed from the
     * chat because of the expired subscription; 0 if never. Ignored in
     * setChatMemberStatus
     */
    public int32 member_until_date { get; construct set; }

    public ChatMemberStatusMember (
        int32 member_until_date
    ) {
        Object (
            member_until_date: member_until_date,
            tdlib_type: "chatMemberStatusMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is under certain restrictions in the chat. Not supported in
 * basic groups and channels
 */
public class TDLib.ChatMemberStatusRestricted : ChatMemberStatus {

    /**
     * True, if the user is a member of the chat
     */
    public bool is_member { get; construct set; }

    /**
     * Point in time (Unix timestamp) when restrictions will be lifted from
     * the user; 0 if never. If the user is restricted for more than 366 days
     * or for less than 30 seconds from the current time, the user is
     * considered to be restricted forever
     */
    public int32 restricted_until_date { get; construct set; }

    /**
     * User permissions in the chat
     */
    public ChatPermissions permissions { get; construct set; }

    public ChatMemberStatusRestricted (
        bool is_member,
        int32 restricted_until_date,
        ChatPermissions permissions
    ) {
        Object (
            is_member: is_member,
            restricted_until_date: restricted_until_date,
            permissions: permissions,
            tdlib_type: "chatMemberStatusRestricted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user or the chat is not a chat member
 */
public class TDLib.ChatMemberStatusLeft : ChatMemberStatus {

    public ChatMemberStatusLeft () {
        Object (
            tdlib_type: "chatMemberStatusLeft",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user or the chat was banned (and hence is not a member of the
 * chat). Implies the user can't return to the chat, view messages, or be
 * used as a participant identifier to join a video chat of the chat
 */
public class TDLib.ChatMemberStatusBanned : ChatMemberStatus {

    /**
     * Point in time (Unix timestamp) when the user will be unbanned; 0 if
     * never. If the user is banned for more than 366 days or for less than
     * 30 seconds from the current time, the user is considered to be banned
     * forever. Always 0 in basic groups
     */
    public int32 banned_until_date { get; construct set; }

    public ChatMemberStatusBanned (
        int32 banned_until_date
    ) {
        Object (
            banned_until_date: banned_until_date,
            tdlib_type: "chatMemberStatusBanned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
