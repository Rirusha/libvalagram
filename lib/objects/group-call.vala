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
 * Describes a group call
 */
public class TDLib.GroupCall : Error {

    /**
     * Group call identifier
     */
    public int32 id_ { get; construct set; }

    /**
     * Persistent unique group call identifier
     */
    public int64 unique_id { get; construct set; }

    /**
     * Group call title; for video chats only
     */
    public string title { get; construct set; }

    /**
     * Invite link for the group call; for group calls that aren't bound to a
     * chat. For video chats call {@link Client.get_video_chat_invite_link}
     * to get the link.
     * For live stories in chats with username call
     * {@link Client.get_internal_link} with internalLinkTypeLiveStory
     */
    public string invite_link { get; construct set; }

    /**
     * The minimum number of Telegram Stars that must be paid by general
     * participant for each sent message to the call; for live stories only
     */
    public int64 paid_message_star_count { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the group call is expected to be
     * started by an administrator; 0 if it is already active or was ended;
     * for video chats only
     */
    public int32 scheduled_start_date { get; construct set; }

    /**
     * True, if the group call is scheduled and the current user will receive
     * a notification when the group call starts; for video chats only
     */
    public bool enabled_start_notification { get; construct set; }

    /**
     * True, if the call is active
     */
    public bool is_active { get; construct set; }

    /**
     * True, if the call is bound to a chat
     */
    public bool is_video_chat { get; construct set; }

    /**
     * True, if the call is a live story of a chat
     */
    public bool is_live_story { get; construct set; }

    /**
     * True, if the call is an RTMP stream instead of an ordinary video chat;
     * for video chats and live stories only
     */
    public bool is_rtmp_stream { get; construct set; }

    /**
     * True, if the call is joined
     */
    public bool is_joined { get; construct set; }

    /**
     * True, if user was kicked from the call because of network loss and the
     * call needs to be rejoined
     */
    public bool need_rejoin { get; construct set; }

    /**
     * True, if the user is the owner of the call and can end the call,
     * change volume level of other users, or ban users there; for group
     * calls that aren't bound to a chat
     */
    public bool is_owned { get; construct set; }

    /**
     * True, if the current user can manage the group call; for video chats
     * and live stories only
     */
    public bool can_be_managed { get; construct set; }

    /**
     * Number of participants in the group call
     */
    public int32 participant_count { get; construct set; }

    /**
     * True, if group call participants, which are muted, aren't returned in
     * participant list; for video chats only
     */
    public bool has_hidden_listeners { get; construct set; }

    /**
     * True, if all group call participants are loaded
     */
    public bool loaded_all_participants { get; construct set; }

    /**
     * Message sender chosen to send messages to the group call; for live
     * stories only; may be null if the call isn't a live story
     */
    public MessageSender? message_sender_id { get; construct set; }

    /**
     * At most 3 recently speaking users in the group call
     */
    public Gee.ArrayList<GroupCallRecentSpeaker?> recent_speakers { get; construct set; default = new Gee.ArrayList<GroupCallRecentSpeaker?> (); }

    /**
     * True, if the current user's video is enabled
     */
    public bool is_my_video_enabled { get; construct set; }

    /**
     * True, if the current user's video is paused
     */
    public bool is_my_video_paused { get; construct set; }

    /**
     * True, if the current user can broadcast video or share screen
     */
    public bool can_enable_video { get; construct set; }

    /**
     * True, if only group call administrators can unmute new participants;
     * for video chats only
     */
    public bool mute_new_participants { get; construct set; }

    /**
     * True, if the current user can enable or disable mute_new_participants
     * setting; for video chats only
     */
    public bool can_toggle_mute_new_participants { get; construct set; }

    /**
     * True, if the current user can send messages to the group call
     */
    public bool can_send_messages { get; construct set; }

    /**
     * True, if sending of messages is allowed in the group call
     */
    public bool are_messages_allowed { get; construct set; }

    /**
     * True, if the current user can enable or disable sending of messages in
     * the group call
     */
    public bool can_toggle_are_messages_allowed { get; construct set; }

    /**
     * True, if the user can delete messages in the group call
     */
    public bool can_delete_messages { get; construct set; }

    /**
     * Duration of the ongoing group call recording, in seconds; 0 if none.
     * An updateGroupCall update is not triggered when value of this field
     * changes, but the same recording goes on
     */
    public int32 record_duration { get; construct set; }

    /**
     * True, if a video file is being recorded for the call
     */
    public bool is_video_recorded { get; construct set; }

    /**
     * Call duration, in seconds; for ended calls only
     */
    public int32 duration { get; construct set; }

    public GroupCall (
        int32 id_,
        int64 unique_id,
        string title,
        string invite_link,
        int64 paid_message_star_count,
        int32 scheduled_start_date,
        bool enabled_start_notification,
        bool is_active,
        bool is_video_chat,
        bool is_live_story,
        bool is_rtmp_stream,
        bool is_joined,
        bool need_rejoin,
        bool is_owned,
        bool can_be_managed,
        int32 participant_count,
        bool has_hidden_listeners,
        bool loaded_all_participants,
        MessageSender? message_sender_id,
        Gee.ArrayList<GroupCallRecentSpeaker?> recent_speakers,
        bool is_my_video_enabled,
        bool is_my_video_paused,
        bool can_enable_video,
        bool mute_new_participants,
        bool can_toggle_mute_new_participants,
        bool can_send_messages,
        bool are_messages_allowed,
        bool can_toggle_are_messages_allowed,
        bool can_delete_messages,
        int32 record_duration,
        bool is_video_recorded,
        int32 duration
    ) {
        Object (
            id_: id_,
            unique_id: unique_id,
            title: title,
            invite_link: invite_link,
            paid_message_star_count: paid_message_star_count,
            scheduled_start_date: scheduled_start_date,
            enabled_start_notification: enabled_start_notification,
            is_active: is_active,
            is_video_chat: is_video_chat,
            is_live_story: is_live_story,
            is_rtmp_stream: is_rtmp_stream,
            is_joined: is_joined,
            need_rejoin: need_rejoin,
            is_owned: is_owned,
            can_be_managed: can_be_managed,
            participant_count: participant_count,
            has_hidden_listeners: has_hidden_listeners,
            loaded_all_participants: loaded_all_participants,
            message_sender_id: message_sender_id,
            recent_speakers: recent_speakers,
            is_my_video_enabled: is_my_video_enabled,
            is_my_video_paused: is_my_video_paused,
            can_enable_video: can_enable_video,
            mute_new_participants: mute_new_participants,
            can_toggle_mute_new_participants: can_toggle_mute_new_participants,
            can_send_messages: can_send_messages,
            are_messages_allowed: are_messages_allowed,
            can_toggle_are_messages_allowed: can_toggle_are_messages_allowed,
            can_delete_messages: can_delete_messages,
            record_duration: record_duration,
            is_video_recorded: is_video_recorded,
            duration: duration,
            tdlib_type: "groupCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
