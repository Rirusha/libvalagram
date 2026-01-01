/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Contains information about a chat invite link
 */
public class TDLib.ChatInviteLinkInfo : Error {

    /**
     * Chat identifier of the invite link; 0 if the user has no access to the
     * chat before joining
     */
    public int64 chat_id { get; construct set; }

    /**
     * If non-zero, the amount of time for which read access to the chat will
     * remain available, in seconds
     */
    public int32 accessible_for { get; construct set; }

    /**
     * Type of the chat
     */
    public InviteLinkChatType type_ { get; construct set; }

    /**
     * Title of the chat
     */
    public string title { get; construct set; }

    /**
     * Chat photo; may be null
     */
    public ChatPhotoInfo? photo { get; construct set; }

    /**
     * Identifier of the accent color for chat title and background of chat
     * photo
     */
    public int32 accent_color_id { get; construct set; }

    /**
     * Chat description
     */
    public string description { get; construct set; }

    /**
     * Number of members in the chat
     */
    public int32 member_count { get; construct set; }

    /**
     * User identifiers of some chat members that may be known to the current
     * user
     */
    public Gee.ArrayList<int64?> member_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Information about subscription plan that must be paid by the user to
     * use the link; may be null if the link doesn't require subscription
     */
    public ChatInviteLinkSubscriptionInfo? subscription_info { get; construct set; }

    /**
     * True, if the link only creates join request
     */
    public bool creates_join_request { get; construct set; }

    /**
     * True, if the chat is a public supergroup or channel, i.e. it has a
     * username or it is a location-based supergroup
     */
    public bool is_public { get; construct set; }

    /**
     * Information about verification status of the chat; may be null if none
     */
    public VerificationStatus? verification_status { get; construct set; }

    public ChatInviteLinkInfo (
        int64 chat_id,
        int32 accessible_for,
        InviteLinkChatType type_,
        string title,
        ChatPhotoInfo? photo,
        int32 accent_color_id,
        string description,
        int32 member_count,
        Gee.ArrayList<int64?> member_user_ids,
        ChatInviteLinkSubscriptionInfo? subscription_info,
        bool creates_join_request,
        bool is_public,
        VerificationStatus? verification_status
    ) {
        Object (
            chat_id: chat_id,
            accessible_for: accessible_for,
            type_: type_,
            title: title,
            photo: photo,
            accent_color_id: accent_color_id,
            description: description,
            member_count: member_count,
            member_user_ids: member_user_ids,
            subscription_info: subscription_info,
            creates_join_request: creates_join_request,
            is_public: is_public,
            verification_status: verification_status,
            tdlib_type: "chatInviteLinkInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
