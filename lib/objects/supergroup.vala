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
 * Represents a supergroup or channel with zero or more members
 * (subscribers in the case of channels). From the point of view of the
 * system, a channel is a special kind of a supergroup:
 * only administrators can post and see the list of members, and posts
 * from all administrators use the name and photo of the channel instead
 * of individual names and profile photos.
 * Unlike supergroups, channels can have an unlimited number of
 * subscribers
 */
public class TDLib.Supergroup : Error {

    /**
     * Supergroup or channel identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Usernames of the supergroup or channel; may be null
     */
    public Usernames? usernames { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the current user joined, or the
     * point in time when the supergroup or channel was created, in case the
     * user is not a member
     */
    public int32 date { get; construct set; }

    /**
     * Status of the current user in the supergroup or channel; custom title
     * will always be empty
     */
    public ChatMemberStatus status { get; construct set; }

    /**
     * Number of members in the supergroup or channel; 0 if unknown.
     * Currently, it is guaranteed to be known only if the supergroup or
     * channel was received through
     * getChatSimilarChats, getChatsToSendStories, getCreatedPublicChats,
     * getGroupsInCommon, getInactiveSupergroupChats, getRecommendedChats,
     * getSuitableDiscussionChats,
     * getUserPrivacySettingRules, getVideoChatAvailableParticipants,
     * searchPublicChats, or in chatFolderInviteLinkInfo.missing_chat_ids, or
     * in userFullInfo.personal_chat_id,
     * or for chats with messages or stories from publicForwards and
     * foundStories
     */
    public int32 member_count { get; construct set; }

    /**
     * Approximate boost level for the chat
     */
    public int32 boost_level { get; construct set; }

    /**
     * True, if the channel has a discussion group, or the supergroup is the
     * designated discussion group for a channel
     */
    public bool has_linked_chat { get; construct set; }

    /**
     * True, if the supergroup is connected to a location, i.e. the
     * supergroup is a location-based supergroup
     */
    public bool has_location { get; construct set; }

    /**
     * True, if messages sent to the channel contains name of the sender.
     * This field is only applicable to channels
     */
    public bool sign_messages { get; construct set; }

    /**
     * True, if messages sent to the channel have information about the
     * sender user. This field is only applicable to channels
     */
    public bool show_message_sender { get; construct set; }

    /**
     * True, if users need to join the supergroup before they can send
     * messages. Always true for channels and non-discussion supergroups
     */
    public bool join_to_send_messages { get; construct set; }

    /**
     * True, if all users directly joining the supergroup need to be approved
     * by supergroup administrators. Always false for channels and
     * supergroups without username, location, or a linked chat
     */
    public bool join_by_request { get; construct set; }

    /**
     * True, if the slow mode is enabled in the supergroup
     */
    public bool is_slow_mode_enabled { get; construct set; }

    /**
     * True, if the supergroup is a channel
     */
    public bool is_channel { get; construct set; }

    /**
     * True, if the supergroup is a broadcast group, i.e. only administrators
     * can send messages and there is no limit on the number of members
     */
    public bool is_broadcast_group { get; construct set; }

    /**
     * True, if the supergroup is a forum with topics
     */
    public bool is_forum { get; construct set; }

    /**
     * Information about verification status of the supergroup or channel;
     * may be null if none
     */
    public VerificationStatus? verification_status { get; construct set; }

    /**
     * True, if content of media messages in the supergroup or channel chat
     * must be hidden with 18+ spoiler
     */
    public bool has_sensitive_content { get; construct set; }

    /**
     * If non-empty, contains a human-readable description of the reason why
     * access to this supergroup or channel must be restricted
     */
    public string restriction_reason { get; construct set; }

    /**
     * True, if the supergroup or channel has non-expired stories available
     * to the current user
     */
    public bool has_active_stories { get; construct set; }

    /**
     * True, if the supergroup or channel has unread non-expired stories
     * available to the current user
     */
    public bool has_unread_active_stories { get; construct set; }

    public Supergroup (
        int64 id_,
        Usernames? usernames,
        int32 date,
        ChatMemberStatus status,
        int32 member_count,
        int32 boost_level,
        bool has_linked_chat,
        bool has_location,
        bool sign_messages,
        bool show_message_sender,
        bool join_to_send_messages,
        bool join_by_request,
        bool is_slow_mode_enabled,
        bool is_channel,
        bool is_broadcast_group,
        bool is_forum,
        VerificationStatus? verification_status,
        bool has_sensitive_content,
        string restriction_reason,
        bool has_active_stories,
        bool has_unread_active_stories
    ) {
        Object (
            id_: id_,
            usernames: usernames,
            date: date,
            status: status,
            member_count: member_count,
            boost_level: boost_level,
            has_linked_chat: has_linked_chat,
            has_location: has_location,
            sign_messages: sign_messages,
            show_message_sender: show_message_sender,
            join_to_send_messages: join_to_send_messages,
            join_by_request: join_by_request,
            is_slow_mode_enabled: is_slow_mode_enabled,
            is_channel: is_channel,
            is_broadcast_group: is_broadcast_group,
            is_forum: is_forum,
            verification_status: verification_status,
            has_sensitive_content: has_sensitive_content,
            restriction_reason: restriction_reason,
            has_active_stories: has_active_stories,
            has_unread_active_stories: has_unread_active_stories,
            tdlib_type: "supergroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
