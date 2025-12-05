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
 * Contains notifications about data changes
 */
public abstract class TDLib.Update : Error {}

/**
 * The user authorization state has changed
 */
public class TDLib.UpdateAuthorizationState : Update {

    /**
     * New authorization state
     */
    public AuthorizationState authorization_state { get; construct set; }

    public UpdateAuthorizationState (
        AuthorizationState authorization_state
    ) {
        Object (
            authorization_state: authorization_state,
            tdlib_type: "updateAuthorizationState",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new message was received; can also be an outgoing message
 */
public class TDLib.UpdateNewMessage : Update {

    /**
     * The new message
     */
    public new Message message { get; construct set; }

    public UpdateNewMessage (
        Message message
    ) {
        Object (
            message: message,
            tdlib_type: "updateNewMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A request to send a message has reached the Telegram server. This
 * doesn't mean that the message will be sent successfully.
 * This update is sent only if the option "use_quick_ack" is set to true.
 * This update may be sent multiple times for the same message
 */
public class TDLib.UpdateMessageSendAcknowledged : Update {

    /**
     * The chat identifier of the sent message
     */
    public int64 chat_id { get; construct set; }

    /**
     * A temporary message identifier
     */
    public int64 message_id { get; construct set; }

    public UpdateMessageSendAcknowledged (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "updateMessageSendAcknowledged",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message has been successfully sent
 */
public class TDLib.UpdateMessageSendSucceeded : Update {

    /**
     * The sent message. Almost any field of the new message can be different
     * from the corresponding field of the original message.
     * For example, the field scheduling_state may change, making the message
     * scheduled, or non-scheduled
     */
    public new Message message { get; construct set; }

    /**
     * The previous temporary message identifier
     */
    public int64 old_message_id { get; construct set; }

    public UpdateMessageSendSucceeded (
        Message message,
        int64 old_message_id
    ) {
        Object (
            message: message,
            old_message_id: old_message_id,
            tdlib_type: "updateMessageSendSucceeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message failed to send. Be aware that some messages being sent can
 * be irrecoverably deleted, in which case updateDeleteMessages will be
 * received instead of this update
 */
public class TDLib.UpdateMessageSendFailed : Update {

    /**
     * The failed to send message
     */
    public new Message message { get; construct set; }

    /**
     * The previous temporary message identifier
     */
    public int64 old_message_id { get; construct set; }

    /**
     * The cause of the message sending failure
     */
    public Error error { get; construct set; }

    public UpdateMessageSendFailed (
        Message message,
        int64 old_message_id,
        Error error
    ) {
        Object (
            message: message,
            old_message_id: old_message_id,
            error: error,
            tdlib_type: "updateMessageSendFailed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message content has changed
 */
public class TDLib.UpdateMessageContent : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * New message content
     */
    public MessageContent new_content { get; construct set; }

    public UpdateMessageContent (
        int64 chat_id,
        int64 message_id,
        MessageContent new_content
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            new_content: new_content,
            tdlib_type: "updateMessageContent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message was edited. Changes in the message content will come in a
 * separate updateMessageContent
 */
public class TDLib.UpdateMessageEdited : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the message was edited
     */
    public int32 edit_date { get; construct set; }

    /**
     * New message reply markup; may be null
     */
    public ReplyMarkup? reply_markup { get; construct set; }

    public UpdateMessageEdited (
        int64 chat_id,
        int64 message_id,
        int32 edit_date,
        ReplyMarkup? reply_markup
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            edit_date: edit_date,
            reply_markup: reply_markup,
            tdlib_type: "updateMessageEdited",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message pinned state was changed
 */
public class TDLib.UpdateMessageIsPinned : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * True, if the message is pinned
     */
    public bool is_pinned { get; construct set; }

    public UpdateMessageIsPinned (
        int64 chat_id,
        int64 message_id,
        bool is_pinned
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            is_pinned: is_pinned,
            tdlib_type: "updateMessageIsPinned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The information about interactions with a message has changed
 */
public class TDLib.UpdateMessageInteractionInfo : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * New information about interactions with the message; may be null
     */
    public MessageInteractionInfo? interaction_info { get; construct set; }

    public UpdateMessageInteractionInfo (
        int64 chat_id,
        int64 message_id,
        MessageInteractionInfo? interaction_info
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            interaction_info: interaction_info,
            tdlib_type: "updateMessageInteractionInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message content was opened. Updates voice note messages to
 * "listened", video note messages to "viewed" and starts the
 * self-destruct timer
 */
public class TDLib.UpdateMessageContentOpened : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    public UpdateMessageContentOpened (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "updateMessageContentOpened",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with an unread mention was read
 */
public class TDLib.UpdateMessageMentionRead : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * The new number of unread mention messages left in the chat
     */
    public int32 unread_mention_count { get; construct set; }

    public UpdateMessageMentionRead (
        int64 chat_id,
        int64 message_id,
        int32 unread_mention_count
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            unread_mention_count: unread_mention_count,
            tdlib_type: "updateMessageMentionRead",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of unread reactions added to a message was changed
 */
public class TDLib.UpdateMessageUnreadReactions : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * The new list of unread reactions
     */
    public Gee.ArrayList<UnreadReaction?> unread_reactions { get; construct set; default = new Gee.ArrayList<UnreadReaction?> (); }

    /**
     * The new number of messages with unread reactions left in the chat
     */
    public int32 unread_reaction_count { get; construct set; }

    public UpdateMessageUnreadReactions (
        int64 chat_id,
        int64 message_id,
        Gee.ArrayList<UnreadReaction?> unread_reactions,
        int32 unread_reaction_count
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            unread_reactions: unread_reactions,
            unread_reaction_count: unread_reaction_count,
            tdlib_type: "updateMessageUnreadReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A fact-check added to a message was changed
 */
public class TDLib.UpdateMessageFactCheck : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * The new fact-check
     */
    public FactCheck fact_check { get; construct set; }

    public UpdateMessageFactCheck (
        int64 chat_id,
        int64 message_id,
        FactCheck fact_check
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            fact_check: fact_check,
            tdlib_type: "updateMessageFactCheck",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Information about suggested post of a message was changed
 */
public class TDLib.UpdateMessageSuggestedPostInfo : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * The new information about the suggested post
     */
    public SuggestedPostInfo suggested_post_info { get; construct set; }

    public UpdateMessageSuggestedPostInfo (
        int64 chat_id,
        int64 message_id,
        SuggestedPostInfo suggested_post_info
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            suggested_post_info: suggested_post_info,
            tdlib_type: "updateMessageSuggestedPostInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a live location was viewed. When the update is
 * received, the application is expected to update the live location
 */
public class TDLib.UpdateMessageLiveLocationViewed : Update {

    /**
     * Identifier of the chat with the live location message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message with live location
     */
    public int64 message_id { get; construct set; }

    public UpdateMessageLiveLocationViewed (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "updateMessageLiveLocationViewed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An automatically scheduled message with video has been successfully
 * sent after conversion
 */
public class TDLib.UpdateVideoPublished : Update {

    /**
     * Identifier of the chat with the message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the sent message
     */
    public int64 message_id { get; construct set; }

    public UpdateVideoPublished (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "updateVideoPublished",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new chat has been loaded/created. This update is guaranteed to come
 * before the chat identifier is returned to the application. The chat
 * field changes will be reported through separate updates
 */
public class TDLib.UpdateNewChat : Update {

    /**
     * The chat
     */
    public Chat chat { get; construct set; }

    public UpdateNewChat (
        Chat chat
    ) {
        Object (
            chat: chat,
            tdlib_type: "updateNewChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The title of a chat was changed
 */
public class TDLib.UpdateChatTitle : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new chat title
     */
    public string title { get; construct set; }

    public UpdateChatTitle (
        int64 chat_id,
        string title
    ) {
        Object (
            chat_id: chat_id,
            title: title,
            tdlib_type: "updateChatTitle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat photo was changed
 */
public class TDLib.UpdateChatPhoto : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new chat photo; may be null
     */
    public ChatPhotoInfo? photo { get; construct set; }

    public UpdateChatPhoto (
        int64 chat_id,
        ChatPhotoInfo? photo
    ) {
        Object (
            chat_id: chat_id,
            photo: photo,
            tdlib_type: "updateChatPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Chat accent colors have changed
 */
public class TDLib.UpdateChatAccentColors : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new chat accent color identifier
     */
    public int32 accent_color_id { get; construct set; }

    /**
     * The new identifier of a custom emoji to be shown on the reply header
     * and link preview background; 0 if none
     */
    public int64 background_custom_emoji_id { get; construct set; }

    /**
     * Color scheme based on an upgraded gift to be used for the chat instead
     * of accent_color_id and background_custom_emoji_id; may be null if none
     */
    public UpgradedGiftColors? upgraded_gift_colors { get; construct set; }

    /**
     * The new chat profile accent color identifier; -1 if none
     */
    public int32 profile_accent_color_id { get; construct set; }

    /**
     * The new identifier of a custom emoji to be shown on the profile
     * background; 0 if none
     */
    public int64 profile_background_custom_emoji_id { get; construct set; }

    public UpdateChatAccentColors (
        int64 chat_id,
        int32 accent_color_id,
        int64 background_custom_emoji_id,
        UpgradedGiftColors? upgraded_gift_colors,
        int32 profile_accent_color_id,
        int64 profile_background_custom_emoji_id
    ) {
        Object (
            chat_id: chat_id,
            accent_color_id: accent_color_id,
            background_custom_emoji_id: background_custom_emoji_id,
            upgraded_gift_colors: upgraded_gift_colors,
            profile_accent_color_id: profile_accent_color_id,
            profile_background_custom_emoji_id: profile_background_custom_emoji_id,
            tdlib_type: "updateChatAccentColors",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Chat permissions were changed
 */
public class TDLib.UpdateChatPermissions : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new chat permissions
     */
    public ChatPermissions permissions { get; construct set; }

    public UpdateChatPermissions (
        int64 chat_id,
        ChatPermissions permissions
    ) {
        Object (
            chat_id: chat_id,
            permissions: permissions,
            tdlib_type: "updateChatPermissions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The last message of a chat was changed
 */
public class TDLib.UpdateChatLastMessage : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new last message in the chat; may be null if the last message
     * became unknown. While the last message is unknown, new messages can be
     * added to the chat without corresponding updateNewMessage update
     */
    public Message? last_message { get; construct set; }

    /**
     * The new chat positions in the chat lists
     */
    public Gee.ArrayList<ChatPosition?> positions { get; construct set; default = new Gee.ArrayList<ChatPosition?> (); }

    public UpdateChatLastMessage (
        int64 chat_id,
        Message? last_message,
        Gee.ArrayList<ChatPosition?> positions
    ) {
        Object (
            chat_id: chat_id,
            last_message: last_message,
            positions: positions,
            tdlib_type: "updateChatLastMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The position of a chat in a chat list has changed. An
 * updateChatLastMessage or updateChatDraftMessage update might be sent
 * instead of the update
 */
public class TDLib.UpdateChatPosition : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New chat position. If new order is 0, then the chat needs to be
     * removed from the list
     */
    public ChatPosition position { get; construct set; }

    public UpdateChatPosition (
        int64 chat_id,
        ChatPosition position
    ) {
        Object (
            chat_id: chat_id,
            position: position,
            tdlib_type: "updateChatPosition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat was added to a chat list
 */
public class TDLib.UpdateChatAddedToList : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The chat list to which the chat was added
     */
    public ChatList chat_list { get; construct set; }

    public UpdateChatAddedToList (
        int64 chat_id,
        ChatList chat_list
    ) {
        Object (
            chat_id: chat_id,
            chat_list: chat_list,
            tdlib_type: "updateChatAddedToList",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat was removed from a chat list
 */
public class TDLib.UpdateChatRemovedFromList : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The chat list from which the chat was removed
     */
    public ChatList chat_list { get; construct set; }

    public UpdateChatRemovedFromList (
        int64 chat_id,
        ChatList chat_list
    ) {
        Object (
            chat_id: chat_id,
            chat_list: chat_list,
            tdlib_type: "updateChatRemovedFromList",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Incoming messages were read or the number of unread messages has been
 * changed
 */
public class TDLib.UpdateChatReadInbox : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the last read incoming message
     */
    public int64 last_read_inbox_message_id { get; construct set; }

    /**
     * The number of unread messages left in the chat
     */
    public int32 unread_count { get; construct set; }

    public UpdateChatReadInbox (
        int64 chat_id,
        int64 last_read_inbox_message_id,
        int32 unread_count
    ) {
        Object (
            chat_id: chat_id,
            last_read_inbox_message_id: last_read_inbox_message_id,
            unread_count: unread_count,
            tdlib_type: "updateChatReadInbox",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Outgoing messages were read
 */
public class TDLib.UpdateChatReadOutbox : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of last read outgoing message
     */
    public int64 last_read_outbox_message_id { get; construct set; }

    public UpdateChatReadOutbox (
        int64 chat_id,
        int64 last_read_outbox_message_id
    ) {
        Object (
            chat_id: chat_id,
            last_read_outbox_message_id: last_read_outbox_message_id,
            tdlib_type: "updateChatReadOutbox",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat action bar was changed
 */
public class TDLib.UpdateChatActionBar : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new value of the action bar; may be null
     */
    public ChatActionBar? action_bar { get; construct set; }

    public UpdateChatActionBar (
        int64 chat_id,
        ChatActionBar? action_bar
    ) {
        Object (
            chat_id: chat_id,
            action_bar: action_bar,
            tdlib_type: "updateChatActionBar",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The bar for managing business bot was changed in a chat
 */
public class TDLib.UpdateChatBusinessBotManageBar : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new value of the business bot manage bar; may be null
     */
    public BusinessBotManageBar? business_bot_manage_bar { get; construct set; }

    public UpdateChatBusinessBotManageBar (
        int64 chat_id,
        BusinessBotManageBar? business_bot_manage_bar
    ) {
        Object (
            chat_id: chat_id,
            business_bot_manage_bar: business_bot_manage_bar,
            tdlib_type: "updateChatBusinessBotManageBar",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat available reactions were changed
 */
public class TDLib.UpdateChatAvailableReactions : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new reactions, available in the chat
     */
    public ChatAvailableReactions available_reactions { get; construct set; }

    public UpdateChatAvailableReactions (
        int64 chat_id,
        ChatAvailableReactions available_reactions
    ) {
        Object (
            chat_id: chat_id,
            available_reactions: available_reactions,
            tdlib_type: "updateChatAvailableReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat draft has changed. Be aware that the update may come in the
 * currently opened chat but with old content of the draft. If the user
 * has changed the content of the draft, this update mustn't be applied
 */
public class TDLib.UpdateChatDraftMessage : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new draft message; may be null if none
     */
    public DraftMessage? draft_message { get; construct set; }

    /**
     * The new chat positions in the chat lists
     */
    public Gee.ArrayList<ChatPosition?> positions { get; construct set; default = new Gee.ArrayList<ChatPosition?> (); }

    public UpdateChatDraftMessage (
        int64 chat_id,
        DraftMessage? draft_message,
        Gee.ArrayList<ChatPosition?> positions
    ) {
        Object (
            chat_id: chat_id,
            draft_message: draft_message,
            positions: positions,
            tdlib_type: "updateChatDraftMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Chat emoji status has changed
 */
public class TDLib.UpdateChatEmojiStatus : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new chat emoji status; may be null
     */
    public EmojiStatus? emoji_status { get; construct set; }

    public UpdateChatEmojiStatus (
        int64 chat_id,
        EmojiStatus? emoji_status
    ) {
        Object (
            chat_id: chat_id,
            emoji_status: emoji_status,
            tdlib_type: "updateChatEmojiStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message sender that is selected to send messages in a chat has
 * changed
 */
public class TDLib.UpdateChatMessageSender : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New value of message_sender_id; may be null if the user can't change
     * message sender
     */
    public MessageSender? message_sender_id { get; construct set; }

    public UpdateChatMessageSender (
        int64 chat_id,
        MessageSender? message_sender_id
    ) {
        Object (
            chat_id: chat_id,
            message_sender_id: message_sender_id,
            tdlib_type: "updateChatMessageSender",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message auto-delete or self-destruct timer setting for a chat was
 * changed
 */
public class TDLib.UpdateChatMessageAutoDeleteTime : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New value of message_auto_delete_time
     */
    public int32 message_auto_delete_time { get; construct set; }

    public UpdateChatMessageAutoDeleteTime (
        int64 chat_id,
        int32 message_auto_delete_time
    ) {
        Object (
            chat_id: chat_id,
            message_auto_delete_time: message_auto_delete_time,
            tdlib_type: "updateChatMessageAutoDeleteTime",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Notification settings for a chat were changed
 */
public class TDLib.UpdateChatNotificationSettings : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new notification settings
     */
    public ChatNotificationSettings notification_settings { get; construct set; }

    public UpdateChatNotificationSettings (
        int64 chat_id,
        ChatNotificationSettings notification_settings
    ) {
        Object (
            chat_id: chat_id,
            notification_settings: notification_settings,
            tdlib_type: "updateChatNotificationSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat pending join requests were changed
 */
public class TDLib.UpdateChatPendingJoinRequests : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new data about pending join requests; may be null
     */
    public ChatJoinRequestsInfo? pending_join_requests { get; construct set; }

    public UpdateChatPendingJoinRequests (
        int64 chat_id,
        ChatJoinRequestsInfo? pending_join_requests
    ) {
        Object (
            chat_id: chat_id,
            pending_join_requests: pending_join_requests,
            tdlib_type: "updateChatPendingJoinRequests",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The default chat reply markup was changed. Can occur because new
 * messages with reply markup were received or because an old reply
 * markup was hidden by the user
 */
public class TDLib.UpdateChatReplyMarkup : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message from which reply markup needs to be used; 0
     * if there is no default custom reply markup in the chat
     */
    public int64 reply_markup_message_id { get; construct set; }

    public UpdateChatReplyMarkup (
        int64 chat_id,
        int64 reply_markup_message_id
    ) {
        Object (
            chat_id: chat_id,
            reply_markup_message_id: reply_markup_message_id,
            tdlib_type: "updateChatReplyMarkup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat background was changed
 */
public class TDLib.UpdateChatBackground : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new chat background; may be null if background was reset to
     * default
     */
    public ChatBackground? background { get; construct set; }

    public UpdateChatBackground (
        int64 chat_id,
        ChatBackground? background
    ) {
        Object (
            chat_id: chat_id,
            background: background,
            tdlib_type: "updateChatBackground",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat theme was changed
 */
public class TDLib.UpdateChatTheme : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new theme of the chat; may be null if theme was reset to default
     */
    public ChatTheme? theme { get; construct set; }

    public UpdateChatTheme (
        int64 chat_id,
        ChatTheme? theme
    ) {
        Object (
            chat_id: chat_id,
            theme: theme,
            tdlib_type: "updateChatTheme",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat unread_mention_count has changed
 */
public class TDLib.UpdateChatUnreadMentionCount : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The number of unread mention messages left in the chat
     */
    public int32 unread_mention_count { get; construct set; }

    public UpdateChatUnreadMentionCount (
        int64 chat_id,
        int32 unread_mention_count
    ) {
        Object (
            chat_id: chat_id,
            unread_mention_count: unread_mention_count,
            tdlib_type: "updateChatUnreadMentionCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat unread_reaction_count has changed
 */
public class TDLib.UpdateChatUnreadReactionCount : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The number of messages with unread reactions left in the chat
     */
    public int32 unread_reaction_count { get; construct set; }

    public UpdateChatUnreadReactionCount (
        int64 chat_id,
        int32 unread_reaction_count
    ) {
        Object (
            chat_id: chat_id,
            unread_reaction_count: unread_reaction_count,
            tdlib_type: "updateChatUnreadReactionCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat video chat state has changed
 */
public class TDLib.UpdateChatVideoChat : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New value of video_chat
     */
    public VideoChat video_chat { get; construct set; }

    public UpdateChatVideoChat (
        int64 chat_id,
        VideoChat video_chat
    ) {
        Object (
            chat_id: chat_id,
            video_chat: video_chat,
            tdlib_type: "updateChatVideoChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The value of the default disable_notification parameter, used when a
 * message is sent to the chat, was changed
 */
public class TDLib.UpdateChatDefaultDisableNotification : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The new default_disable_notification value
     */
    public bool default_disable_notification { get; construct set; }

    public UpdateChatDefaultDisableNotification (
        int64 chat_id,
        bool default_disable_notification
    ) {
        Object (
            chat_id: chat_id,
            default_disable_notification: default_disable_notification,
            tdlib_type: "updateChatDefaultDisableNotification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat content was allowed or restricted for saving
 */
public class TDLib.UpdateChatHasProtectedContent : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New value of has_protected_content
     */
    public bool has_protected_content { get; construct set; }

    public UpdateChatHasProtectedContent (
        int64 chat_id,
        bool has_protected_content
    ) {
        Object (
            chat_id: chat_id,
            has_protected_content: has_protected_content,
            tdlib_type: "updateChatHasProtectedContent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Translation of chat messages was enabled or disabled
 */
public class TDLib.UpdateChatIsTranslatable : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New value of is_translatable
     */
    public bool is_translatable { get; construct set; }

    public UpdateChatIsTranslatable (
        int64 chat_id,
        bool is_translatable
    ) {
        Object (
            chat_id: chat_id,
            is_translatable: is_translatable,
            tdlib_type: "updateChatIsTranslatable",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat was marked as unread or was read
 */
public class TDLib.UpdateChatIsMarkedAsUnread : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New value of is_marked_as_unread
     */
    public bool is_marked_as_unread { get; construct set; }

    public UpdateChatIsMarkedAsUnread (
        int64 chat_id,
        bool is_marked_as_unread
    ) {
        Object (
            chat_id: chat_id,
            is_marked_as_unread: is_marked_as_unread,
            tdlib_type: "updateChatIsMarkedAsUnread",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat default appearance has changed
 */
public class TDLib.UpdateChatViewAsTopics : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New value of view_as_topics
     */
    public bool view_as_topics { get; construct set; }

    public UpdateChatViewAsTopics (
        int64 chat_id,
        bool view_as_topics
    ) {
        Object (
            chat_id: chat_id,
            view_as_topics: view_as_topics,
            tdlib_type: "updateChatViewAsTopics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat was blocked or unblocked
 */
public class TDLib.UpdateChatBlockList : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Block list to which the chat is added; may be null if none
     */
    public BlockList? block_list { get; construct set; }

    public UpdateChatBlockList (
        int64 chat_id,
        BlockList? block_list
    ) {
        Object (
            chat_id: chat_id,
            block_list: block_list,
            tdlib_type: "updateChatBlockList",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat's has_scheduled_messages field has changed
 */
public class TDLib.UpdateChatHasScheduledMessages : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New value of has_scheduled_messages
     */
    public bool has_scheduled_messages { get; construct set; }

    public UpdateChatHasScheduledMessages (
        int64 chat_id,
        bool has_scheduled_messages
    ) {
        Object (
            chat_id: chat_id,
            has_scheduled_messages: has_scheduled_messages,
            tdlib_type: "updateChatHasScheduledMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of chat folders or a chat folder has changed
 */
public class TDLib.UpdateChatFolders : Update {

    /**
     * The new list of chat folders
     */
    public Gee.ArrayList<ChatFolderInfo?> chat_folders { get; construct set; default = new Gee.ArrayList<ChatFolderInfo?> (); }

    /**
     * Position of the main chat list among chat folders, 0-based
     */
    public int32 main_chat_list_position { get; construct set; }

    /**
     * True, if folder tags are enabled
     */
    public bool are_tags_enabled { get; construct set; }

    public UpdateChatFolders (
        Gee.ArrayList<ChatFolderInfo?> chat_folders,
        int32 main_chat_list_position,
        bool are_tags_enabled
    ) {
        Object (
            chat_folders: chat_folders,
            main_chat_list_position: main_chat_list_position,
            are_tags_enabled: are_tags_enabled,
            tdlib_type: "updateChatFolders",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The number of online group members has changed. This update with
 * non-zero number of online group members is sent only for currently
 * opened chats.
 * There is no guarantee that it is sent just after the number of online
 * users has changed
 */
public class TDLib.UpdateChatOnlineMemberCount : Update {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * New number of online members in the chat, or 0 if unknown
     */
    public int32 online_member_count { get; construct set; }

    public UpdateChatOnlineMemberCount (
        int64 chat_id,
        int32 online_member_count
    ) {
        Object (
            chat_id: chat_id,
            online_member_count: online_member_count,
            tdlib_type: "updateChatOnlineMemberCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Basic information about a Saved Messages topic has changed. This
 * update is guaranteed to come before the topic identifier is returned
 * to the application
 */
public class TDLib.UpdateSavedMessagesTopic : Update {

    /**
     * New data about the topic
     */
    public SavedMessagesTopic topic { get; construct set; }

    public UpdateSavedMessagesTopic (
        SavedMessagesTopic topic
    ) {
        Object (
            topic: topic,
            tdlib_type: "updateSavedMessagesTopic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Number of Saved Messages topics has changed
 */
public class TDLib.UpdateSavedMessagesTopicCount : Update {

    /**
     * Approximate total number of Saved Messages topics
     */
    public int32 topic_count { get; construct set; }

    public UpdateSavedMessagesTopicCount (
        int32 topic_count
    ) {
        Object (
            topic_count: topic_count,
            tdlib_type: "updateSavedMessagesTopicCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Basic information about a topic in a channel direct messages chat
 * administered by the current user has changed. This update is
 * guaranteed to come before the topic identifier is returned to the
 * application
 */
public class TDLib.UpdateDirectMessagesChatTopic : Update {

    /**
     * New data about the topic
     */
    public DirectMessagesChatTopic topic { get; construct set; }

    public UpdateDirectMessagesChatTopic (
        DirectMessagesChatTopic topic
    ) {
        Object (
            topic: topic,
            tdlib_type: "updateDirectMessagesChatTopic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Number of messages in a topic has changed; for Saved Messages and
 * channel direct messages chat topics only
 */
public class TDLib.UpdateTopicMessageCount : Update {

    /**
     * Identifier of the chat in topic of which the number of messages has
     * changed
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the topic
     */
    public MessageTopic topic_id { get; construct set; }

    /**
     * Approximate number of messages in the topic
     */
    public int32 message_count { get; construct set; }

    public UpdateTopicMessageCount (
        int64 chat_id,
        MessageTopic topic_id,
        int32 message_count
    ) {
        Object (
            chat_id: chat_id,
            topic_id: topic_id,
            message_count: message_count,
            tdlib_type: "updateTopicMessageCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Basic information about a quick reply shortcut has changed. This
 * update is guaranteed to come before the quick shortcut name is
 * returned to the application
 */
public class TDLib.UpdateQuickReplyShortcut : Update {

    /**
     * New data about the shortcut
     */
    public QuickReplyShortcut shortcut { get; construct set; }

    public UpdateQuickReplyShortcut (
        QuickReplyShortcut shortcut
    ) {
        Object (
            shortcut: shortcut,
            tdlib_type: "updateQuickReplyShortcut",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A quick reply shortcut and all its messages were deleted
 */
public class TDLib.UpdateQuickReplyShortcutDeleted : Update {

    /**
     * The identifier of the deleted shortcut
     */
    public int32 shortcut_id { get; construct set; }

    public UpdateQuickReplyShortcutDeleted (
        int32 shortcut_id
    ) {
        Object (
            shortcut_id: shortcut_id,
            tdlib_type: "updateQuickReplyShortcutDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of quick reply shortcuts has changed
 */
public class TDLib.UpdateQuickReplyShortcuts : Update {

    /**
     * The new list of identifiers of quick reply shortcuts
     */
    public Gee.ArrayList<int32?> shortcut_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public UpdateQuickReplyShortcuts (
        Gee.ArrayList<int32?> shortcut_ids
    ) {
        Object (
            shortcut_ids: shortcut_ids,
            tdlib_type: "updateQuickReplyShortcuts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of quick reply shortcut messages has changed
 */
public class TDLib.UpdateQuickReplyShortcutMessages : Update {

    /**
     * The identifier of the shortcut
     */
    public int32 shortcut_id { get; construct set; }

    /**
     * The new list of quick reply messages for the shortcut in order from
     * the first to the last sent
     */
    public Gee.ArrayList<QuickReplyMessage?> messages { get; construct set; default = new Gee.ArrayList<QuickReplyMessage?> (); }

    public UpdateQuickReplyShortcutMessages (
        int32 shortcut_id,
        Gee.ArrayList<QuickReplyMessage?> messages
    ) {
        Object (
            shortcut_id: shortcut_id,
            messages: messages,
            tdlib_type: "updateQuickReplyShortcutMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Basic information about a topic in a forum chat was changed
 */
public class TDLib.UpdateForumTopicInfo : Update {

    /**
     * New information about the topic
     */
    public ForumTopicInfo info { get; construct set; }

    public UpdateForumTopicInfo (
        ForumTopicInfo info
    ) {
        Object (
            info: info,
            tdlib_type: "updateForumTopicInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Information about a topic in a forum chat was changed
 */
public class TDLib.UpdateForumTopic : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Forum topic identifier of the topic
     */
    public int32 forum_topic_id { get; construct set; }

    /**
     * True, if the topic is pinned in the topic list
     */
    public bool is_pinned { get; construct set; }

    /**
     * Identifier of the last read incoming message
     */
    public int64 last_read_inbox_message_id { get; construct set; }

    /**
     * Identifier of the last read outgoing message
     */
    public int64 last_read_outbox_message_id { get; construct set; }

    /**
     * Number of unread messages with a mention/reply in the topic
     */
    public int32 unread_mention_count { get; construct set; }

    /**
     * Number of messages with unread reactions in the topic
     */
    public int32 unread_reaction_count { get; construct set; }

    /**
     * Notification settings for the topic
     */
    public ChatNotificationSettings notification_settings { get; construct set; }

    /**
     * A draft of a message in the topic; may be null if none
     */
    public DraftMessage? draft_message { get; construct set; }

    public UpdateForumTopic (
        int64 chat_id,
        int32 forum_topic_id,
        bool is_pinned,
        int64 last_read_inbox_message_id,
        int64 last_read_outbox_message_id,
        int32 unread_mention_count,
        int32 unread_reaction_count,
        ChatNotificationSettings notification_settings,
        DraftMessage? draft_message
    ) {
        Object (
            chat_id: chat_id,
            forum_topic_id: forum_topic_id,
            is_pinned: is_pinned,
            last_read_inbox_message_id: last_read_inbox_message_id,
            last_read_outbox_message_id: last_read_outbox_message_id,
            unread_mention_count: unread_mention_count,
            unread_reaction_count: unread_reaction_count,
            notification_settings: notification_settings,
            draft_message: draft_message,
            tdlib_type: "updateForumTopic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Notification settings for some type of chats were updated
 */
public class TDLib.UpdateScopeNotificationSettings : Update {

    /**
     * Types of chats for which notification settings were updated
     */
    public NotificationSettingsScope scope { get; construct set; }

    /**
     * The new notification settings
     */
    public ScopeNotificationSettings notification_settings { get; construct set; }

    public UpdateScopeNotificationSettings (
        NotificationSettingsScope scope,
        ScopeNotificationSettings notification_settings
    ) {
        Object (
            scope: scope,
            notification_settings: notification_settings,
            tdlib_type: "updateScopeNotificationSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Notification settings for reactions were updated
 */
public class TDLib.UpdateReactionNotificationSettings : Update {

    /**
     * The new notification settings
     */
    public ReactionNotificationSettings notification_settings { get; construct set; }

    public UpdateReactionNotificationSettings (
        ReactionNotificationSettings notification_settings
    ) {
        Object (
            notification_settings: notification_settings,
            tdlib_type: "updateReactionNotificationSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A notification was changed
 */
public class TDLib.UpdateNotification : Update {

    /**
     * Unique notification group identifier
     */
    public int32 notification_group_id { get; construct set; }

    /**
     * Changed notification
     */
    public Notification notification { get; construct set; }

    public UpdateNotification (
        int32 notification_group_id,
        Notification notification
    ) {
        Object (
            notification_group_id: notification_group_id,
            notification: notification,
            tdlib_type: "updateNotification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A list of active notifications in a notification group has changed
 */
public class TDLib.UpdateNotificationGroup : Update {

    /**
     * Unique notification group identifier
     */
    public int32 notification_group_id { get; construct set; }

    /**
     * New type of the notification group
     */
    public NotificationGroupType type_ { get; construct set; }

    /**
     * Identifier of a chat to which all notifications in the group belong
     */
    public int64 chat_id { get; construct set; }

    /**
     * Chat identifier, which notification settings must be applied to the
     * added notifications
     */
    public int64 notification_settings_chat_id { get; construct set; }

    /**
     * Identifier of the notification sound to be played; 0 if sound is
     * disabled
     */
    public int64 notification_sound_id { get; construct set; }

    /**
     * Total number of unread notifications in the group, can be bigger than
     * number of active notifications
     */
    public int32 total_count { get; construct set; }

    /**
     * List of added group notifications, sorted by notification identifier
     */
    public Gee.ArrayList<Notification?> added_notifications { get; construct set; default = new Gee.ArrayList<Notification?> (); }

    /**
     * Identifiers of removed group notifications, sorted by notification
     * identifier
     */
    public Gee.ArrayList<int32?> removed_notification_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public UpdateNotificationGroup (
        int32 notification_group_id,
        NotificationGroupType type_,
        int64 chat_id,
        int64 notification_settings_chat_id,
        int64 notification_sound_id,
        int32 total_count,
        Gee.ArrayList<Notification?> added_notifications,
        Gee.ArrayList<int32?> removed_notification_ids
    ) {
        Object (
            notification_group_id: notification_group_id,
            type_: type_,
            chat_id: chat_id,
            notification_settings_chat_id: notification_settings_chat_id,
            notification_sound_id: notification_sound_id,
            total_count: total_count,
            added_notifications: added_notifications,
            removed_notification_ids: removed_notification_ids,
            tdlib_type: "updateNotificationGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Contains active notifications that were shown on previous application
 * launches. This update is sent only if the message database is used. In
 * that case it comes once before any updateNotification and
 * updateNotificationGroup update
 */
public class TDLib.UpdateActiveNotifications : Update {

    /**
     * Lists of active notification groups
     */
    public Gee.ArrayList<NotificationGroup?> groups { get; construct set; default = new Gee.ArrayList<NotificationGroup?> (); }

    public UpdateActiveNotifications (
        Gee.ArrayList<NotificationGroup?> groups
    ) {
        Object (
            groups: groups,
            tdlib_type: "updateActiveNotifications",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes whether there are some pending notification updates. Can be
 * used to prevent application from killing, while there are some pending
 * notifications
 */
public class TDLib.UpdateHavePendingNotifications : Update {

    /**
     * True, if there are some delayed notification updates, which will be
     * sent soon
     */
    public bool have_delayed_notifications { get; construct set; }

    /**
     * True, if there can be some yet unreceived notifications, which are
     * being fetched from the server
     */
    public bool have_unreceived_notifications { get; construct set; }

    public UpdateHavePendingNotifications (
        bool have_delayed_notifications,
        bool have_unreceived_notifications
    ) {
        Object (
            have_delayed_notifications: have_delayed_notifications,
            have_unreceived_notifications: have_unreceived_notifications,
            tdlib_type: "updateHavePendingNotifications",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some messages were deleted
 */
public class TDLib.UpdateDeleteMessages : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifiers of the deleted messages
     */
    public Gee.ArrayList<int64?> message_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * True, if the messages are permanently deleted by a user (as opposed to
     * just becoming inaccessible)
     */
    public bool is_permanent { get; construct set; }

    /**
     * True, if the messages are deleted only from the cache and can possibly
     * be retrieved again in the future
     */
    public bool from_cache { get; construct set; }

    public UpdateDeleteMessages (
        int64 chat_id,
        Gee.ArrayList<int64?> message_ids,
        bool is_permanent,
        bool from_cache
    ) {
        Object (
            chat_id: chat_id,
            message_ids: message_ids,
            is_permanent: is_permanent,
            from_cache: from_cache,
            tdlib_type: "updateDeleteMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message sender activity in the chat has changed
 */
public class TDLib.UpdateChatAction : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the specific topic in which the action was performed;
     * may be null if none
     */
    public MessageTopic? topic_id { get; construct set; }

    /**
     * Identifier of a message sender performing the action
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * The action
     */
    public ChatAction action { get; construct set; }

    public UpdateChatAction (
        int64 chat_id,
        MessageTopic? topic_id,
        MessageSender sender_id,
        ChatAction action
    ) {
        Object (
            chat_id: chat_id,
            topic_id: topic_id,
            sender_id: sender_id,
            action: action,
            tdlib_type: "updateChatAction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new pending text message was received in a chat with a bot. The
 * message must be shown in the chat for at most
 * getOption("pending_text_message_period") seconds,
 * replace any other pending message with the same draft_id, and be
 * deleted whenever any incoming message from the bot in the message
 * thread is received
 */
public class TDLib.UpdatePendingTextMessage : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The forum topic identifier in which the message will be sent; 0 if
     * none
     */
    public int32 forum_topic_id { get; construct set; }

    /**
     * Unique identifier of the message draft within the message thread
     */
    public int64 draft_id { get; construct set; }

    /**
     * Text of the pending message
     */
    public FormattedText text { get; construct set; }

    public UpdatePendingTextMessage (
        int64 chat_id,
        int32 forum_topic_id,
        int64 draft_id,
        FormattedText text
    ) {
        Object (
            chat_id: chat_id,
            forum_topic_id: forum_topic_id,
            draft_id: draft_id,
            text: text,
            tdlib_type: "updatePendingTextMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user went online or offline
 */
public class TDLib.UpdateUserStatus : Update {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * New status of the user
     */
    public UserStatus status { get; construct set; }

    public UpdateUserStatus (
        int64 user_id,
        UserStatus status
    ) {
        Object (
            user_id: user_id,
            status: status,
            tdlib_type: "updateUserStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some data of a user has changed. This update is guaranteed to come
 * before the user identifier is returned to the application
 */
public class TDLib.UpdateUser : Update {

    /**
     * New data about the user
     */
    public User user { get; construct set; }

    public UpdateUser (
        User user
    ) {
        Object (
            user: user,
            tdlib_type: "updateUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some data of a basic group has changed. This update is guaranteed to
 * come before the basic group identifier is returned to the application
 */
public class TDLib.UpdateBasicGroup : Update {

    /**
     * New data about the group
     */
    public BasicGroup basic_group { get; construct set; }

    public UpdateBasicGroup (
        BasicGroup basic_group
    ) {
        Object (
            basic_group: basic_group,
            tdlib_type: "updateBasicGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some data of a supergroup or a channel has changed. This update is
 * guaranteed to come before the supergroup identifier is returned to the
 * application
 */
public class TDLib.UpdateSupergroup : Update {

    /**
     * New data about the supergroup
     */
    public Supergroup supergroup { get; construct set; }

    public UpdateSupergroup (
        Supergroup supergroup
    ) {
        Object (
            supergroup: supergroup,
            tdlib_type: "updateSupergroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some data of a secret chat has changed. This update is guaranteed to
 * come before the secret chat identifier is returned to the application
 */
public class TDLib.UpdateSecretChat : Update {

    /**
     * New data about the secret chat
     */
    public SecretChat secret_chat { get; construct set; }

    public UpdateSecretChat (
        SecretChat secret_chat
    ) {
        Object (
            secret_chat: secret_chat,
            tdlib_type: "updateSecretChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some data in userFullInfo has been changed
 */
public class TDLib.UpdateUserFullInfo : Update {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * New full information about the user
     */
    public UserFullInfo user_full_info { get; construct set; }

    public UpdateUserFullInfo (
        int64 user_id,
        UserFullInfo user_full_info
    ) {
        Object (
            user_id: user_id,
            user_full_info: user_full_info,
            tdlib_type: "updateUserFullInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some data in basicGroupFullInfo has been changed
 */
public class TDLib.UpdateBasicGroupFullInfo : Update {

    /**
     * Identifier of a basic group
     */
    public int64 basic_group_id { get; construct set; }

    /**
     * New full information about the group
     */
    public BasicGroupFullInfo basic_group_full_info { get; construct set; }

    public UpdateBasicGroupFullInfo (
        int64 basic_group_id,
        BasicGroupFullInfo basic_group_full_info
    ) {
        Object (
            basic_group_id: basic_group_id,
            basic_group_full_info: basic_group_full_info,
            tdlib_type: "updateBasicGroupFullInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some data in supergroupFullInfo has been changed
 */
public class TDLib.UpdateSupergroupFullInfo : Update {

    /**
     * Identifier of the supergroup or channel
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * New full information about the supergroup
     */
    public SupergroupFullInfo supergroup_full_info { get; construct set; }

    public UpdateSupergroupFullInfo (
        int64 supergroup_id,
        SupergroupFullInfo supergroup_full_info
    ) {
        Object (
            supergroup_id: supergroup_id,
            supergroup_full_info: supergroup_full_info,
            tdlib_type: "updateSupergroupFullInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A service notification from the server was received. Upon receiving
 * this the application must show a popup with the content of the
 * notification
 */
public class TDLib.UpdateServiceNotification : Update {

    /**
     * Notification type. If type begins with "AUTH_KEY_DROP_", then two
     * buttons "Cancel" and "Log out" must be shown under notification; if
     * user presses the second, all local data must be destroyed using
     * Destroy method
     */
    public string type_ { get; construct set; }

    /**
     * Notification content
     */
    public MessageContent content { get; construct set; }

    public UpdateServiceNotification (
        string type_,
        MessageContent content
    ) {
        Object (
            type_: type_,
            content: content,
            tdlib_type: "updateServiceNotification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Information about a file was updated
 */
public class TDLib.UpdateFile : Update {

    /**
     * New data about the file
     */
    public File file { get; construct set; }

    public UpdateFile (
        File file
    ) {
        Object (
            file: file,
            tdlib_type: "updateFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file generation process needs to be started by the application.
 * Use {@link Client.set_file_generation_progress} and
 * {@link Client.finish_file_generation} to generate the file
 */
public class TDLib.UpdateFileGenerationStart : Update {

    /**
     * Unique identifier for the generation process
     */
    public int64 generation_id { get; construct set; }

    /**
     * The original path specified by the application in inputFileGenerated
     */
    public string original_path { get; construct set; }

    /**
     * The path to a file that must be created and where the new file must be
     * generated by the application.
     * If the application has no access to the path, it can use
     * {@link Client.write_generated_file_part} to generate the file
     */
    public string destination_path { get; construct set; }

    /**
     * If the conversion is "#url#" than original_path contains an HTTP/HTTPS
     * URL of a file that must be downloaded by the application.
     * Otherwise, this is the conversion specified by the application in
     * inputFileGenerated
     */
    public string conversion { get; construct set; }

    public UpdateFileGenerationStart (
        int64 generation_id,
        string original_path,
        string destination_path,
        string conversion
    ) {
        Object (
            generation_id: generation_id,
            original_path: original_path,
            destination_path: destination_path,
            conversion: conversion,
            tdlib_type: "updateFileGenerationStart",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * File generation is no longer needed
 */
public class TDLib.UpdateFileGenerationStop : Update {

    /**
     * Unique identifier for the generation process
     */
    public int64 generation_id { get; construct set; }

    public UpdateFileGenerationStop (
        int64 generation_id
    ) {
        Object (
            generation_id: generation_id,
            tdlib_type: "updateFileGenerationStop",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The state of the file download list has changed
 */
public class TDLib.UpdateFileDownloads : Update {

    /**
     * Total size of files in the file download list, in bytes
     */
    public int64 total_size { get; construct set; }

    /**
     * Total number of files in the file download list
     */
    public int32 total_count { get; construct set; }

    /**
     * Total downloaded size of files in the file download list, in bytes
     */
    public int64 downloaded_size { get; construct set; }

    public UpdateFileDownloads (
        int64 total_size,
        int32 total_count,
        int64 downloaded_size
    ) {
        Object (
            total_size: total_size,
            total_count: total_count,
            downloaded_size: downloaded_size,
            tdlib_type: "updateFileDownloads",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A file was added to the file download list. This update is sent only
 * after file download list is loaded for the first time
 */
public class TDLib.UpdateFileAddedToDownloads : Update {

    /**
     * The added file download
     */
    public FileDownload file_download { get; construct set; }

    /**
     * New number of being downloaded and recently downloaded files found
     */
    public DownloadedFileCounts counts { get; construct set; }

    public UpdateFileAddedToDownloads (
        FileDownload file_download,
        DownloadedFileCounts counts
    ) {
        Object (
            file_download: file_download,
            counts: counts,
            tdlib_type: "updateFileAddedToDownloads",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A file download was changed. This update is sent only after file
 * download list is loaded for the first time
 */
public class TDLib.UpdateFileDownload : Update {

    /**
     * File identifier
     */
    public int32 file_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the file downloading was
     * completed; 0 if the file downloading isn't completed
     */
    public int32 complete_date { get; construct set; }

    /**
     * True, if downloading of the file is paused
     */
    public bool is_paused { get; construct set; }

    /**
     * New number of being downloaded and recently downloaded files found
     */
    public DownloadedFileCounts counts { get; construct set; }

    public UpdateFileDownload (
        int32 file_id,
        int32 complete_date,
        bool is_paused,
        DownloadedFileCounts counts
    ) {
        Object (
            file_id: file_id,
            complete_date: complete_date,
            is_paused: is_paused,
            counts: counts,
            tdlib_type: "updateFileDownload",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A file was removed from the file download list. This update is sent
 * only after file download list is loaded for the first time
 */
public class TDLib.UpdateFileRemovedFromDownloads : Update {

    /**
     * File identifier
     */
    public int32 file_id { get; construct set; }

    /**
     * New number of being downloaded and recently downloaded files found
     */
    public DownloadedFileCounts counts { get; construct set; }

    public UpdateFileRemovedFromDownloads (
        int32 file_id,
        DownloadedFileCounts counts
    ) {
        Object (
            file_id: file_id,
            counts: counts,
            tdlib_type: "updateFileRemovedFromDownloads",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A request can't be completed unless application verification is
 * performed; for official mobile applications only.
 * The method {@link Client.set_application_verification_token} must be
 * called once the verification is completed or failed
 */
public class TDLib.UpdateApplicationVerificationRequired : Update {

    /**
     * Unique identifier for the verification process
     */
    public int64 verification_id { get; construct set; }

    /**
     * Unique base64url-encoded nonce for the classic Play Integrity
     * verification
     * ([[https://developer.android.com/google/play/integrity/classic]]) for
     * Android,
     * or a unique string to compare with verify_nonce field from a push
     * notification for iOS
     */
    public string nonce { get; construct set; }

    /**
     * Cloud project number to pass to the Play Integrity API on Android
     */
    public int64 cloud_project_number { get; construct set; }

    public UpdateApplicationVerificationRequired (
        int64 verification_id,
        string nonce,
        int64 cloud_project_number
    ) {
        Object (
            verification_id: verification_id,
            nonce: nonce,
            cloud_project_number: cloud_project_number,
            tdlib_type: "updateApplicationVerificationRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A request can't be completed unless reCAPTCHA verification is
 * performed; for official mobile applications only.
 * The method {@link Client.set_application_verification_token} must be
 * called once the verification is completed or failed
 */
public class TDLib.UpdateApplicationRecaptchaVerificationRequired : Update {

    /**
     * Unique identifier for the verification process
     */
    public int64 verification_id { get; construct set; }

    /**
     * The action for the check
     */
    public string action { get; construct set; }

    /**
     * Identifier of the reCAPTCHA key
     */
    public string recaptcha_key_id { get; construct set; }

    public UpdateApplicationRecaptchaVerificationRequired (
        int64 verification_id,
        string action,
        string recaptcha_key_id
    ) {
        Object (
            verification_id: verification_id,
            action: action,
            recaptcha_key_id: recaptcha_key_id,
            tdlib_type: "updateApplicationRecaptchaVerificationRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * New call was created or information about a call was updated
 */
public class TDLib.UpdateCall : Update {

    /**
     * New data about a call
     */
    public Call call { get; construct set; }

    public UpdateCall (
        Call call
    ) {
        Object (
            call: call,
            tdlib_type: "updateCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Information about a group call was updated
 */
public class TDLib.UpdateGroupCall : Update {

    /**
     * New data about the group call
     */
    public GroupCall group_call { get; construct set; }

    public UpdateGroupCall (
        GroupCall group_call
    ) {
        Object (
            group_call: group_call,
            tdlib_type: "updateGroupCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Information about a group call participant was changed. The updates
 * are sent only after the group call is received through
 * {@link Client.get_group_call} and only if the call is joined or being
 * joined
 */
public class TDLib.UpdateGroupCallParticipant : Update {

    /**
     * Identifier of the group call
     */
    public int32 group_call_id { get; construct set; }

    /**
     * New data about the participant
     */
    public GroupCallParticipant participant { get; construct set; }

    public UpdateGroupCallParticipant (
        int32 group_call_id,
        GroupCallParticipant participant
    ) {
        Object (
            group_call_id: group_call_id,
            participant: participant,
            tdlib_type: "updateGroupCallParticipant",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of group call participants that can send and receive
 * encrypted call data has changed; for group calls not bound to a chat
 * only
 */
public class TDLib.UpdateGroupCallParticipants : Update {

    /**
     * Identifier of the group call
     */
    public int32 group_call_id { get; construct set; }

    /**
     * New list of group call participant user identifiers. The identifiers
     * may be invalid or the corresponding users may be unknown.
     * The participants must be shown in the list of group call participants
     * even if there is no information about them
     */
    public Gee.ArrayList<int64?> participant_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public UpdateGroupCallParticipants (
        int32 group_call_id,
        Gee.ArrayList<int64?> participant_user_ids
    ) {
        Object (
            group_call_id: group_call_id,
            participant_user_ids: participant_user_ids,
            tdlib_type: "updateGroupCallParticipants",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The verification state of an encrypted group call has changed; for
 * group calls not bound to a chat only
 */
public class TDLib.UpdateGroupCallVerificationState : Update {

    /**
     * Identifier of the group call
     */
    public int32 group_call_id { get; construct set; }

    /**
     * The call state generation to which the emoji corresponds. If
     * generation is different for two users, then their emoji may be also
     * different
     */
    public int32 generation { get; construct set; }

    /**
     * Group call state fingerprint represented as 4 emoji; may be empty if
     * the state isn't verified yet
     */
    public Gee.ArrayList<string?> emojis { get; construct set; default = new Gee.ArrayList<string?> (); }

    public UpdateGroupCallVerificationState (
        int32 group_call_id,
        int32 generation,
        Gee.ArrayList<string?> emojis
    ) {
        Object (
            group_call_id: group_call_id,
            generation: generation,
            emojis: emojis,
            tdlib_type: "updateGroupCallVerificationState",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new message was received in a group call
 */
public class TDLib.UpdateNewGroupCallMessage : Update {

    /**
     * Identifier of the group call
     */
    public int32 group_call_id { get; construct set; }

    /**
     * The message
     */
    public new GroupCallMessage message { get; construct set; }

    public UpdateNewGroupCallMessage (
        int32 group_call_id,
        GroupCallMessage message
    ) {
        Object (
            group_call_id: group_call_id,
            message: message,
            tdlib_type: "updateNewGroupCallMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new paid reaction was received in a live story group call
 */
public class TDLib.UpdateNewGroupCallPaidReaction : Update {

    /**
     * Identifier of the group call
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Identifier of the sender of the reaction
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * The number of Telegram Stars that were paid to send the reaction
     */
    public int64 star_count { get; construct set; }

    public UpdateNewGroupCallPaidReaction (
        int32 group_call_id,
        MessageSender sender_id,
        int64 star_count
    ) {
        Object (
            group_call_id: group_call_id,
            sender_id: sender_id,
            star_count: star_count,
            tdlib_type: "updateNewGroupCallPaidReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A group call message failed to send
 */
public class TDLib.UpdateGroupCallMessageSendFailed : Update {

    /**
     * Identifier of the group call
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Message identifier
     */
    public int32 message_id { get; construct set; }

    /**
     * The cause of the message sending failure
     */
    public Error error { get; construct set; }

    public UpdateGroupCallMessageSendFailed (
        int32 group_call_id,
        int32 message_id,
        Error error
    ) {
        Object (
            group_call_id: group_call_id,
            message_id: message_id,
            error: error,
            tdlib_type: "updateGroupCallMessageSendFailed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some group call messages were deleted
 */
public class TDLib.UpdateGroupCallMessagesDeleted : Update {

    /**
     * Identifier of the group call
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Identifiers of the deleted messages
     */
    public Gee.ArrayList<int32?> message_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public UpdateGroupCallMessagesDeleted (
        int32 group_call_id,
        Gee.ArrayList<int32?> message_ids
    ) {
        Object (
            group_call_id: group_call_id,
            message_ids: message_ids,
            tdlib_type: "updateGroupCallMessagesDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of top donors in live story group call has changed
 */
public class TDLib.UpdateLiveStoryTopDonors : Update {

    /**
     * Identifier of the group call
     */
    public int32 group_call_id { get; construct set; }

    /**
     * New list of live story donors
     */
    public LiveStoryDonors donors { get; construct set; }

    public UpdateLiveStoryTopDonors (
        int32 group_call_id,
        LiveStoryDonors donors
    ) {
        Object (
            group_call_id: group_call_id,
            donors: donors,
            tdlib_type: "updateLiveStoryTopDonors",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * New call signaling data arrived
 */
public class TDLib.UpdateNewCallSignalingData : Update {

    /**
     * The call identifier
     */
    public int32 call_id { get; construct set; }

    /**
     * The data
     */
    public Bytes data { get; construct set; }

    public UpdateNewCallSignalingData (
        int32 call_id,
        Bytes data
    ) {
        Object (
            call_id: call_id,
            data: data,
            tdlib_type: "updateNewCallSignalingData",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * State of a gift auction was updated
 */
public class TDLib.UpdateGiftAuctionState : Update {

    /**
     * New state of the auction
     */
    public GiftAuctionState state { get; construct set; }

    public UpdateGiftAuctionState (
        GiftAuctionState state
    ) {
        Object (
            state: state,
            tdlib_type: "updateGiftAuctionState",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of auctions in which participate the current user has changed
 */
public class TDLib.UpdateActiveGiftAuctions : Update {

    /**
     * New states of the auctions
     */
    public Gee.ArrayList<GiftAuctionState?> states { get; construct set; default = new Gee.ArrayList<GiftAuctionState?> (); }

    public UpdateActiveGiftAuctions (
        Gee.ArrayList<GiftAuctionState?> states
    ) {
        Object (
            states: states,
            tdlib_type: "updateActiveGiftAuctions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some privacy setting rules have been changed
 */
public class TDLib.UpdateUserPrivacySettingRules : Update {

    /**
     * The privacy setting
     */
    public UserPrivacySetting setting { get; construct set; }

    /**
     * New privacy rules
     */
    public UserPrivacySettingRules rules { get; construct set; }

    public UpdateUserPrivacySettingRules (
        UserPrivacySetting setting,
        UserPrivacySettingRules rules
    ) {
        Object (
            setting: setting,
            rules: rules,
            tdlib_type: "updateUserPrivacySettingRules",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Number of unread messages in a chat list has changed. This update is
 * sent only if the message database is used
 */
public class TDLib.UpdateUnreadMessageCount : Update {

    /**
     * The chat list with changed number of unread messages
     */
    public ChatList chat_list { get; construct set; }

    /**
     * Total number of unread messages
     */
    public int32 unread_count { get; construct set; }

    /**
     * Total number of unread messages in unmuted chats
     */
    public int32 unread_unmuted_count { get; construct set; }

    public UpdateUnreadMessageCount (
        ChatList chat_list,
        int32 unread_count,
        int32 unread_unmuted_count
    ) {
        Object (
            chat_list: chat_list,
            unread_count: unread_count,
            unread_unmuted_count: unread_unmuted_count,
            tdlib_type: "updateUnreadMessageCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Number of unread chats, i.e. with unread messages or marked as unread,
 * has changed. This update is sent only if the message database is used
 */
public class TDLib.UpdateUnreadChatCount : Update {

    /**
     * The chat list with changed number of unread messages
     */
    public ChatList chat_list { get; construct set; }

    /**
     * Approximate total number of chats in the chat list
     */
    public int32 total_count { get; construct set; }

    /**
     * Total number of unread chats
     */
    public int32 unread_count { get; construct set; }

    /**
     * Total number of unread unmuted chats
     */
    public int32 unread_unmuted_count { get; construct set; }

    /**
     * Total number of chats marked as unread
     */
    public int32 marked_as_unread_count { get; construct set; }

    /**
     * Total number of unmuted chats marked as unread
     */
    public int32 marked_as_unread_unmuted_count { get; construct set; }

    public UpdateUnreadChatCount (
        ChatList chat_list,
        int32 total_count,
        int32 unread_count,
        int32 unread_unmuted_count,
        int32 marked_as_unread_count,
        int32 marked_as_unread_unmuted_count
    ) {
        Object (
            chat_list: chat_list,
            total_count: total_count,
            unread_count: unread_count,
            unread_unmuted_count: unread_unmuted_count,
            marked_as_unread_count: marked_as_unread_count,
            marked_as_unread_unmuted_count: marked_as_unread_unmuted_count,
            tdlib_type: "updateUnreadChatCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A story was changed
 */
public class TDLib.UpdateStory : Update {

    /**
     * The new information about the story
     */
    public Story story { get; construct set; }

    public UpdateStory (
        Story story
    ) {
        Object (
            story: story,
            tdlib_type: "updateStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A story became inaccessible
 */
public class TDLib.UpdateStoryDeleted : Update {

    /**
     * Identifier of the chat that posted the story
     */
    public int64 story_poster_chat_id { get; construct set; }

    /**
     * Story identifier
     */
    public int32 story_id { get; construct set; }

    public UpdateStoryDeleted (
        int64 story_poster_chat_id,
        int32 story_id
    ) {
        Object (
            story_poster_chat_id: story_poster_chat_id,
            story_id: story_id,
            tdlib_type: "updateStoryDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A story has been successfully posted
 */
public class TDLib.UpdateStoryPostSucceeded : Update {

    /**
     * The posted story
     */
    public Story story { get; construct set; }

    /**
     * The previous temporary story identifier
     */
    public int32 old_story_id { get; construct set; }

    public UpdateStoryPostSucceeded (
        Story story,
        int32 old_story_id
    ) {
        Object (
            story: story,
            old_story_id: old_story_id,
            tdlib_type: "updateStoryPostSucceeded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A story failed to post. If the story posting is canceled, then
 * updateStoryDeleted will be received instead of this update
 */
public class TDLib.UpdateStoryPostFailed : Update {

    /**
     * The failed to post story
     */
    public Story story { get; construct set; }

    /**
     * The cause of the story posting failure
     */
    public Error error { get; construct set; }

    /**
     * Type of the error; may be null if unknown
     */
    public CanPostStoryResult? error_type { get; construct set; }

    public UpdateStoryPostFailed (
        Story story,
        Error error,
        CanPostStoryResult? error_type
    ) {
        Object (
            story: story,
            error: error,
            error_type: error_type,
            tdlib_type: "updateStoryPostFailed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of active stories posted by a specific chat has changed
 */
public class TDLib.UpdateChatActiveStories : Update {

    /**
     * The new list of active stories
     */
    public ChatActiveStories active_stories { get; construct set; }

    public UpdateChatActiveStories (
        ChatActiveStories active_stories
    ) {
        Object (
            active_stories: active_stories,
            tdlib_type: "updateChatActiveStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Number of chats in a story list has changed
 */
public class TDLib.UpdateStoryListChatCount : Update {

    /**
     * The story list
     */
    public StoryList story_list { get; construct set; }

    /**
     * Approximate total number of chats with active stories in the list
     */
    public int32 chat_count { get; construct set; }

    public UpdateStoryListChatCount (
        StoryList story_list,
        int32 chat_count
    ) {
        Object (
            story_list: story_list,
            chat_count: chat_count,
            tdlib_type: "updateStoryListChatCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Story stealth mode settings have changed
 */
public class TDLib.UpdateStoryStealthMode : Update {

    /**
     * Point in time (Unix timestamp) until stealth mode is active; 0 if it
     * is disabled
     */
    public int32 active_until_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when stealth mode can be enabled again;
     * 0 if there is no active cooldown
     */
    public int32 cooldown_until_date { get; construct set; }

    public UpdateStoryStealthMode (
        int32 active_until_date,
        int32 cooldown_until_date
    ) {
        Object (
            active_until_date: active_until_date,
            cooldown_until_date: cooldown_until_date,
            tdlib_type: "updateStoryStealthMode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Lists of bots which Mini Apps must be allowed to read text from
 * clipboard and must be opened without a warning
 */
public class TDLib.UpdateTrustedMiniAppBots : Update {

    /**
     * List of user identifiers of the bots; the corresponding users may not
     * be sent using updateUser updates and may not be accessible
     */
    public Gee.ArrayList<int64?> bot_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public UpdateTrustedMiniAppBots (
        Gee.ArrayList<int64?> bot_user_ids
    ) {
        Object (
            bot_user_ids: bot_user_ids,
            tdlib_type: "updateTrustedMiniAppBots",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An option changed its value
 */
public class TDLib.UpdateOption : Update {

    /**
     * The option name
     */
    public string name { get; construct set; }

    /**
     * The new option value
     */
    public OptionValue value { get; construct set; }

    public UpdateOption (
        string name,
        OptionValue value
    ) {
        Object (
            name: name,
            value: value,
            tdlib_type: "updateOption",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A sticker set has changed
 */
public class TDLib.UpdateStickerSet : Update {

    /**
     * The sticker set
     */
    public StickerSet sticker_set { get; construct set; }

    public UpdateStickerSet (
        StickerSet sticker_set
    ) {
        Object (
            sticker_set: sticker_set,
            tdlib_type: "updateStickerSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of installed sticker sets was updated
 */
public class TDLib.UpdateInstalledStickerSets : Update {

    /**
     * Type of the affected stickers
     */
    public StickerType sticker_type { get; construct set; }

    /**
     * The new list of installed ordinary sticker sets
     */
    public Gee.ArrayList<int64?> sticker_set_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public UpdateInstalledStickerSets (
        StickerType sticker_type,
        Gee.ArrayList<int64?> sticker_set_ids
    ) {
        Object (
            sticker_type: sticker_type,
            sticker_set_ids: sticker_set_ids,
            tdlib_type: "updateInstalledStickerSets",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of trending sticker sets was updated or some of them were
 * viewed
 */
public class TDLib.UpdateTrendingStickerSets : Update {

    /**
     * Type of the affected stickers
     */
    public StickerType sticker_type { get; construct set; }

    /**
     * The prefix of the list of trending sticker sets with the newest
     * trending sticker sets
     */
    public TrendingStickerSets sticker_sets { get; construct set; }

    public UpdateTrendingStickerSets (
        StickerType sticker_type,
        TrendingStickerSets sticker_sets
    ) {
        Object (
            sticker_type: sticker_type,
            sticker_sets: sticker_sets,
            tdlib_type: "updateTrendingStickerSets",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of recently used stickers was updated
 */
public class TDLib.UpdateRecentStickers : Update {

    /**
     * True, if the list of stickers attached to photo or video files was
     * updated; otherwise, the list of sent stickers is updated
     */
    public bool is_attached { get; construct set; }

    /**
     * The new list of file identifiers of recently used stickers
     */
    public Gee.ArrayList<int32?> sticker_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public UpdateRecentStickers (
        bool is_attached,
        Gee.ArrayList<int32?> sticker_ids
    ) {
        Object (
            is_attached: is_attached,
            sticker_ids: sticker_ids,
            tdlib_type: "updateRecentStickers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of favorite stickers was updated
 */
public class TDLib.UpdateFavoriteStickers : Update {

    /**
     * The new list of file identifiers of favorite stickers
     */
    public Gee.ArrayList<int32?> sticker_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public UpdateFavoriteStickers (
        Gee.ArrayList<int32?> sticker_ids
    ) {
        Object (
            sticker_ids: sticker_ids,
            tdlib_type: "updateFavoriteStickers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of saved animations was updated
 */
public class TDLib.UpdateSavedAnimations : Update {

    /**
     * The new list of file identifiers of saved animations
     */
    public Gee.ArrayList<int32?> animation_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public UpdateSavedAnimations (
        Gee.ArrayList<int32?> animation_ids
    ) {
        Object (
            animation_ids: animation_ids,
            tdlib_type: "updateSavedAnimations",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of saved notification sounds was updated. This update may not
 * be sent until information about a notification sound was requested for
 * the first time
 */
public class TDLib.UpdateSavedNotificationSounds : Update {

    /**
     * The new list of identifiers of saved notification sounds
     */
    public Gee.ArrayList<int64?> notification_sound_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public UpdateSavedNotificationSounds (
        Gee.ArrayList<int64?> notification_sound_ids
    ) {
        Object (
            notification_sound_ids: notification_sound_ids,
            tdlib_type: "updateSavedNotificationSounds",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The default background has changed
 */
public class TDLib.UpdateDefaultBackground : Update {

    /**
     * True, if default background for dark theme has changed
     */
    public bool for_dark_theme { get; construct set; }

    /**
     * The new default background; may be null
     */
    public Background? background { get; construct set; }

    public UpdateDefaultBackground (
        bool for_dark_theme,
        Background? background
    ) {
        Object (
            for_dark_theme: for_dark_theme,
            background: background,
            tdlib_type: "updateDefaultBackground",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of available emoji chat themes has changed
 */
public class TDLib.UpdateEmojiChatThemes : Update {

    /**
     * The new list of emoji chat themes
     */
    public Gee.ArrayList<EmojiChatTheme?> chat_themes { get; construct set; default = new Gee.ArrayList<EmojiChatTheme?> (); }

    public UpdateEmojiChatThemes (
        Gee.ArrayList<EmojiChatTheme?> chat_themes
    ) {
        Object (
            chat_themes: chat_themes,
            tdlib_type: "updateEmojiChatThemes",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of supported accent colors has changed
 */
public class TDLib.UpdateAccentColors : Update {

    /**
     * Information about supported colors; colors with identifiers 0 (red), 1
     * (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6 (pink)
     * must always be supported
     * and aren't included in the list. The exact colors for the accent
     * colors with identifiers 0-6 must be taken from the app theme
     */
    public Gee.ArrayList<AccentColor?> colors { get; construct set; default = new Gee.ArrayList<AccentColor?> (); }

    /**
     * The list of accent color identifiers, which can be set through
     * {@link Client.set_accent_color} and
     * {@link Client.set_chat_accent_color} The colors must be shown in the
     * specified order
     */
    public Gee.ArrayList<int32?> available_accent_color_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public UpdateAccentColors (
        Gee.ArrayList<AccentColor?> colors,
        Gee.ArrayList<int32?> available_accent_color_ids
    ) {
        Object (
            colors: colors,
            available_accent_color_ids: available_accent_color_ids,
            tdlib_type: "updateAccentColors",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of supported accent colors for user profiles has changed
 */
public class TDLib.UpdateProfileAccentColors : Update {

    /**
     * Information about supported colors
     */
    public Gee.ArrayList<ProfileAccentColor?> colors { get; construct set; default = new Gee.ArrayList<ProfileAccentColor?> (); }

    /**
     * The list of accent color identifiers, which can be set through
     * {@link Client.set_profile_accent_color} and
     * {@link Client.set_chat_profile_accent_color} The colors must be shown
     * in the specified order
     */
    public Gee.ArrayList<int32?> available_accent_color_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public UpdateProfileAccentColors (
        Gee.ArrayList<ProfileAccentColor?> colors,
        Gee.ArrayList<int32?> available_accent_color_ids
    ) {
        Object (
            colors: colors,
            available_accent_color_ids: available_accent_color_ids,
            tdlib_type: "updateProfileAccentColors",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some language pack strings have been updated
 */
public class TDLib.UpdateLanguagePackStrings : Update {

    /**
     * Localization target to which the language pack belongs
     */
    public string localization_target { get; construct set; }

    /**
     * Identifier of the updated language pack
     */
    public string language_pack_id { get; construct set; }

    /**
     * List of changed language pack strings; empty if all strings have
     * changed
     */
    public Gee.ArrayList<LanguagePackString?> strings { get; construct set; default = new Gee.ArrayList<LanguagePackString?> (); }

    public UpdateLanguagePackStrings (
        string localization_target,
        string language_pack_id,
        Gee.ArrayList<LanguagePackString?> strings
    ) {
        Object (
            localization_target: localization_target,
            language_pack_id: language_pack_id,
            strings: strings,
            tdlib_type: "updateLanguagePackStrings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The connection state has changed. This update must be used only to
 * show a human-readable  of the connection state
 */
public class TDLib.UpdateConnectionState : Update {

    /**
     * The new connection state
     */
    public ConnectionState state { get; construct set; }

    public UpdateConnectionState (
        ConnectionState state
    ) {
        Object (
            state: state,
            tdlib_type: "updateConnectionState",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The freeze state of the current user's account has changed
 */
public class TDLib.UpdateFreezeState : Update {

    /**
     * True, if the account is frozen
     */
    public bool is_frozen { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the account was frozen; 0 if the
     * account isn't frozen
     */
    public int32 freezing_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the account will be deleted and
     * can't be unfrozen; 0 if the account isn't frozen
     */
    public int32 deletion_date { get; construct set; }

    /**
     * The link to open to send an appeal to unfreeze the account
     */
    public string appeal_link { get; construct set; }

    public UpdateFreezeState (
        bool is_frozen,
        int32 freezing_date,
        int32 deletion_date,
        string appeal_link
    ) {
        Object (
            is_frozen: is_frozen,
            freezing_date: freezing_date,
            deletion_date: deletion_date,
            appeal_link: appeal_link,
            tdlib_type: "updateFreezeState",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The parameters for age verification of the current user's account has
 * changed
 */
public class TDLib.UpdateAgeVerificationParameters : Update {

    /**
     * Parameters for the age verification; may be null if age verification
     * isn't needed
     */
    public AgeVerificationParameters? parameters { get; construct set; }

    public UpdateAgeVerificationParameters (
        AgeVerificationParameters? parameters
    ) {
        Object (
            parameters: parameters,
            tdlib_type: "updateAgeVerificationParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * New terms of service must be accepted by the user. If the terms of
 * service are declined, then the {@link Client.delete_account} method
 * must be called with the reason "Decline ToS update"
 */
public class TDLib.UpdateTermsOfService : Update {

    /**
     * Identifier of the terms of service
     */
    public string terms_of_service_id { get; construct set; }

    /**
     * The new terms of service
     */
    public TermsOfService terms_of_service { get; construct set; }

    public UpdateTermsOfService (
        string terms_of_service_id,
        TermsOfService terms_of_service
    ) {
        Object (
            terms_of_service_id: terms_of_service_id,
            terms_of_service: terms_of_service,
            tdlib_type: "updateTermsOfService",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The first unconfirmed session has changed
 */
public class TDLib.UpdateUnconfirmedSession : Update {

    /**
     * The unconfirmed session; may be null if none
     */
    public UnconfirmedSession? session { get; construct set; }

    public UpdateUnconfirmedSession (
        UnconfirmedSession? session
    ) {
        Object (
            session: session,
            tdlib_type: "updateUnconfirmedSession",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of bots added to attachment or side menu has changed
 */
public class TDLib.UpdateAttachmentMenuBots : Update {

    /**
     * The new list of bots. The bots must not be shown on scheduled messages
     * screen
     */
    public Gee.ArrayList<AttachmentMenuBot?> bots { get; construct set; default = new Gee.ArrayList<AttachmentMenuBot?> (); }

    public UpdateAttachmentMenuBots (
        Gee.ArrayList<AttachmentMenuBot?> bots
    ) {
        Object (
            bots: bots,
            tdlib_type: "updateAttachmentMenuBots",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message was sent by an opened Web App, so the Web App needs to be
 * closed
 */
public class TDLib.UpdateWebAppMessageSent : Update {

    /**
     * Identifier of Web App launch
     */
    public int64 web_app_launch_id { get; construct set; }

    public UpdateWebAppMessageSent (
        int64 web_app_launch_id
    ) {
        Object (
            web_app_launch_id: web_app_launch_id,
            tdlib_type: "updateWebAppMessageSent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of active emoji reactions has changed
 */
public class TDLib.UpdateActiveEmojiReactions : Update {

    /**
     * The new list of active emoji reactions
     */
    public Gee.ArrayList<string?> emojis { get; construct set; default = new Gee.ArrayList<string?> (); }

    public UpdateActiveEmojiReactions (
        Gee.ArrayList<string?> emojis
    ) {
        Object (
            emojis: emojis,
            tdlib_type: "updateActiveEmojiReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of available message effects has changed
 */
public class TDLib.UpdateAvailableMessageEffects : Update {

    /**
     * The new list of available message effects from emoji reactions
     */
    public Gee.ArrayList<int64?> reaction_effect_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * The new list of available message effects from Premium stickers
     */
    public Gee.ArrayList<int64?> sticker_effect_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public UpdateAvailableMessageEffects (
        Gee.ArrayList<int64?> reaction_effect_ids,
        Gee.ArrayList<int64?> sticker_effect_ids
    ) {
        Object (
            reaction_effect_ids: reaction_effect_ids,
            sticker_effect_ids: sticker_effect_ids,
            tdlib_type: "updateAvailableMessageEffects",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The type of default reaction has changed
 */
public class TDLib.UpdateDefaultReactionType : Update {

    /**
     * The new type of the default reaction
     */
    public ReactionType reaction_type { get; construct set; }

    public UpdateDefaultReactionType (
        ReactionType reaction_type
    ) {
        Object (
            reaction_type: reaction_type,
            tdlib_type: "updateDefaultReactionType",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The type of default paid reaction has changed
 */
public class TDLib.UpdateDefaultPaidReactionType : Update {

    /**
     * The new type of the default paid reaction
     */
    public PaidReactionType type_ { get; construct set; }

    public UpdateDefaultPaidReactionType (
        PaidReactionType type_
    ) {
        Object (
            type_: type_,
            tdlib_type: "updateDefaultPaidReactionType",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Tags used in Saved Messages or a Saved Messages topic have changed
 */
public class TDLib.UpdateSavedMessagesTags : Update {

    /**
     * Identifier of Saved Messages topic which tags were changed; 0 if tags
     * for the whole chat has changed
     */
    public int64 saved_messages_topic_id { get; construct set; }

    /**
     * The new tags
     */
    public SavedMessagesTags tags { get; construct set; }

    public UpdateSavedMessagesTags (
        int64 saved_messages_topic_id,
        SavedMessagesTags tags
    ) {
        Object (
            saved_messages_topic_id: saved_messages_topic_id,
            tags: tags,
            tdlib_type: "updateSavedMessagesTags",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of messages with active live location that need to be updated
 * by the application has changed. The list is persistent across
 * application restarts only if the message database is used
 */
public class TDLib.UpdateActiveLiveLocationMessages : Update {

    /**
     * The list of messages with active live locations
     */
    public Gee.ArrayList<Message?> messages { get; construct set; default = new Gee.ArrayList<Message?> (); }

    public UpdateActiveLiveLocationMessages (
        Gee.ArrayList<Message?> messages
    ) {
        Object (
            messages: messages,
            tdlib_type: "updateActiveLiveLocationMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The number of Telegram Stars owned by the current user has changed
 */
public class TDLib.UpdateOwnedStarCount : Update {

    /**
     * The new amount of owned Telegram Stars
     */
    public StarAmount star_amount { get; construct set; }

    public UpdateOwnedStarCount (
        StarAmount star_amount
    ) {
        Object (
            star_amount: star_amount,
            tdlib_type: "updateOwnedStarCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The number of Toncoins owned by the current user has changed
 */
public class TDLib.UpdateOwnedTonCount : Update {

    /**
     * The new amount of owned Toncoins; in the smallest units of the
     * cryptocurrency
     */
    public int64 ton_amount { get; construct set; }

    public UpdateOwnedTonCount (
        int64 ton_amount
    ) {
        Object (
            ton_amount: ton_amount,
            tdlib_type: "updateOwnedTonCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The revenue earned from sponsored messages in a chat has changed. If
 * chat revenue screen is opened, then
 * {@link Client.get_chat_revenue_transactions} may be called to fetch
 * new transactions
 */
public class TDLib.UpdateChatRevenueAmount : Update {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * New amount of earned revenue
     */
    public ChatRevenueAmount revenue_amount { get; construct set; }

    public UpdateChatRevenueAmount (
        int64 chat_id,
        ChatRevenueAmount revenue_amount
    ) {
        Object (
            chat_id: chat_id,
            revenue_amount: revenue_amount,
            tdlib_type: "updateChatRevenueAmount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The Telegram Star revenue earned by a user or a chat has changed. If
 * Telegram Star transaction screen of the chat is opened, then
 * {@link Client.get_star_transactions} may be called to fetch new
 * transactions
 */
public class TDLib.UpdateStarRevenueStatus : Update {

    /**
     * Identifier of the owner of the Telegram Stars
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * New Telegram Star revenue status
     */
    public StarRevenueStatus status { get; construct set; }

    public UpdateStarRevenueStatus (
        MessageSender owner_id,
        StarRevenueStatus status
    ) {
        Object (
            owner_id: owner_id,
            status: status,
            tdlib_type: "updateStarRevenueStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The Toncoin revenue earned by the current user has changed. If Toncoin
 * transaction screen of the chat is opened, then
 * {@link Client.get_ton_transactions} may be called to fetch new
 * transactions
 */
public class TDLib.UpdateTonRevenueStatus : Update {

    /**
     * New Toncoin revenue status
     */
    public TonRevenueStatus status { get; construct set; }

    public UpdateTonRevenueStatus (
        TonRevenueStatus status
    ) {
        Object (
            status: status,
            tdlib_type: "updateTonRevenueStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The parameters of speech recognition without Telegram Premium
 * subscription has changed
 */
public class TDLib.UpdateSpeechRecognitionTrial : Update {

    /**
     * The maximum allowed duration of media for speech recognition without
     * Telegram Premium subscription, in seconds
     */
    public int32 max_media_duration { get; construct set; }

    /**
     * The total number of allowed speech recognitions per week; 0 if none
     */
    public int32 weekly_count { get; construct set; }

    /**
     * Number of left speech recognition attempts this week
     */
    public int32 left_count { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the weekly number of tries will
     * reset; 0 if unknown
     */
    public int32 next_reset_date { get; construct set; }

    public UpdateSpeechRecognitionTrial (
        int32 max_media_duration,
        int32 weekly_count,
        int32 left_count,
        int32 next_reset_date
    ) {
        Object (
            max_media_duration: max_media_duration,
            weekly_count: weekly_count,
            left_count: left_count,
            next_reset_date: next_reset_date,
            tdlib_type: "updateSpeechRecognitionTrial",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The levels of live story group call messages have changed
 */
public class TDLib.UpdateGroupCallMessageLevels : Update {

    /**
     * New description of the levels in decreasing order of
     * groupCallMessageLevel.min_star_count
     */
    public Gee.ArrayList<GroupCallMessageLevel?> levels { get; construct set; default = new Gee.ArrayList<GroupCallMessageLevel?> (); }

    public UpdateGroupCallMessageLevels (
        Gee.ArrayList<GroupCallMessageLevel?> levels
    ) {
        Object (
            levels: levels,
            tdlib_type: "updateGroupCallMessageLevels",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of supported dice emojis has changed
 */
public class TDLib.UpdateDiceEmojis : Update {

    /**
     * The new list of supported dice emojis
     */
    public Gee.ArrayList<string?> emojis { get; construct set; default = new Gee.ArrayList<string?> (); }

    public UpdateDiceEmojis (
        Gee.ArrayList<string?> emojis
    ) {
        Object (
            emojis: emojis,
            tdlib_type: "updateDiceEmojis",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Some animated emoji message was clicked and a big animated sticker
 * must be played if the message is visible on the screen.
 * chatActionWatchingAnimations with the text of the message needs to be
 * sent if the sticker is played
 */
public class TDLib.UpdateAnimatedEmojiMessageClicked : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * The animated sticker to be played
     */
    public Sticker sticker { get; construct set; }

    public UpdateAnimatedEmojiMessageClicked (
        int64 chat_id,
        int64 message_id,
        Sticker sticker
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            sticker: sticker,
            tdlib_type: "updateAnimatedEmojiMessageClicked",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The parameters of animation search through
 * getOption("animation_search_bot_username") bot has changed
 */
public class TDLib.UpdateAnimationSearchParameters : Update {

    /**
     * Name of the animation search provider
     */
    public string provider { get; construct set; }

    /**
     * The new list of emojis suggested for searching
     */
    public Gee.ArrayList<string?> emojis { get; construct set; default = new Gee.ArrayList<string?> (); }

    public UpdateAnimationSearchParameters (
        string provider,
        Gee.ArrayList<string?> emojis
    ) {
        Object (
            provider: provider,
            emojis: emojis,
            tdlib_type: "updateAnimationSearchParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of suggested to the user actions has changed
 */
public class TDLib.UpdateSuggestedActions : Update {

    /**
     * Added suggested actions
     */
    public Gee.ArrayList<SuggestedAction?> added_actions { get; construct set; default = new Gee.ArrayList<SuggestedAction?> (); }

    /**
     * Removed suggested actions
     */
    public Gee.ArrayList<SuggestedAction?> removed_actions { get; construct set; default = new Gee.ArrayList<SuggestedAction?> (); }

    public UpdateSuggestedActions (
        Gee.ArrayList<SuggestedAction?> added_actions,
        Gee.ArrayList<SuggestedAction?> removed_actions
    ) {
        Object (
            added_actions: added_actions,
            removed_actions: removed_actions,
            tdlib_type: "updateSuggestedActions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Download or upload file speed for the user was limited, but it can be
 * restored by subscription to Telegram Premium. The notification can be
 * postponed until a being downloaded or uploaded file is visible to the
 * user.
 * Use getOption("premium_download_speedup") or
 * getOption("premium_upload_speedup") to get expected speedup after
 * subscription to Telegram Premium
 */
public class TDLib.UpdateSpeedLimitNotification : Update {

    /**
     * True, if upload speed was limited; false, if download speed was
     * limited
     */
    public bool is_upload { get; construct set; }

    public UpdateSpeedLimitNotification (
        bool is_upload
    ) {
        Object (
            is_upload: is_upload,
            tdlib_type: "updateSpeedLimitNotification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of contacts that had birthdays recently or will have birthday
 * soon has changed
 */
public class TDLib.UpdateContactCloseBirthdays : Update {

    /**
     * List of contact users with {@link Client.close} birthday
     */
    public Gee.ArrayList<CloseBirthdayUser?> close_birthday_users { get; construct set; default = new Gee.ArrayList<CloseBirthdayUser?> (); }

    public UpdateContactCloseBirthdays (
        Gee.ArrayList<CloseBirthdayUser?> close_birthday_users
    ) {
        Object (
            close_birthday_users: close_birthday_users,
            tdlib_type: "updateContactCloseBirthdays",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Autosave settings for some type of chats were updated
 */
public class TDLib.UpdateAutosaveSettings : Update {

    /**
     * Type of chats for which autosave settings were updated
     */
    public AutosaveSettingsScope scope { get; construct set; }

    /**
     * The new autosave settings; may be null if the settings are reset to
     * default
     */
    public ScopeAutosaveSettings? settings { get; construct set; }

    public UpdateAutosaveSettings (
        AutosaveSettingsScope scope,
        ScopeAutosaveSettings? settings
    ) {
        Object (
            scope: scope,
            settings: settings,
            tdlib_type: "updateAutosaveSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A business connection has changed; for bots only
 */
public class TDLib.UpdateBusinessConnection : Update {

    /**
     * New data about the connection
     */
    public BusinessConnection connection { get; construct set; }

    public UpdateBusinessConnection (
        BusinessConnection connection
    ) {
        Object (
            connection: connection,
            tdlib_type: "updateBusinessConnection",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new message was added to a business account; for bots only
 */
public class TDLib.UpdateNewBusinessMessage : Update {

    /**
     * Unique identifier of the business connection
     */
    public string connection_id { get; construct set; }

    /**
     * The new message
     */
    public new BusinessMessage message { get; construct set; }

    public UpdateNewBusinessMessage (
        string connection_id,
        BusinessMessage message
    ) {
        Object (
            connection_id: connection_id,
            message: message,
            tdlib_type: "updateNewBusinessMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message in a business account was edited; for bots only
 */
public class TDLib.UpdateBusinessMessageEdited : Update {

    /**
     * Unique identifier of the business connection
     */
    public string connection_id { get; construct set; }

    /**
     * The edited message
     */
    public new BusinessMessage message { get; construct set; }

    public UpdateBusinessMessageEdited (
        string connection_id,
        BusinessMessage message
    ) {
        Object (
            connection_id: connection_id,
            message: message,
            tdlib_type: "updateBusinessMessageEdited",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Messages in a business account were deleted; for bots only
 */
public class TDLib.UpdateBusinessMessagesDeleted : Update {

    /**
     * Unique identifier of the business connection
     */
    public string connection_id { get; construct set; }

    /**
     * Identifier of a chat in the business account in which messages were
     * deleted
     */
    public int64 chat_id { get; construct set; }

    /**
     * Unique message identifiers of the deleted messages
     */
    public Gee.ArrayList<int64?> message_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public UpdateBusinessMessagesDeleted (
        string connection_id,
        int64 chat_id,
        Gee.ArrayList<int64?> message_ids
    ) {
        Object (
            connection_id: connection_id,
            chat_id: chat_id,
            message_ids: message_ids,
            tdlib_type: "updateBusinessMessagesDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new incoming inline query; for bots only
 */
public class TDLib.UpdateNewInlineQuery : Update {

    /**
     * Unique query identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Identifier of the user who sent the query
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * User location; may be null
     */
    public Location? user_location { get; construct set; }

    /**
     * The type of the chat from which the query originated; may be null if
     * unknown
     */
    public ChatType? chat_type { get; construct set; }

    /**
     * Text of the query
     */
    public string query { get; construct set; }

    /**
     * Offset of the first entry to return
     */
    public string offset { get; construct set; }

    public UpdateNewInlineQuery (
        int64 id_,
        int64 sender_user_id,
        Location? user_location,
        ChatType? chat_type,
        string query,
        string offset
    ) {
        Object (
            id_: id_,
            sender_user_id: sender_user_id,
            user_location: user_location,
            chat_type: chat_type,
            query: query,
            offset: offset,
            tdlib_type: "updateNewInlineQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user has chosen a result of an inline query; for bots only
 */
public class TDLib.UpdateNewChosenInlineResult : Update {

    /**
     * Identifier of the user who sent the query
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * User location; may be null
     */
    public Location? user_location { get; construct set; }

    /**
     * Text of the query
     */
    public string query { get; construct set; }

    /**
     * Identifier of the chosen result
     */
    public string result_id { get; construct set; }

    /**
     * Identifier of the sent inline message, if known
     */
    public string inline_message_id { get; construct set; }

    public UpdateNewChosenInlineResult (
        int64 sender_user_id,
        Location? user_location,
        string query,
        string result_id,
        string inline_message_id
    ) {
        Object (
            sender_user_id: sender_user_id,
            user_location: user_location,
            query: query,
            result_id: result_id,
            inline_message_id: inline_message_id,
            tdlib_type: "updateNewChosenInlineResult",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new incoming callback query; for bots only
 */
public class TDLib.UpdateNewCallbackQuery : Update {

    /**
     * Unique query identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Identifier of the user who sent the query
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * Identifier of the chat where the query was sent
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message from which the query originated
     */
    public int64 message_id { get; construct set; }

    /**
     * Identifier that uniquely corresponds to the chat to which the message
     * was sent
     */
    public int64 chat_instance { get; construct set; }

    /**
     * Query payload
     */
    public CallbackQueryPayload payload { get; construct set; }

    public UpdateNewCallbackQuery (
        int64 id_,
        int64 sender_user_id,
        int64 chat_id,
        int64 message_id,
        int64 chat_instance,
        CallbackQueryPayload payload
    ) {
        Object (
            id_: id_,
            sender_user_id: sender_user_id,
            chat_id: chat_id,
            message_id: message_id,
            chat_instance: chat_instance,
            payload: payload,
            tdlib_type: "updateNewCallbackQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new incoming callback query from a message sent via a bot; for bots
 * only
 */
public class TDLib.UpdateNewInlineCallbackQuery : Update {

    /**
     * Unique query identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Identifier of the user who sent the query
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * Identifier of the inline message from which the query originated
     */
    public string inline_message_id { get; construct set; }

    /**
     * An identifier uniquely corresponding to the chat a message was sent to
     */
    public int64 chat_instance { get; construct set; }

    /**
     * Query payload
     */
    public CallbackQueryPayload payload { get; construct set; }

    public UpdateNewInlineCallbackQuery (
        int64 id_,
        int64 sender_user_id,
        string inline_message_id,
        int64 chat_instance,
        CallbackQueryPayload payload
    ) {
        Object (
            id_: id_,
            sender_user_id: sender_user_id,
            inline_message_id: inline_message_id,
            chat_instance: chat_instance,
            payload: payload,
            tdlib_type: "updateNewInlineCallbackQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new incoming callback query from a business message; for bots only
 */
public class TDLib.UpdateNewBusinessCallbackQuery : Update {

    /**
     * Unique query identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Identifier of the user who sent the query
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * Unique identifier of the business connection
     */
    public string connection_id { get; construct set; }

    /**
     * The message from the business account from which the query originated
     */
    public new BusinessMessage message { get; construct set; }

    /**
     * An identifier uniquely corresponding to the chat a message was sent to
     */
    public int64 chat_instance { get; construct set; }

    /**
     * Query payload
     */
    public CallbackQueryPayload payload { get; construct set; }

    public UpdateNewBusinessCallbackQuery (
        int64 id_,
        int64 sender_user_id,
        string connection_id,
        BusinessMessage message,
        int64 chat_instance,
        CallbackQueryPayload payload
    ) {
        Object (
            id_: id_,
            sender_user_id: sender_user_id,
            connection_id: connection_id,
            message: message,
            chat_instance: chat_instance,
            payload: payload,
            tdlib_type: "updateNewBusinessCallbackQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new incoming shipping query; for bots only. Only for invoices with
 * flexible price
 */
public class TDLib.UpdateNewShippingQuery : Update {

    /**
     * Unique query identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Identifier of the user who sent the query
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * Invoice payload
     */
    public string invoice_payload { get; construct set; }

    /**
     * User shipping address
     */
    public Address shipping_address { get; construct set; }

    public UpdateNewShippingQuery (
        int64 id_,
        int64 sender_user_id,
        string invoice_payload,
        Address shipping_address
    ) {
        Object (
            id_: id_,
            sender_user_id: sender_user_id,
            invoice_payload: invoice_payload,
            shipping_address: shipping_address,
            tdlib_type: "updateNewShippingQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new incoming pre-checkout query; for bots only. Contains full
 * information about a checkout
 */
public class TDLib.UpdateNewPreCheckoutQuery : Update {

    /**
     * Unique query identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Identifier of the user who sent the query
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * Currency for the product price
     */
    public string currency { get; construct set; }

    /**
     * Total price for the product, in the smallest units of the currency
     */
    public int64 total_amount { get; construct set; }

    /**
     * Invoice payload
     */
    public Bytes invoice_payload { get; construct set; }

    /**
     * Identifier of a shipping option chosen by the user; may be empty if
     * not applicable
     */
    public string shipping_option_id { get; construct set; }

    /**
     * Information about the order; may be null
     */
    public OrderInfo? order_info { get; construct set; }

    public UpdateNewPreCheckoutQuery (
        int64 id_,
        int64 sender_user_id,
        string currency,
        int64 total_amount,
        Bytes invoice_payload,
        string shipping_option_id,
        OrderInfo? order_info
    ) {
        Object (
            id_: id_,
            sender_user_id: sender_user_id,
            currency: currency,
            total_amount: total_amount,
            invoice_payload: invoice_payload,
            shipping_option_id: shipping_option_id,
            order_info: order_info,
            tdlib_type: "updateNewPreCheckoutQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new incoming event; for bots only
 */
public class TDLib.UpdateNewCustomEvent : Update {

    /**
     * A JSON-serialized event
     */
    public string event { get; construct set; }

    public UpdateNewCustomEvent (
        string event
    ) {
        Object (
            event: event,
            tdlib_type: "updateNewCustomEvent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new incoming query; for bots only
 */
public class TDLib.UpdateNewCustomQuery : Update {

    /**
     * The query identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * JSON-serialized query data
     */
    public string data { get; construct set; }

    /**
     * Query timeout
     */
    public int32 timeout { get; construct set; }

    public UpdateNewCustomQuery (
        int64 id_,
        string data,
        int32 timeout
    ) {
        Object (
            id_: id_,
            data: data,
            timeout: timeout,
            tdlib_type: "updateNewCustomQuery",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A poll was updated; for bots only
 */
public class TDLib.UpdatePoll : Update {

    /**
     * New data about the poll
     */
    public Poll poll { get; construct set; }

    public UpdatePoll (
        Poll poll
    ) {
        Object (
            poll: poll,
            tdlib_type: "updatePoll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A user changed the answer to a poll; for bots only
 */
public class TDLib.UpdatePollAnswer : Update {

    /**
     * Unique poll identifier
     */
    public int64 poll_id { get; construct set; }

    /**
     * Identifier of the message sender that changed the answer to the poll
     */
    public MessageSender voter_id { get; construct set; }

    /**
     * 0-based identifiers of answer options, chosen by the user
     */
    public Gee.ArrayList<int32?> option_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public UpdatePollAnswer (
        int64 poll_id,
        MessageSender voter_id,
        Gee.ArrayList<int32?> option_ids
    ) {
        Object (
            poll_id: poll_id,
            voter_id: voter_id,
            option_ids: option_ids,
            tdlib_type: "updatePollAnswer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * User rights changed in a chat; for bots only
 */
public class TDLib.UpdateChatMember : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the user, changing the rights
     */
    public int64 actor_user_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the user rights were changed
     */
    public int32 date { get; construct set; }

    /**
     * If user has joined the chat using an invite link, the invite link; may
     * be null
     */
    public ChatInviteLink? invite_link { get; construct set; }

    /**
     * True, if the user has joined the chat after sending a join request and
     * being approved by an administrator
     */
    public bool via_join_request { get; construct set; }

    /**
     * True, if the user has joined the chat using an invite link for a chat
     * folder
     */
    public bool via_chat_folder_invite_link { get; construct set; }

    /**
     * Previous chat member
     */
    public ChatMember old_chat_member { get; construct set; }

    /**
     * New chat member
     */
    public ChatMember new_chat_member { get; construct set; }

    public UpdateChatMember (
        int64 chat_id,
        int64 actor_user_id,
        int32 date,
        ChatInviteLink? invite_link,
        bool via_join_request,
        bool via_chat_folder_invite_link,
        ChatMember old_chat_member,
        ChatMember new_chat_member
    ) {
        Object (
            chat_id: chat_id,
            actor_user_id: actor_user_id,
            date: date,
            invite_link: invite_link,
            via_join_request: via_join_request,
            via_chat_folder_invite_link: via_chat_folder_invite_link,
            old_chat_member: old_chat_member,
            new_chat_member: new_chat_member,
            tdlib_type: "updateChatMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A user sent a join request to a chat; for bots only
 */
public class TDLib.UpdateNewChatJoinRequest : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Join request
     */
    public ChatJoinRequest request { get; construct set; }

    /**
     * Chat identifier of the private chat with the user
     */
    public int64 user_chat_id { get; construct set; }

    /**
     * The invite link, which was used to send join request; may be null
     */
    public ChatInviteLink? invite_link { get; construct set; }

    public UpdateNewChatJoinRequest (
        int64 chat_id,
        ChatJoinRequest request,
        int64 user_chat_id,
        ChatInviteLink? invite_link
    ) {
        Object (
            chat_id: chat_id,
            request: request,
            user_chat_id: user_chat_id,
            invite_link: invite_link,
            tdlib_type: "updateNewChatJoinRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat boost has changed; for bots only
 */
public class TDLib.UpdateChatBoost : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New information about the boost
     */
    public ChatBoost boost { get; construct set; }

    public UpdateChatBoost (
        int64 chat_id,
        ChatBoost boost
    ) {
        Object (
            chat_id: chat_id,
            boost: boost,
            tdlib_type: "updateChatBoost",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * User changed its reactions on a message with public reactions; for
 * bots only
 */
public class TDLib.UpdateMessageReaction : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * Identifier of the user or chat that changed reactions
     */
    public MessageSender actor_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the reactions were changed
     */
    public int32 date { get; construct set; }

    /**
     * Old list of chosen reactions
     */
    public Gee.ArrayList<ReactionType?> old_reaction_types { get; construct set; default = new Gee.ArrayList<ReactionType?> (); }

    /**
     * New list of chosen reactions
     */
    public Gee.ArrayList<ReactionType?> new_reaction_types { get; construct set; default = new Gee.ArrayList<ReactionType?> (); }

    public UpdateMessageReaction (
        int64 chat_id,
        int64 message_id,
        MessageSender actor_id,
        int32 date,
        Gee.ArrayList<ReactionType?> old_reaction_types,
        Gee.ArrayList<ReactionType?> new_reaction_types
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            actor_id: actor_id,
            date: date,
            old_reaction_types: old_reaction_types,
            new_reaction_types: new_reaction_types,
            tdlib_type: "updateMessageReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Reactions added to a message with anonymous reactions have changed;
 * for bots only
 */
public class TDLib.UpdateMessageReactions : Update {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier
     */
    public int64 message_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the reactions were changed
     */
    public int32 date { get; construct set; }

    /**
     * The list of reactions added to the message
     */
    public Gee.ArrayList<MessageReaction?> reactions { get; construct set; default = new Gee.ArrayList<MessageReaction?> (); }

    public UpdateMessageReactions (
        int64 chat_id,
        int64 message_id,
        int32 date,
        Gee.ArrayList<MessageReaction?> reactions
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            date: date,
            reactions: reactions,
            tdlib_type: "updateMessageReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Paid media were purchased by a user; for bots only
 */
public class TDLib.UpdatePaidMediaPurchased : Update {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * Bot-specified payload for the paid media
     */
    public string payload { get; construct set; }

    public UpdatePaidMediaPurchased (
        int64 user_id,
        string payload
    ) {
        Object (
            user_id: user_id,
            payload: payload,
            tdlib_type: "updatePaidMediaPurchased",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
