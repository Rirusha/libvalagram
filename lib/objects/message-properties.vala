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
 * Contains properties of a message and describes actions that can be
 * done with the message right now
 */
public class TDLib.MessageProperties : Error {

    /**
     * True, if an offer can be added to the message using
     * {@link Client.add_offer}
     */
    public bool can_add_offer { get; construct set; }

    /**
     * True, if tasks can be added to the message's checklist using
     * {@link Client.add_checklist_tasks} if the current user has Telegram
     * Premium subscription
     */
    public bool can_add_tasks { get; construct set; }

    /**
     * True, if the message is a suggested post that can be approved by the
     * user using {@link Client.approve_suggested_post}
     */
    public bool can_be_approved { get; construct set; }

    /**
     * True, if content of the message can be copied using
     * inputMessageForwarded or {@link Client.forward_messages} with copy
     * options
     */
    public bool can_be_copied { get; construct set; }

    /**
     * True, if content of the message can be copied to a secret chat using
     * inputMessageForwarded or {@link Client.forward_messages} with copy
     * options
     */
    public bool can_be_copied_to_secret_chat { get; construct set; }

    /**
     * True, if the message is a suggested post that can be declined by the
     * user using {@link Client.decline_suggested_post}
     */
    public bool can_be_declined { get; construct set; }

    /**
     * True, if the message can be deleted only for the current user while
     * other users will continue to see it using the method
     * {@link Client.delete_messages} with revoke == false
     */
    public bool can_be_deleted_only_for_self { get; construct set; }

    /**
     * True, if the message can be deleted for all users using the method
     * {@link Client.delete_messages} with revoke == true
     */
    public bool can_be_deleted_for_all_users { get; construct set; }

    /**
     * True, if the message can be edited using the methods
     * {@link Client.edit_message_text} {@link Client.edit_message_caption}
     * or {@link Client.edit_message_reply_markup}
     * For live location, poll, and checklist messages this fields shows
     * whether {@link Client.edit_message_live_location}
     * {@link Client.stop_poll} or {@link Client.edit_message_checklist}
     * respectively can be used with this message
     */
    public bool can_be_edited { get; construct set; }

    /**
     * True, if the message can be forwarded using inputMessageForwarded or
     * {@link Client.forward_messages} without copy options
     */
    public bool can_be_forwarded { get; construct set; }

    /**
     * True, if the message can be paid using inputInvoiceMessage
     */
    public bool can_be_paid { get; construct set; }

    /**
     * True, if the message can be pinned or unpinned in the chat using
     * {@link Client.pin_chat_message} or {@link Client.unpin_chat_message}
     */
    public bool can_be_pinned { get; construct set; }

    /**
     * True, if the message can be replied in the same chat and forum topic
     * using inputMessageReplyToMessage
     */
    public bool can_be_replied { get; construct set; }

    /**
     * True, if the message can be replied in another chat or forum topic
     * using inputMessageReplyToExternalMessage
     */
    public bool can_be_replied_in_another_chat { get; construct set; }

    /**
     * True, if content of the message can be saved locally
     */
    public bool can_be_saved { get; construct set; }

    /**
     * True, if the message can be shared in a story using
     * inputStoryAreaTypeMessage
     */
    public bool can_be_shared_in_story { get; construct set; }

    /**
     * True, if the message can be edited using the method
     * {@link Client.edit_message_media}
     */
    public bool can_edit_media { get; construct set; }

    /**
     * True, if scheduling state of the message can be edited
     */
    public bool can_edit_scheduling_state { get; construct set; }

    /**
     * True, if another price or post send time can be suggested using
     * {@link Client.add_offer}
     */
    public bool can_edit_suggested_post_info { get; construct set; }

    /**
     * True, if author of the message sent on behalf of a chat can be
     * received through {@link Client.get_message_author}
     */
    public bool can_get_author { get; construct set; }

    /**
     * True, if code for message embedding can be received using
     * {@link Client.get_message_embedding_code}
     */
    public bool can_get_embedding_code { get; construct set; }

    /**
     * True, if a link can be generated for the message using
     * {@link Client.get_message_link}
     */
    public bool can_get_link { get; construct set; }

    /**
     * True, if media timestamp links can be generated for media timestamp
     * entities in the message text, caption or link preview description
     * using {@link Client.get_message_link}
     */
    public bool can_get_media_timestamp_links { get; construct set; }

    /**
     * True, if information about the message thread is available through
     * {@link Client.get_message_thread} and
     * {@link Client.get_message_thread_history}
     */
    public bool can_get_message_thread { get; construct set; }

    /**
     * True, if read date of the message can be received through
     * {@link Client.get_message_read_date}
     */
    public bool can_get_read_date { get; construct set; }

    /**
     * True, if message statistics are available through
     * {@link Client.get_message_statistics} and message forwards can be
     * received using {@link Client.get_message_public_forwards}
     */
    public bool can_get_statistics { get; construct set; }

    /**
     * True, if advertisements for video of the message can be received
     * though {@link Client.get_video_message_advertisements}
     */
    public bool can_get_video_advertisements { get; construct set; }

    /**
     * True, if chat members already viewed the message can be received
     * through {@link Client.get_message_viewers}
     */
    public bool can_get_viewers { get; construct set; }

    /**
     * True, if tasks can be marked as done or not done in the message's
     * checklist using {@link Client.mark_checklist_tasks_as_done} if the
     * current user has Telegram Premium subscription
     */
    public bool can_mark_tasks_as_done { get; construct set; }

    /**
     * True, if speech can be recognized for the message through
     * {@link Client.recognize_speech}
     */
    public bool can_recognize_speech { get; construct set; }

    /**
     * True, if the message can be reported using {@link Client.report_chat}
     */
    public bool can_report_chat { get; construct set; }

    /**
     * True, if reactions on the message can be reported through
     * {@link Client.report_message_reactions}
     */
    public bool can_report_reactions { get; construct set; }

    /**
     * True, if the message can be reported using
     * {@link Client.report_supergroup_spam}
     */
    public bool can_report_supergroup_spam { get; construct set; }

    /**
     * True, if fact check for the message can be changed through
     * {@link Client.set_message_fact_check}
     */
    public bool can_set_fact_check { get; construct set; }

    /**
     * True, if message statistics must be available from context menu of the
     * message
     */
    public bool need_show_statistics { get; construct set; }

    public MessageProperties (
        bool can_add_offer,
        bool can_add_tasks,
        bool can_be_approved,
        bool can_be_copied,
        bool can_be_copied_to_secret_chat,
        bool can_be_declined,
        bool can_be_deleted_only_for_self,
        bool can_be_deleted_for_all_users,
        bool can_be_edited,
        bool can_be_forwarded,
        bool can_be_paid,
        bool can_be_pinned,
        bool can_be_replied,
        bool can_be_replied_in_another_chat,
        bool can_be_saved,
        bool can_be_shared_in_story,
        bool can_edit_media,
        bool can_edit_scheduling_state,
        bool can_edit_suggested_post_info,
        bool can_get_author,
        bool can_get_embedding_code,
        bool can_get_link,
        bool can_get_media_timestamp_links,
        bool can_get_message_thread,
        bool can_get_read_date,
        bool can_get_statistics,
        bool can_get_video_advertisements,
        bool can_get_viewers,
        bool can_mark_tasks_as_done,
        bool can_recognize_speech,
        bool can_report_chat,
        bool can_report_reactions,
        bool can_report_supergroup_spam,
        bool can_set_fact_check,
        bool need_show_statistics
    ) {
        Object (
            can_add_offer: can_add_offer,
            can_add_tasks: can_add_tasks,
            can_be_approved: can_be_approved,
            can_be_copied: can_be_copied,
            can_be_copied_to_secret_chat: can_be_copied_to_secret_chat,
            can_be_declined: can_be_declined,
            can_be_deleted_only_for_self: can_be_deleted_only_for_self,
            can_be_deleted_for_all_users: can_be_deleted_for_all_users,
            can_be_edited: can_be_edited,
            can_be_forwarded: can_be_forwarded,
            can_be_paid: can_be_paid,
            can_be_pinned: can_be_pinned,
            can_be_replied: can_be_replied,
            can_be_replied_in_another_chat: can_be_replied_in_another_chat,
            can_be_saved: can_be_saved,
            can_be_shared_in_story: can_be_shared_in_story,
            can_edit_media: can_edit_media,
            can_edit_scheduling_state: can_edit_scheduling_state,
            can_edit_suggested_post_info: can_edit_suggested_post_info,
            can_get_author: can_get_author,
            can_get_embedding_code: can_get_embedding_code,
            can_get_link: can_get_link,
            can_get_media_timestamp_links: can_get_media_timestamp_links,
            can_get_message_thread: can_get_message_thread,
            can_get_read_date: can_get_read_date,
            can_get_statistics: can_get_statistics,
            can_get_video_advertisements: can_get_video_advertisements,
            can_get_viewers: can_get_viewers,
            can_mark_tasks_as_done: can_mark_tasks_as_done,
            can_recognize_speech: can_recognize_speech,
            can_report_chat: can_report_chat,
            can_report_reactions: can_report_reactions,
            can_report_supergroup_spam: can_report_supergroup_spam,
            can_set_fact_check: can_set_fact_check,
            need_show_statistics: need_show_statistics,
            tdlib_type: "messageProperties",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
