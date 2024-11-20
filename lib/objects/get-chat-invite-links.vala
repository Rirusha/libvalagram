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
 * Returns invite links for a chat created by specified administrator.
 * Requires administrator privileges and can_invite_users right in the
 * chat to get own links and owner privileges to get other links
 */
internal class TDLib.GetChatInviteLinks : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * User identifier of a chat administrator. Must be an identifier of the
     * current user for non-owner
     */
    public int64 creator_user_id { get; construct set; }

    /**
     * Pass true if revoked links needs to be returned instead of active or
     * expired
     */
    public bool is_revoked { get; construct set; }

    /**
     * Creation date of an invite link starting after which to return invite
     * links; use 0 to get results from the beginning
     */
    public int32 offset_date { get; construct set; }

    /**
     * Invite link starting after which to return invite links; use empty
     * string to get results from the beginning
     */
    public string offset_invite_link { get; construct set; }

    /**
     * The maximum number of invite links to return; up to 100
     */
    public int32 limit { get; construct set; }

    public GetChatInviteLinks (
        int64 chat_id,
        int64 creator_user_id,
        bool is_revoked,
        int32 offset_date,
        string offset_invite_link,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            creator_user_id: creator_user_id,
            is_revoked: is_revoked,
            offset_date: offset_date,
            offset_invite_link: offset_invite_link,
            limit: limit,
            tdlib_type: "getChatInviteLinks",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
