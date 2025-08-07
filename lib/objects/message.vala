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
 * Describes a message
 */
public class TDLib.Message : Error {

    /**
     * Message identifier; unique for the chat to which the message belongs
     */
    public int64 id_ { get; construct set; }

    /**
     * Identifier of the sender of the message
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The sending state of the message; may be null if the message isn't
     * being sent and didn't fail to be sent
     */
    public MessageSendingState? sending_state { get; construct set; }

    /**
     * The scheduling state of the message; may be null if the message isn't
     * scheduled
     */
    public MessageSchedulingState? scheduling_state { get; construct set; }

    /**
     * True, if the message is outgoing
     */
    public bool is_outgoing { get; construct set; }

    /**
     * True, if the message is pinned
     */
    public bool is_pinned { get; construct set; }

    /**
     * True, if the message was sent because of a scheduled action by the
     * message sender, for example, as away, or greeting service message
     */
    public bool is_from_offline { get; construct set; }

    /**
     * True, if content of the message can be saved locally
     */
    public bool can_be_saved { get; construct set; }

    /**
     * True, if media timestamp entities refers to a media in this message as
     * opposed to a media in the replied message
     */
    public bool has_timestamped_media { get; construct set; }

    /**
     * True, if the message is a channel post. All messages to channels are
     * channel posts, all other messages are not channel posts
     */
    public bool is_channel_post { get; construct set; }

    /**
     * True, if the message is a suggested channel post which was paid in
     * Telegram Stars; a warning must be shown if the message is deleted in
     * less than getOption("suggested_post_lifetime_min") seconds after
     * sending
     */
    public bool is_paid_star_suggested_post { get; construct set; }

    /**
     * True, if the message is a suggested channel post which was paid in
     * Toncoins; a warning must be shown if the message is deleted in less
     * than getOption("suggested_post_lifetime_min") seconds after sending
     */
    public bool is_paid_ton_suggested_post { get; construct set; }

    /**
     * True, if the message contains an unread mention for the current user
     */
    public bool contains_unread_mention { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the message was sent; 0 for
     * scheduled messages
     */
    public int32 date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the message was last edited; 0 for
     * scheduled messages
     */
    public int32 edit_date { get; construct set; }

    /**
     * Information about the initial message sender; may be null if none or
     * unknown
     */
    public MessageForwardInfo? forward_info { get; construct set; }

    /**
     * Information about the initial message for messages created with
     * {@link Client.import_messages} may be null if the message isn't
     * imported
     */
    public MessageImportInfo? import_info { get; construct set; }

    /**
     * Information about interactions with the message; may be null if none
     */
    public MessageInteractionInfo? interaction_info { get; construct set; }

    /**
     * Information about unread reactions added to the message
     */
    public Gee.ArrayList<UnreadReaction?> unread_reactions { get; construct set; default = new Gee.ArrayList<UnreadReaction?> (); }

    /**
     * Information about fact-check added to the message; may be null if none
     */
    public FactCheck? fact_check { get; construct set; }

    /**
     * Information about the suggested post; may be null if the message isn't
     * a suggested post
     */
    public SuggestedPostInfo? suggested_post_info { get; construct set; }

    /**
     * Information about the message or the story this message is replying
     * to; may be null if none
     */
    public MessageReplyTo? reply_to { get; construct set; }

    /**
     * If non-zero, the identifier of the message thread the message belongs
     * to; unique within the chat to which the message belongs
     */
    public int64 message_thread_id { get; construct set; }

    /**
     * Identifier of the topic within the chat to which the message belongs;
     * may be null if none
     */
    public MessageTopic? topic_id { get; construct set; }

    /**
     * The message's self-destruct type; may be null if none
     */
    public MessageSelfDestructType? self_destruct_type { get; construct set; }

    /**
     * Time left before the message self-destruct timer expires, in seconds;
     * 0 if self-destruction isn't scheduled yet
     */
    public double self_destruct_in { get; construct set; }

    /**
     * Time left before the message will be automatically deleted by
     * message_auto_delete_time setting of the chat, in seconds; 0 if never
     */
    public double auto_delete_in { get; construct set; }

    /**
     * If non-zero, the user identifier of the inline bot through which this
     * message was sent
     */
    public int64 via_bot_user_id { get; construct set; }

    /**
     * If non-zero, the user identifier of the business bot that sent this
     * message
     */
    public int64 sender_business_bot_user_id { get; construct set; }

    /**
     * Number of times the sender of the message boosted the supergroup at
     * the time the message was sent; 0 if none or unknown. For messages sent
     * by the current user, supergroupFullInfo.my_boost_count must be used
     * instead
     */
    public int32 sender_boost_count { get; construct set; }

    /**
     * The number of Telegram Stars the sender paid to send the message
     */
    public int64 paid_message_star_count { get; construct set; }

    /**
     * For channel posts and anonymous group messages, optional author
     * signature
     */
    public string author_signature { get; construct set; }

    /**
     * Unique identifier of an album this message belongs to; 0 if none. Only
     * audios, documents, photos and videos can be grouped together in albums
     */
    public int64 media_album_id { get; construct set; }

    /**
     * Unique identifier of the effect added to the message; 0 if none
     */
    public int64 effect_id { get; construct set; }

    /**
     * True, if media content of the message must be hidden with 18+ spoiler
     */
    public bool has_sensitive_content { get; construct set; }

    /**
     * If non-empty, contains a human-readable description of the reason why
     * access to this message must be restricted
     */
    public string restriction_reason { get; construct set; }

    /**
     * Content of the message
     */
    public MessageContent content { get; construct set; }

    /**
     * Reply markup for the message; may be null if none
     */
    public ReplyMarkup? reply_markup { get; construct set; }

    public Message (
        int64 id_,
        MessageSender sender_id,
        int64 chat_id,
        MessageSendingState? sending_state,
        MessageSchedulingState? scheduling_state,
        bool is_outgoing,
        bool is_pinned,
        bool is_from_offline,
        bool can_be_saved,
        bool has_timestamped_media,
        bool is_channel_post,
        bool is_paid_star_suggested_post,
        bool is_paid_ton_suggested_post,
        bool contains_unread_mention,
        int32 date,
        int32 edit_date,
        MessageForwardInfo? forward_info,
        MessageImportInfo? import_info,
        MessageInteractionInfo? interaction_info,
        Gee.ArrayList<UnreadReaction?> unread_reactions,
        FactCheck? fact_check,
        SuggestedPostInfo? suggested_post_info,
        MessageReplyTo? reply_to,
        int64 message_thread_id,
        MessageTopic? topic_id,
        MessageSelfDestructType? self_destruct_type,
        double self_destruct_in,
        double auto_delete_in,
        int64 via_bot_user_id,
        int64 sender_business_bot_user_id,
        int32 sender_boost_count,
        int64 paid_message_star_count,
        string author_signature,
        int64 media_album_id,
        int64 effect_id,
        bool has_sensitive_content,
        string restriction_reason,
        MessageContent content,
        ReplyMarkup? reply_markup
    ) {
        Object (
            id_: id_,
            sender_id: sender_id,
            chat_id: chat_id,
            sending_state: sending_state,
            scheduling_state: scheduling_state,
            is_outgoing: is_outgoing,
            is_pinned: is_pinned,
            is_from_offline: is_from_offline,
            can_be_saved: can_be_saved,
            has_timestamped_media: has_timestamped_media,
            is_channel_post: is_channel_post,
            is_paid_star_suggested_post: is_paid_star_suggested_post,
            is_paid_ton_suggested_post: is_paid_ton_suggested_post,
            contains_unread_mention: contains_unread_mention,
            date: date,
            edit_date: edit_date,
            forward_info: forward_info,
            import_info: import_info,
            interaction_info: interaction_info,
            unread_reactions: unread_reactions,
            fact_check: fact_check,
            suggested_post_info: suggested_post_info,
            reply_to: reply_to,
            message_thread_id: message_thread_id,
            topic_id: topic_id,
            self_destruct_type: self_destruct_type,
            self_destruct_in: self_destruct_in,
            auto_delete_in: auto_delete_in,
            via_bot_user_id: via_bot_user_id,
            sender_business_bot_user_id: sender_business_bot_user_id,
            sender_boost_count: sender_boost_count,
            paid_message_star_count: paid_message_star_count,
            author_signature: author_signature,
            media_album_id: media_album_id,
            effect_id: effect_id,
            has_sensitive_content: has_sensitive_content,
            restriction_reason: restriction_reason,
            content: content,
            reply_markup: reply_markup,
            tdlib_type: "message",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
