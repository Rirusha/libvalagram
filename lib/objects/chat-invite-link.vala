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
 * Contains a chat invite link
 */
public class TDLib.ChatInviteLink : Error {

    /**
     * Chat invite link
     */
    public string invite_link { get; construct set; }

    /**
     * Name of the link
     */
    public string name { get; construct set; }

    /**
     * User identifier of an administrator created the link
     */
    public int64 creator_user_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the link was created
     */
    public int32 date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the link was last edited; 0 if
     * never or unknown
     */
    public int32 edit_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the link will expire; 0 if never
     */
    public int32 expiration_date { get; construct set; }

    /**
     * Information about subscription plan that is applied to the users
     * joining the chat by the link; may be null if the link doesn't require
     * subscription
     */
    public StarSubscriptionPricing? subscription_pricing { get; construct set; }

    /**
     * The maximum number of members, which can join the chat using the link
     * simultaneously; 0 if not limited. Always 0 if the link requires
     * approval
     */
    public int32 member_limit { get; construct set; }

    /**
     * Number of chat members, which joined the chat using the link
     */
    public int32 member_count { get; construct set; }

    /**
     * Number of chat members, which joined the chat using the link, but have
     * already left because of expired subscription; for subscription links
     * only
     */
    public int32 expired_member_count { get; construct set; }

    /**
     * Number of pending join requests created using this link
     */
    public int32 pending_join_request_count { get; construct set; }

    /**
     * True, if the link only creates join request. If true, total number of
     * joining members will be unlimited
     */
    public bool creates_join_request { get; construct set; }

    /**
     * True, if the link is primary. Primary invite link can't have name,
     * expiration date, or usage limit. There is exactly one primary invite
     * link for each administrator with can_invite_users right at a given
     * time
     */
    public bool is_primary { get; construct set; }

    /**
     * True, if the link was revoked
     */
    public bool is_revoked { get; construct set; }

    public ChatInviteLink (
        string invite_link,
        string name,
        int64 creator_user_id,
        int32 date,
        int32 edit_date,
        int32 expiration_date,
        StarSubscriptionPricing? subscription_pricing,
        int32 member_limit,
        int32 member_count,
        int32 expired_member_count,
        int32 pending_join_request_count,
        bool creates_join_request,
        bool is_primary,
        bool is_revoked
    ) {
        Object (
            invite_link: invite_link,
            name: name,
            creator_user_id: creator_user_id,
            date: date,
            edit_date: edit_date,
            expiration_date: expiration_date,
            subscription_pricing: subscription_pricing,
            member_limit: member_limit,
            member_count: member_count,
            expired_member_count: expired_member_count,
            pending_join_request_count: pending_join_request_count,
            creates_join_request: creates_join_request,
            is_primary: is_primary,
            is_revoked: is_revoked,
            tdlib_type: "chatInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
