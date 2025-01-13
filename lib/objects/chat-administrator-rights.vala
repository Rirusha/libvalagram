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
 * Describes rights of the administrator
 */
public class TDLib.ChatAdministratorRights : Error {

    /**
     * True, if the administrator can access the chat event log, get boost
     * list, see hidden supergroup and channel members, report supergroup
     * spam messages and ignore slow mode. Implied by any other privilege;
     * applicable to supergroups and channels only
     */
    public bool can_manage_chat { get; construct set; }

    /**
     * True, if the administrator can change the chat title, photo, and other
     * settings
     */
    public bool can_change_info { get; construct set; }

    /**
     * True, if the administrator can create channel posts or view channel
     * statistics; applicable to channels only
     */
    public bool can_post_messages { get; construct set; }

    /**
     * True, if the administrator can edit messages of other users and pin
     * messages; applicable to channels only
     */
    public bool can_edit_messages { get; construct set; }

    /**
     * True, if the administrator can delete messages of other users
     */
    public bool can_delete_messages { get; construct set; }

    /**
     * True, if the administrator can invite new users to the chat
     */
    public bool can_invite_users { get; construct set; }

    /**
     * True, if the administrator can restrict, ban, or unban chat members or
     * view supergroup statistics; always true for channels
     */
    public bool can_restrict_members { get; construct set; }

    /**
     * True, if the administrator can pin messages; applicable to basic
     * groups and supergroups only
     */
    public bool can_pin_messages { get; construct set; }

    /**
     * True, if the administrator can create, rename, close, reopen, hide,
     * and unhide forum topics; applicable to forum supergroups only
     */
    public bool can_manage_topics { get; construct set; }

    /**
     * True, if the administrator can add new administrators with a subset of
     * their own privileges or demote administrators that were directly or
     * indirectly promoted by them
     */
    public bool can_promote_members { get; construct set; }

    /**
     * True, if the administrator can manage video chats
     */
    public bool can_manage_video_chats { get; construct set; }

    /**
     * True, if the administrator can create new chat stories, or edit and
     * delete posted stories; applicable to supergroups and channels only
     */
    public bool can_post_stories { get; construct set; }

    /**
     * True, if the administrator can edit stories posted by other users,
     * post stories to the chat page, pin chat stories, and access story
     * archive; applicable to supergroups and channels only
     */
    public bool can_edit_stories { get; construct set; }

    /**
     * True, if the administrator can delete stories posted by other users;
     * applicable to supergroups and channels only
     */
    public bool can_delete_stories { get; construct set; }

    /**
     * True, if the administrator isn't shown in the chat member list and
     * sends messages anonymously; applicable to supergroups only
     */
    public bool is_anonymous { get; construct set; }

    public ChatAdministratorRights (
        bool can_manage_chat,
        bool can_change_info,
        bool can_post_messages,
        bool can_edit_messages,
        bool can_delete_messages,
        bool can_invite_users,
        bool can_restrict_members,
        bool can_pin_messages,
        bool can_manage_topics,
        bool can_promote_members,
        bool can_manage_video_chats,
        bool can_post_stories,
        bool can_edit_stories,
        bool can_delete_stories,
        bool is_anonymous
    ) {
        Object (
            can_manage_chat: can_manage_chat,
            can_change_info: can_change_info,
            can_post_messages: can_post_messages,
            can_edit_messages: can_edit_messages,
            can_delete_messages: can_delete_messages,
            can_invite_users: can_invite_users,
            can_restrict_members: can_restrict_members,
            can_pin_messages: can_pin_messages,
            can_manage_topics: can_manage_topics,
            can_promote_members: can_promote_members,
            can_manage_video_chats: can_manage_video_chats,
            can_post_stories: can_post_stories,
            can_edit_stories: can_edit_stories,
            can_delete_stories: can_delete_stories,
            is_anonymous: is_anonymous,
            tdlib_type: "chatAdministratorRights",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
