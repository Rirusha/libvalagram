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
 * Contains full information about a basic group
 */
public class TDLib.BasicGroupFullInfo : Error {

    /**
     * Chat photo; may be null if empty or unknown. If non-null, then it is
     * the same photo as in chat.photo
     */
    public ChatPhoto? photo { get; construct set; }

    /**
     * Group description. Updated only after the basic group is opened
     */
    public string description { get; construct set; }

    /**
     * User identifier of the creator of the group; 0 if unknown
     */
    public int64 creator_user_id { get; construct set; }

    /**
     * Group members
     */
    public Gee.ArrayList<ChatMember?> members { get; construct set; default = new Gee.ArrayList<ChatMember?> (); }

    /**
     * True, if non-administrators and non-bots can be hidden in responses to
     * {@link Client.get_supergroup_members} and
     * {@link Client.search_chat_members} for non-administrators after
     * upgrading the basic group to a supergroup
     */
    public bool can_hide_members { get; construct set; }

    /**
     * True, if aggressive anti-spam checks can be enabled or disabled in the
     * supergroup after upgrading the basic group to a supergroup
     */
    public bool can_toggle_aggressive_anti_spam { get; construct set; }

    /**
     * Primary invite link for this group; may be null. For chat
     * administrators with can_invite_users right only. Updated only after
     * the basic group is opened
     */
    public ChatInviteLink? invite_link { get; construct set; }

    /**
     * List of commands of bots in the group
     */
    public Gee.ArrayList<BotCommands?> bot_commands { get; construct set; default = new Gee.ArrayList<BotCommands?> (); }

    public BasicGroupFullInfo (
        ChatPhoto? photo,
        string description,
        int64 creator_user_id,
        Gee.ArrayList<ChatMember?> members,
        bool can_hide_members,
        bool can_toggle_aggressive_anti_spam,
        ChatInviteLink? invite_link,
        Gee.ArrayList<BotCommands?> bot_commands
    ) {
        Object (
            photo: photo,
            description: description,
            creator_user_id: creator_user_id,
            members: members,
            can_hide_members: can_hide_members,
            can_toggle_aggressive_anti_spam: can_toggle_aggressive_anti_spam,
            invite_link: invite_link,
            bot_commands: bot_commands,
            tdlib_type: "basicGroupFullInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
