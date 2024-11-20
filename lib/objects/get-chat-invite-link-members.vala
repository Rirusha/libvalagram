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
 * Returns chat members joined a chat via an invite link. Requires
 * administrator privileges and can_invite_users right in the chat for
 * own links and owner privileges for other links
 */
internal class TDLib.GetChatInviteLinkMembers : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Invite link for which to return chat members
     */
    public string invite_link { get; construct set; }

    /**
     * Pass true if the link is a subscription link and only members with
     * expired subscription must be returned
     */
    public bool only_with_expired_subscription { get; construct set; }

    /**
     * A chat member from which to return next chat members; pass null to get
     * results from the beginning
     */
    public ChatInviteLinkMember offset_member { get; construct set; }

    /**
     * The maximum number of chat members to return; up to 100
     */
    public int32 limit { get; construct set; }

    public GetChatInviteLinkMembers (
        int64 chat_id,
        string invite_link,
        bool only_with_expired_subscription,
        ChatInviteLinkMember offset_member,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            invite_link: invite_link,
            only_with_expired_subscription: only_with_expired_subscription,
            offset_member: offset_member,
            limit: limit,
            tdlib_type: "getChatInviteLinkMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
