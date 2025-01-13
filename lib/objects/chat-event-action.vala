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
 * Represents a chat event
 */
public abstract class TDLib.ChatEventAction : Error {}

/**
 * A message was edited
 */
public class TDLib.ChatEventMessageEdited : ChatEventAction {

    /**
     * The original message before the edit
     */
    public Message old_message { get; construct set; }

    /**
     * The message after it was edited
     */
    public Message new_message { get; construct set; }

    public ChatEventMessageEdited (
        Message old_message,
        Message new_message
    ) {
        Object (
            old_message: old_message,
            new_message: new_message,
            tdlib_type: "chatEventMessageEdited",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message was deleted
 */
public class TDLib.ChatEventMessageDeleted : ChatEventAction {

    /**
     * Deleted message
     */
    public Message message { get; construct set; }

    /**
     * True, if the message deletion can be reported via
     * reportSupergroupAntiSpamFalsePositive
     */
    public bool can_report_anti_spam_false_positive { get; construct set; }

    public ChatEventMessageDeleted (
        Message message,
        bool can_report_anti_spam_false_positive
    ) {
        Object (
            message: message,
            can_report_anti_spam_false_positive: can_report_anti_spam_false_positive,
            tdlib_type: "chatEventMessageDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message was pinned
 */
public class TDLib.ChatEventMessagePinned : ChatEventAction {

    /**
     * Pinned message
     */
    public Message message { get; construct set; }

    public ChatEventMessagePinned (
        Message message
    ) {
        Object (
            message: message,
            tdlib_type: "chatEventMessagePinned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message was unpinned
 */
public class TDLib.ChatEventMessageUnpinned : ChatEventAction {

    /**
     * Unpinned message
     */
    public Message message { get; construct set; }

    public ChatEventMessageUnpinned (
        Message message
    ) {
        Object (
            message: message,
            tdlib_type: "chatEventMessageUnpinned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A poll in a message was stopped
 */
public class TDLib.ChatEventPollStopped : ChatEventAction {

    /**
     * The message with the poll
     */
    public Message message { get; construct set; }

    public ChatEventPollStopped (
        Message message
    ) {
        Object (
            message: message,
            tdlib_type: "chatEventPollStopped",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new member joined the chat
 */
public class TDLib.ChatEventMemberJoined : ChatEventAction {

    public ChatEventMemberJoined () {
        Object (
            tdlib_type: "chatEventMemberJoined",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new member joined the chat via an invite link
 */
public class TDLib.ChatEventMemberJoinedByInviteLink : ChatEventAction {

    /**
     * Invite link used to join the chat
     */
    public ChatInviteLink invite_link { get; construct set; }

    /**
     * True, if the user has joined the chat using an invite link for a chat
     * folder
     */
    public bool via_chat_folder_invite_link { get; construct set; }

    public ChatEventMemberJoinedByInviteLink (
        ChatInviteLink invite_link,
        bool via_chat_folder_invite_link
    ) {
        Object (
            invite_link: invite_link,
            via_chat_folder_invite_link: via_chat_folder_invite_link,
            tdlib_type: "chatEventMemberJoinedByInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new member was accepted to the chat by an administrator
 */
public class TDLib.ChatEventMemberJoinedByRequest : ChatEventAction {

    /**
     * User identifier of the chat administrator, approved user join request
     */
    public int64 approver_user_id { get; construct set; }

    /**
     * Invite link used to join the chat; may be null
     */
    public ChatInviteLink? invite_link { get; construct set; }

    public ChatEventMemberJoinedByRequest (
        int64 approver_user_id,
        ChatInviteLink? invite_link
    ) {
        Object (
            approver_user_id: approver_user_id,
            invite_link: invite_link,
            tdlib_type: "chatEventMemberJoinedByRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new chat member was invited
 */
public class TDLib.ChatEventMemberInvited : ChatEventAction {

    /**
     * New member user identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * New member status
     */
    public ChatMemberStatus status { get; construct set; }

    public ChatEventMemberInvited (
        int64 user_id,
        ChatMemberStatus status
    ) {
        Object (
            user_id: user_id,
            status: status,
            tdlib_type: "chatEventMemberInvited",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A member left the chat
 */
public class TDLib.ChatEventMemberLeft : ChatEventAction {

    public ChatEventMemberLeft () {
        Object (
            tdlib_type: "chatEventMemberLeft",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat member has gained/lost administrator status, or the list of
 * their administrator privileges has changed
 */
public class TDLib.ChatEventMemberPromoted : ChatEventAction {

    /**
     * Affected chat member user identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Previous status of the chat member
     */
    public ChatMemberStatus old_status { get; construct set; }

    /**
     * New status of the chat member
     */
    public ChatMemberStatus new_status { get; construct set; }

    public ChatEventMemberPromoted (
        int64 user_id,
        ChatMemberStatus old_status,
        ChatMemberStatus new_status
    ) {
        Object (
            user_id: user_id,
            old_status: old_status,
            new_status: new_status,
            tdlib_type: "chatEventMemberPromoted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat member was restricted/unrestricted or banned/unbanned, or the
 * list of their restrictions has changed
 */
public class TDLib.ChatEventMemberRestricted : ChatEventAction {

    /**
     * Affected chat member identifier
     */
    public MessageSender member_id { get; construct set; }

    /**
     * Previous status of the chat member
     */
    public ChatMemberStatus old_status { get; construct set; }

    /**
     * New status of the chat member
     */
    public ChatMemberStatus new_status { get; construct set; }

    public ChatEventMemberRestricted (
        MessageSender member_id,
        ChatMemberStatus old_status,
        ChatMemberStatus new_status
    ) {
        Object (
            member_id: member_id,
            old_status: old_status,
            new_status: new_status,
            tdlib_type: "chatEventMemberRestricted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat member extended their subscription to the chat
 */
public class TDLib.ChatEventMemberSubscriptionExtended : ChatEventAction {

    /**
     * Affected chat member user identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Previous status of the chat member
     */
    public ChatMemberStatus old_status { get; construct set; }

    /**
     * New status of the chat member
     */
    public ChatMemberStatus new_status { get; construct set; }

    public ChatEventMemberSubscriptionExtended (
        int64 user_id,
        ChatMemberStatus old_status,
        ChatMemberStatus new_status
    ) {
        Object (
            user_id: user_id,
            old_status: old_status,
            new_status: new_status,
            tdlib_type: "chatEventMemberSubscriptionExtended",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat available reactions were changed
 */
public class TDLib.ChatEventAvailableReactionsChanged : ChatEventAction {

    /**
     * Previous chat available reactions
     */
    public ChatAvailableReactions old_available_reactions { get; construct set; }

    /**
     * New chat available reactions
     */
    public ChatAvailableReactions new_available_reactions { get; construct set; }

    public ChatEventAvailableReactionsChanged (
        ChatAvailableReactions old_available_reactions,
        ChatAvailableReactions new_available_reactions
    ) {
        Object (
            old_available_reactions: old_available_reactions,
            new_available_reactions: new_available_reactions,
            tdlib_type: "chatEventAvailableReactionsChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat background was changed
 */
public class TDLib.ChatEventBackgroundChanged : ChatEventAction {

    /**
     * Previous background; may be null if none
     */
    public ChatBackground? old_background { get; construct set; }

    /**
     * New background; may be null if none
     */
    public ChatBackground? new_background { get; construct set; }

    public ChatEventBackgroundChanged (
        ChatBackground? old_background,
        ChatBackground? new_background
    ) {
        Object (
            old_background: old_background,
            new_background: new_background,
            tdlib_type: "chatEventBackgroundChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat  was changed
 */
public class TDLib.ChatEventDescriptionChanged : ChatEventAction {

    /**
     * Previous chat description
     */
    public string old_description { get; construct set; }

    /**
     * New chat description
     */
    public string new_description { get; construct set; }

    public ChatEventDescriptionChanged (
        string old_description,
        string new_description
    ) {
        Object (
            old_description: old_description,
            new_description: new_description,
            tdlib_type: "chatEventDescriptionChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat emoji status was changed
 */
public class TDLib.ChatEventEmojiStatusChanged : ChatEventAction {

    /**
     * Previous emoji status; may be null if none
     */
    public EmojiStatus? old_emoji_status { get; construct set; }

    /**
     * New emoji status; may be null if none
     */
    public EmojiStatus? new_emoji_status { get; construct set; }

    public ChatEventEmojiStatusChanged (
        EmojiStatus? old_emoji_status,
        EmojiStatus? new_emoji_status
    ) {
        Object (
            old_emoji_status: old_emoji_status,
            new_emoji_status: new_emoji_status,
            tdlib_type: "chatEventEmojiStatusChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The linked chat of a supergroup was changed
 */
public class TDLib.ChatEventLinkedChatChanged : ChatEventAction {

    /**
     * Previous supergroup linked chat identifier
     */
    public int64 old_linked_chat_id { get; construct set; }

    /**
     * New supergroup linked chat identifier
     */
    public int64 new_linked_chat_id { get; construct set; }

    public ChatEventLinkedChatChanged (
        int64 old_linked_chat_id,
        int64 new_linked_chat_id
    ) {
        Object (
            old_linked_chat_id: old_linked_chat_id,
            new_linked_chat_id: new_linked_chat_id,
            tdlib_type: "chatEventLinkedChatChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The supergroup location was changed
 */
public class TDLib.ChatEventLocationChanged : ChatEventAction {

    /**
     * Previous location; may be null
     */
    public ChatLocation? old_location { get; construct set; }

    /**
     * New location; may be null
     */
    public ChatLocation? new_location { get; construct set; }

    public ChatEventLocationChanged (
        ChatLocation? old_location,
        ChatLocation? new_location
    ) {
        Object (
            old_location: old_location,
            new_location: new_location,
            tdlib_type: "chatEventLocationChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message auto-delete timer was changed
 */
public class TDLib.ChatEventMessageAutoDeleteTimeChanged : ChatEventAction {

    /**
     * Previous value of message_auto_delete_time
     */
    public int32 old_message_auto_delete_time { get; construct set; }

    /**
     * New value of message_auto_delete_time
     */
    public int32 new_message_auto_delete_time { get; construct set; }

    public ChatEventMessageAutoDeleteTimeChanged (
        int32 old_message_auto_delete_time,
        int32 new_message_auto_delete_time
    ) {
        Object (
            old_message_auto_delete_time: old_message_auto_delete_time,
            new_message_auto_delete_time: new_message_auto_delete_time,
            tdlib_type: "chatEventMessageAutoDeleteTimeChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat permissions were changed
 */
public class TDLib.ChatEventPermissionsChanged : ChatEventAction {

    /**
     * Previous chat permissions
     */
    public ChatPermissions old_permissions { get; construct set; }

    /**
     * New chat permissions
     */
    public ChatPermissions new_permissions { get; construct set; }

    public ChatEventPermissionsChanged (
        ChatPermissions old_permissions,
        ChatPermissions new_permissions
    ) {
        Object (
            old_permissions: old_permissions,
            new_permissions: new_permissions,
            tdlib_type: "chatEventPermissionsChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat photo was changed
 */
public class TDLib.ChatEventPhotoChanged : ChatEventAction {

    /**
     * Previous chat photo value; may be null
     */
    public ChatPhoto? old_photo { get; construct set; }

    /**
     * New chat photo value; may be null
     */
    public ChatPhoto? new_photo { get; construct set; }

    public ChatEventPhotoChanged (
        ChatPhoto? old_photo,
        ChatPhoto? new_photo
    ) {
        Object (
            old_photo: old_photo,
            new_photo: new_photo,
            tdlib_type: "chatEventPhotoChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The slow_mode_delay setting of a supergroup was changed
 */
public class TDLib.ChatEventSlowModeDelayChanged : ChatEventAction {

    /**
     * Previous value of slow_mode_delay, in seconds
     */
    public int32 old_slow_mode_delay { get; construct set; }

    /**
     * New value of slow_mode_delay, in seconds
     */
    public int32 new_slow_mode_delay { get; construct set; }

    public ChatEventSlowModeDelayChanged (
        int32 old_slow_mode_delay,
        int32 new_slow_mode_delay
    ) {
        Object (
            old_slow_mode_delay: old_slow_mode_delay,
            new_slow_mode_delay: new_slow_mode_delay,
            tdlib_type: "chatEventSlowModeDelayChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The supergroup sticker set was changed
 */
public class TDLib.ChatEventStickerSetChanged : ChatEventAction {

    /**
     * Previous identifier of the chat sticker set; 0 if none
     */
    public int64 old_sticker_set_id { get; construct set; }

    /**
     * New identifier of the chat sticker set; 0 if none
     */
    public int64 new_sticker_set_id { get; construct set; }

    public ChatEventStickerSetChanged (
        int64 old_sticker_set_id,
        int64 new_sticker_set_id
    ) {
        Object (
            old_sticker_set_id: old_sticker_set_id,
            new_sticker_set_id: new_sticker_set_id,
            tdlib_type: "chatEventStickerSetChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The supergroup sticker set with allowed custom emoji was changed
 */
public class TDLib.ChatEventCustomEmojiStickerSetChanged : ChatEventAction {

    /**
     * Previous identifier of the chat sticker set; 0 if none
     */
    public int64 old_sticker_set_id { get; construct set; }

    /**
     * New identifier of the chat sticker set; 0 if none
     */
    public int64 new_sticker_set_id { get; construct set; }

    public ChatEventCustomEmojiStickerSetChanged (
        int64 old_sticker_set_id,
        int64 new_sticker_set_id
    ) {
        Object (
            old_sticker_set_id: old_sticker_set_id,
            new_sticker_set_id: new_sticker_set_id,
            tdlib_type: "chatEventCustomEmojiStickerSetChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat title was changed
 */
public class TDLib.ChatEventTitleChanged : ChatEventAction {

    /**
     * Previous chat title
     */
    public string old_title { get; construct set; }

    /**
     * New chat title
     */
    public string new_title { get; construct set; }

    public ChatEventTitleChanged (
        string old_title,
        string new_title
    ) {
        Object (
            old_title: old_title,
            new_title: new_title,
            tdlib_type: "chatEventTitleChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat editable username was changed
 */
public class TDLib.ChatEventUsernameChanged : ChatEventAction {

    /**
     * Previous chat username
     */
    public string old_username { get; construct set; }

    /**
     * New chat username
     */
    public string new_username { get; construct set; }

    public ChatEventUsernameChanged (
        string old_username,
        string new_username
    ) {
        Object (
            old_username: old_username,
            new_username: new_username,
            tdlib_type: "chatEventUsernameChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat active usernames were changed
 */
public class TDLib.ChatEventActiveUsernamesChanged : ChatEventAction {

    /**
     * Previous list of active usernames
     */
    public Gee.ArrayList<string?> old_usernames { get; construct set; default = new Gee.ArrayList<string?> (); }

    /**
     * New list of active usernames
     */
    public Gee.ArrayList<string?> new_usernames { get; construct set; default = new Gee.ArrayList<string?> (); }

    public ChatEventActiveUsernamesChanged (
        Gee.ArrayList<string?> old_usernames,
        Gee.ArrayList<string?> new_usernames
    ) {
        Object (
            old_usernames: old_usernames,
            new_usernames: new_usernames,
            tdlib_type: "chatEventActiveUsernamesChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat accent color or background custom emoji were changed
 */
public class TDLib.ChatEventAccentColorChanged : ChatEventAction {

    /**
     * Previous identifier of chat accent color
     */
    public int32 old_accent_color_id { get; construct set; }

    /**
     * Previous identifier of the custom emoji; 0 if none
     */
    public int64 old_background_custom_emoji_id { get; construct set; }

    /**
     * New identifier of chat accent color
     */
    public int32 new_accent_color_id { get; construct set; }

    /**
     * New identifier of the custom emoji; 0 if none
     */
    public int64 new_background_custom_emoji_id { get; construct set; }

    public ChatEventAccentColorChanged (
        int32 old_accent_color_id,
        int64 old_background_custom_emoji_id,
        int32 new_accent_color_id,
        int64 new_background_custom_emoji_id
    ) {
        Object (
            old_accent_color_id: old_accent_color_id,
            old_background_custom_emoji_id: old_background_custom_emoji_id,
            new_accent_color_id: new_accent_color_id,
            new_background_custom_emoji_id: new_background_custom_emoji_id,
            tdlib_type: "chatEventAccentColorChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat's profile accent color or profile background custom emoji
 * were changed
 */
public class TDLib.ChatEventProfileAccentColorChanged : ChatEventAction {

    /**
     * Previous identifier of chat's profile accent color; -1 if none
     */
    public int32 old_profile_accent_color_id { get; construct set; }

    /**
     * Previous identifier of the custom emoji; 0 if none
     */
    public int64 old_profile_background_custom_emoji_id { get; construct set; }

    /**
     * New identifier of chat's profile accent color; -1 if none
     */
    public int32 new_profile_accent_color_id { get; construct set; }

    /**
     * New identifier of the custom emoji; 0 if none
     */
    public int64 new_profile_background_custom_emoji_id { get; construct set; }

    public ChatEventProfileAccentColorChanged (
        int32 old_profile_accent_color_id,
        int64 old_profile_background_custom_emoji_id,
        int32 new_profile_accent_color_id,
        int64 new_profile_background_custom_emoji_id
    ) {
        Object (
            old_profile_accent_color_id: old_profile_accent_color_id,
            old_profile_background_custom_emoji_id: old_profile_background_custom_emoji_id,
            new_profile_accent_color_id: new_profile_accent_color_id,
            new_profile_background_custom_emoji_id: new_profile_background_custom_emoji_id,
            tdlib_type: "chatEventProfileAccentColorChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The has_protected_content setting of a channel was toggled
 */
public class TDLib.ChatEventHasProtectedContentToggled : ChatEventAction {

    /**
     * New value of has_protected_content
     */
    public bool has_protected_content { get; construct set; }

    public ChatEventHasProtectedContentToggled (
        bool has_protected_content
    ) {
        Object (
            has_protected_content: has_protected_content,
            tdlib_type: "chatEventHasProtectedContentToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The can_invite_users permission of a supergroup chat was toggled
 */
public class TDLib.ChatEventInvitesToggled : ChatEventAction {

    /**
     * New value of can_invite_users permission
     */
    public bool can_invite_users { get; construct set; }

    public ChatEventInvitesToggled (
        bool can_invite_users
    ) {
        Object (
            can_invite_users: can_invite_users,
            tdlib_type: "chatEventInvitesToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The is_all_history_available setting of a supergroup was toggled
 */
public class TDLib.ChatEventIsAllHistoryAvailableToggled : ChatEventAction {

    /**
     * New value of is_all_history_available
     */
    public bool is_all_history_available { get; construct set; }

    public ChatEventIsAllHistoryAvailableToggled (
        bool is_all_history_available
    ) {
        Object (
            is_all_history_available: is_all_history_available,
            tdlib_type: "chatEventIsAllHistoryAvailableToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The has_aggressive_anti_spam_enabled setting of a supergroup was
 * toggled
 */
public class TDLib.ChatEventHasAggressiveAntiSpamEnabledToggled : ChatEventAction {

    /**
     * New value of has_aggressive_anti_spam_enabled
     */
    public bool has_aggressive_anti_spam_enabled { get; construct set; }

    public ChatEventHasAggressiveAntiSpamEnabledToggled (
        bool has_aggressive_anti_spam_enabled
    ) {
        Object (
            has_aggressive_anti_spam_enabled: has_aggressive_anti_spam_enabled,
            tdlib_type: "chatEventHasAggressiveAntiSpamEnabledToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The sign_messages setting of a channel was toggled
 */
public class TDLib.ChatEventSignMessagesToggled : ChatEventAction {

    /**
     * New value of sign_messages
     */
    public bool sign_messages { get; construct set; }

    public ChatEventSignMessagesToggled (
        bool sign_messages
    ) {
        Object (
            sign_messages: sign_messages,
            tdlib_type: "chatEventSignMessagesToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The show_message_sender setting of a channel was toggled
 */
public class TDLib.ChatEventShowMessageSenderToggled : ChatEventAction {

    /**
     * New value of show_message_sender
     */
    public bool show_message_sender { get; construct set; }

    public ChatEventShowMessageSenderToggled (
        bool show_message_sender
    ) {
        Object (
            show_message_sender: show_message_sender,
            tdlib_type: "chatEventShowMessageSenderToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat invite link was edited
 */
public class TDLib.ChatEventInviteLinkEdited : ChatEventAction {

    /**
     * Previous information about the invite link
     */
    public ChatInviteLink old_invite_link { get; construct set; }

    /**
     * New information about the invite link
     */
    public ChatInviteLink new_invite_link { get; construct set; }

    public ChatEventInviteLinkEdited (
        ChatInviteLink old_invite_link,
        ChatInviteLink new_invite_link
    ) {
        Object (
            old_invite_link: old_invite_link,
            new_invite_link: new_invite_link,
            tdlib_type: "chatEventInviteLinkEdited",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat invite link was revoked
 */
public class TDLib.ChatEventInviteLinkRevoked : ChatEventAction {

    /**
     * The invite link
     */
    public ChatInviteLink invite_link { get; construct set; }

    public ChatEventInviteLinkRevoked (
        ChatInviteLink invite_link
    ) {
        Object (
            invite_link: invite_link,
            tdlib_type: "chatEventInviteLinkRevoked",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A revoked chat invite link was deleted
 */
public class TDLib.ChatEventInviteLinkDeleted : ChatEventAction {

    /**
     * The invite link
     */
    public ChatInviteLink invite_link { get; construct set; }

    public ChatEventInviteLinkDeleted (
        ChatInviteLink invite_link
    ) {
        Object (
            invite_link: invite_link,
            tdlib_type: "chatEventInviteLinkDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video chat was created
 */
public class TDLib.ChatEventVideoChatCreated : ChatEventAction {

    /**
     * Identifier of the video chat. The video chat can be received through
     * the method getGroupCall
     */
    public int32 group_call_id { get; construct set; }

    public ChatEventVideoChatCreated (
        int32 group_call_id
    ) {
        Object (
            group_call_id: group_call_id,
            tdlib_type: "chatEventVideoChatCreated",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video chat was ended
 */
public class TDLib.ChatEventVideoChatEnded : ChatEventAction {

    /**
     * Identifier of the video chat. The video chat can be received through
     * the method getGroupCall
     */
    public int32 group_call_id { get; construct set; }

    public ChatEventVideoChatEnded (
        int32 group_call_id
    ) {
        Object (
            group_call_id: group_call_id,
            tdlib_type: "chatEventVideoChatEnded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The mute_new_participants setting of a video chat was toggled
 */
public class TDLib.ChatEventVideoChatMuteNewParticipantsToggled : ChatEventAction {

    /**
     * New value of the mute_new_participants setting
     */
    public bool mute_new_participants { get; construct set; }

    public ChatEventVideoChatMuteNewParticipantsToggled (
        bool mute_new_participants
    ) {
        Object (
            mute_new_participants: mute_new_participants,
            tdlib_type: "chatEventVideoChatMuteNewParticipantsToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video chat participant was muted or unmuted
 */
public class TDLib.ChatEventVideoChatParticipantIsMutedToggled : ChatEventAction {

    /**
     * Identifier of the affected group call participant
     */
    public MessageSender participant_id { get; construct set; }

    /**
     * New value of is_muted
     */
    public bool is_muted { get; construct set; }

    public ChatEventVideoChatParticipantIsMutedToggled (
        MessageSender participant_id,
        bool is_muted
    ) {
        Object (
            participant_id: participant_id,
            is_muted: is_muted,
            tdlib_type: "chatEventVideoChatParticipantIsMutedToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video chat participant volume level was changed
 */
public class TDLib.ChatEventVideoChatParticipantVolumeLevelChanged : ChatEventAction {

    /**
     * Identifier of the affected group call participant
     */
    public MessageSender participant_id { get; construct set; }

    /**
     * New value of volume_level; 1-20000 in hundreds of percents
     */
    public int32 volume_level { get; construct set; }

    public ChatEventVideoChatParticipantVolumeLevelChanged (
        MessageSender participant_id,
        int32 volume_level
    ) {
        Object (
            participant_id: participant_id,
            volume_level: volume_level,
            tdlib_type: "chatEventVideoChatParticipantVolumeLevelChanged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The is_forum setting of a channel was toggled
 */
public class TDLib.ChatEventIsForumToggled : ChatEventAction {

    /**
     * New value of is_forum
     */
    public bool is_forum { get; construct set; }

    public ChatEventIsForumToggled (
        bool is_forum
    ) {
        Object (
            is_forum: is_forum,
            tdlib_type: "chatEventIsForumToggled",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new forum topic was created
 */
public class TDLib.ChatEventForumTopicCreated : ChatEventAction {

    /**
     * Information about the topic
     */
    public ForumTopicInfo topic_info { get; construct set; }

    public ChatEventForumTopicCreated (
        ForumTopicInfo topic_info
    ) {
        Object (
            topic_info: topic_info,
            tdlib_type: "chatEventForumTopicCreated",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A forum topic was edited
 */
public class TDLib.ChatEventForumTopicEdited : ChatEventAction {

    /**
     * Old information about the topic
     */
    public ForumTopicInfo old_topic_info { get; construct set; }

    /**
     * New information about the topic
     */
    public ForumTopicInfo new_topic_info { get; construct set; }

    public ChatEventForumTopicEdited (
        ForumTopicInfo old_topic_info,
        ForumTopicInfo new_topic_info
    ) {
        Object (
            old_topic_info: old_topic_info,
            new_topic_info: new_topic_info,
            tdlib_type: "chatEventForumTopicEdited",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A forum topic was closed or reopened
 */
public class TDLib.ChatEventForumTopicToggleIsClosed : ChatEventAction {

    /**
     * New information about the topic
     */
    public ForumTopicInfo topic_info { get; construct set; }

    public ChatEventForumTopicToggleIsClosed (
        ForumTopicInfo topic_info
    ) {
        Object (
            topic_info: topic_info,
            tdlib_type: "chatEventForumTopicToggleIsClosed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The General forum topic was hidden or unhidden
 */
public class TDLib.ChatEventForumTopicToggleIsHidden : ChatEventAction {

    /**
     * New information about the topic
     */
    public ForumTopicInfo topic_info { get; construct set; }

    public ChatEventForumTopicToggleIsHidden (
        ForumTopicInfo topic_info
    ) {
        Object (
            topic_info: topic_info,
            tdlib_type: "chatEventForumTopicToggleIsHidden",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A forum topic was deleted
 */
public class TDLib.ChatEventForumTopicDeleted : ChatEventAction {

    /**
     * Information about the topic
     */
    public ForumTopicInfo topic_info { get; construct set; }

    public ChatEventForumTopicDeleted (
        ForumTopicInfo topic_info
    ) {
        Object (
            topic_info: topic_info,
            tdlib_type: "chatEventForumTopicDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A pinned forum topic was changed
 */
public class TDLib.ChatEventForumTopicPinned : ChatEventAction {

    /**
     * Information about the old pinned topic; may be null
     */
    public ForumTopicInfo? old_topic_info { get; construct set; }

    /**
     * Information about the new pinned topic; may be null
     */
    public ForumTopicInfo? new_topic_info { get; construct set; }

    public ChatEventForumTopicPinned (
        ForumTopicInfo? old_topic_info,
        ForumTopicInfo? new_topic_info
    ) {
        Object (
            old_topic_info: old_topic_info,
            new_topic_info: new_topic_info,
            tdlib_type: "chatEventForumTopicPinned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
