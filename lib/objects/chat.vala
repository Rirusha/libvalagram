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
 * A chat. (Can be a private chat, basic group, supergroup, or secret
 * chat)
 */
public class TDLib.Chat : Error {

    /**
     * Chat unique identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Type of the chat
     */
    public ChatType type_ { get; construct set; }

    /**
     * Chat title
     */
    public string title { get; construct set; }

    /**
     * Chat photo; may be null
     */
    public ChatPhotoInfo? photo { get; construct set; }

    /**
     * Identifier of the accent color for message sender name, and
     * backgrounds of chat photo, reply header, and link preview
     */
    public int32 accent_color_id { get; construct set; }

    /**
     * Identifier of a custom emoji to be shown on the reply header and link
     * preview background for messages sent by the chat; 0 if none
     */
    public int64 background_custom_emoji_id { get; construct set; }

    /**
     * Identifier of the profile accent color for the chat's profile; -1 if
     * none
     */
    public int32 profile_accent_color_id { get; construct set; }

    /**
     * Identifier of a custom emoji to be shown on the background of the
     * chat's profile; 0 if none
     */
    public int64 profile_background_custom_emoji_id { get; construct set; }

    /**
     * Actions that non-administrator chat members are allowed to take in the
     * chat
     */
    public ChatPermissions permissions { get; construct set; }

    /**
     * Last message in the chat; may be null if none or unknown
     */
    public Message? last_message { get; construct set; }

    /**
     * Positions of the chat in chat lists
     */
    public Gee.ArrayList<ChatPosition?> positions { get; construct set; default = new Gee.ArrayList<ChatPosition?> (); }

    /**
     * Chat lists to which the chat belongs. A chat can have a non-zero
     * position in a chat list even it doesn't belong to the chat list and
     * have no position in a chat list even it belongs to the chat list
     */
    public Gee.ArrayList<ChatList?> chat_lists { get; construct set; default = new Gee.ArrayList<ChatList?> (); }

    /**
     * Identifier of a user or chat that is selected to send messages in the
     * chat; may be null if the user can't change message sender
     */
    public MessageSender? message_sender_id { get; construct set; }

    /**
     * Block list to which the chat is added; may be null if none
     */
    public BlockList? block_list { get; construct set; }

    /**
     * True, if chat content can't be saved locally, forwarded, or copied
     */
    public bool has_protected_content { get; construct set; }

    /**
     * True, if translation of all messages in the chat must be suggested to
     * the user
     */
    public bool is_translatable { get; construct set; }

    /**
     * True, if the chat is marked as unread
     */
    public bool is_marked_as_unread { get; construct set; }

    /**
     * True, if the chat is a forum supergroup that must be shown in the
     * "View as topics" mode, or Saved Messages chat that must be shown in
     * the "View as chats"
     */
    public bool view_as_topics { get; construct set; }

    /**
     * True, if the chat has scheduled messages
     */
    public bool has_scheduled_messages { get; construct set; }

    /**
     * True, if the chat messages can be deleted only for the current user
     * while other users will continue to see the messages
     */
    public bool can_be_deleted_only_for_self { get; construct set; }

    /**
     * True, if the chat messages can be deleted for all users
     */
    public bool can_be_deleted_for_all_users { get; construct set; }

    /**
     * True, if the chat can be reported to Telegram moderators through
     * reportChat or reportChatPhoto
     */
    public bool can_be_reported { get; construct set; }

    /**
     * Default value of the disable_notification parameter, used when a
     * message is sent to the chat
     */
    public bool default_disable_notification { get; construct set; }

    /**
     * Number of unread messages in the chat
     */
    public int32 unread_count { get; construct set; }

    /**
     * Identifier of the last read incoming message
     */
    public int64 last_read_inbox_message_id { get; construct set; }

    /**
     * Identifier of the last read outgoing message
     */
    public int64 last_read_outbox_message_id { get; construct set; }

    /**
     * Number of unread messages with a mention/reply in the chat
     */
    public int32 unread_mention_count { get; construct set; }

    /**
     * Number of messages with unread reactions in the chat
     */
    public int32 unread_reaction_count { get; construct set; }

    /**
     * Notification settings for the chat
     */
    public ChatNotificationSettings notification_settings { get; construct set; }

    /**
     * Types of reaction, available in the chat
     */
    public ChatAvailableReactions available_reactions { get; construct set; }

    /**
     * Current message auto-delete or self-destruct timer setting for the
     * chat, in seconds; 0 if disabled. Self-destruct timer in secret chats
     * starts after the message or its content is viewed. Auto-delete timer
     * in other chats starts from the send date
     */
    public int32 message_auto_delete_time { get; construct set; }

    /**
     * Emoji status to be shown along with chat title; may be null
     */
    public EmojiStatus? emoji_status { get; construct set; }

    /**
     * Background set for the chat; may be null if none
     */
    public ChatBackground? background { get; construct set; }

    /**
     * If non-empty, name of a theme, set for the chat
     */
    public string theme_name { get; construct set; }

    /**
     * Information about actions which must be possible to do through the
     * chat action bar; may be null if none
     */
    public ChatActionBar? action_bar { get; construct set; }

    /**
     * Information about bar for managing a business bot in the chat; may be
     * null if none
     */
    public BusinessBotManageBar? business_bot_manage_bar { get; construct set; }

    /**
     * Information about video chat of the chat
     */
    public VideoChat video_chat { get; construct set; }

    /**
     * Information about pending join requests; may be null if none
     */
    public ChatJoinRequestsInfo? pending_join_requests { get; construct set; }

    /**
     * Identifier of the message from which reply markup needs to be used; 0
     * if there is no default custom reply markup in the chat
     */
    public int64 reply_markup_message_id { get; construct set; }

    /**
     * A draft of a message in the chat; may be null if none
     */
    public DraftMessage? draft_message { get; construct set; }

    /**
     * Application-specific data associated with the chat. (For example, the
     * chat scroll position or local chat notification settings can be stored
     * here.) Persistent if the message database is used
     */
    public string client_data { get; construct set; }

    public Chat (
        int64 id_,
        ChatType type_,
        string title,
        ChatPhotoInfo? photo,
        int32 accent_color_id,
        int64 background_custom_emoji_id,
        int32 profile_accent_color_id,
        int64 profile_background_custom_emoji_id,
        ChatPermissions permissions,
        Message? last_message,
        Gee.ArrayList<ChatPosition?> positions,
        Gee.ArrayList<ChatList?> chat_lists,
        MessageSender? message_sender_id,
        BlockList? block_list,
        bool has_protected_content,
        bool is_translatable,
        bool is_marked_as_unread,
        bool view_as_topics,
        bool has_scheduled_messages,
        bool can_be_deleted_only_for_self,
        bool can_be_deleted_for_all_users,
        bool can_be_reported,
        bool default_disable_notification,
        int32 unread_count,
        int64 last_read_inbox_message_id,
        int64 last_read_outbox_message_id,
        int32 unread_mention_count,
        int32 unread_reaction_count,
        ChatNotificationSettings notification_settings,
        ChatAvailableReactions available_reactions,
        int32 message_auto_delete_time,
        EmojiStatus? emoji_status,
        ChatBackground? background,
        string theme_name,
        ChatActionBar? action_bar,
        BusinessBotManageBar? business_bot_manage_bar,
        VideoChat video_chat,
        ChatJoinRequestsInfo? pending_join_requests,
        int64 reply_markup_message_id,
        DraftMessage? draft_message,
        string client_data
    ) {
        Object (
            id_: id_,
            type_: type_,
            title: title,
            photo: photo,
            accent_color_id: accent_color_id,
            background_custom_emoji_id: background_custom_emoji_id,
            profile_accent_color_id: profile_accent_color_id,
            profile_background_custom_emoji_id: profile_background_custom_emoji_id,
            permissions: permissions,
            last_message: last_message,
            positions: positions,
            chat_lists: chat_lists,
            message_sender_id: message_sender_id,
            block_list: block_list,
            has_protected_content: has_protected_content,
            is_translatable: is_translatable,
            is_marked_as_unread: is_marked_as_unread,
            view_as_topics: view_as_topics,
            has_scheduled_messages: has_scheduled_messages,
            can_be_deleted_only_for_self: can_be_deleted_only_for_self,
            can_be_deleted_for_all_users: can_be_deleted_for_all_users,
            can_be_reported: can_be_reported,
            default_disable_notification: default_disable_notification,
            unread_count: unread_count,
            last_read_inbox_message_id: last_read_inbox_message_id,
            last_read_outbox_message_id: last_read_outbox_message_id,
            unread_mention_count: unread_mention_count,
            unread_reaction_count: unread_reaction_count,
            notification_settings: notification_settings,
            available_reactions: available_reactions,
            message_auto_delete_time: message_auto_delete_time,
            emoji_status: emoji_status,
            background: background,
            theme_name: theme_name,
            action_bar: action_bar,
            business_bot_manage_bar: business_bot_manage_bar,
            video_chat: video_chat,
            pending_join_requests: pending_join_requests,
            reply_markup_message_id: reply_markup_message_id,
            draft_message: draft_message,
            client_data: client_data,
            tdlib_type: "chat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
