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
 * Represents a group call participant
 */
public class TDLib.GroupCallParticipant : Error {

    /**
     * Identifier of the group call participant
     */
    public MessageSender participant_id { get; construct set; }

    /**
     * User's audio channel synchronization source identifier
     */
    public int32 audio_source_id { get; construct set; }

    /**
     * User's screen sharing audio channel synchronization source identifier
     */
    public int32 screen_sharing_audio_source_id { get; construct set; }

    /**
     * Information about user's video channel; may be null if there is no
     * active video
     */
    public GroupCallParticipantVideoInfo? video_info { get; construct set; }

    /**
     * Information about user's screen sharing video channel; may be null if
     * there is no active screen sharing video
     */
    public GroupCallParticipantVideoInfo? screen_sharing_video_info { get; construct set; }

    /**
     * The participant user's bio or the participant chat's description
     */
    public string bio { get; construct set; }

    /**
     * True, if the participant is the current user
     */
    public bool is_current_user { get; construct set; }

    /**
     * True, if the participant is speaking as set by
     * setGroupCallParticipantIsSpeaking
     */
    public bool is_speaking { get; construct set; }

    /**
     * True, if the participant hand is raised
     */
    public bool is_hand_raised { get; construct set; }

    /**
     * True, if the current user can mute the participant for all other group
     * call participants
     */
    public bool can_be_muted_for_all_users { get; construct set; }

    /**
     * True, if the current user can allow the participant to unmute
     * themselves or unmute the participant (if the participant is the
     * current user)
     */
    public bool can_be_unmuted_for_all_users { get; construct set; }

    /**
     * True, if the current user can mute the participant only for self
     */
    public bool can_be_muted_for_current_user { get; construct set; }

    /**
     * True, if the current user can unmute the participant for self
     */
    public bool can_be_unmuted_for_current_user { get; construct set; }

    /**
     * True, if the participant is muted for all users
     */
    public bool is_muted_for_all_users { get; construct set; }

    /**
     * True, if the participant is muted for the current user
     */
    public bool is_muted_for_current_user { get; construct set; }

    /**
     * True, if the participant is muted for all users, but can unmute
     * themselves
     */
    public bool can_unmute_self { get; construct set; }

    /**
     * Participant's volume level; 1-20000 in hundreds of percents
     */
    public int32 volume_level { get; construct set; }

    /**
     * User's order in the group call participant list. Orders must be
     * compared lexicographically. The bigger is order, the higher is user in
     * the list. If order is empty, the user must be removed from the
     * participant list
     */
    public string order { get; construct set; }

    public GroupCallParticipant (
        MessageSender participant_id,
        int32 audio_source_id,
        int32 screen_sharing_audio_source_id,
        GroupCallParticipantVideoInfo? video_info,
        GroupCallParticipantVideoInfo? screen_sharing_video_info,
        string bio,
        bool is_current_user,
        bool is_speaking,
        bool is_hand_raised,
        bool can_be_muted_for_all_users,
        bool can_be_unmuted_for_all_users,
        bool can_be_muted_for_current_user,
        bool can_be_unmuted_for_current_user,
        bool is_muted_for_all_users,
        bool is_muted_for_current_user,
        bool can_unmute_self,
        int32 volume_level,
        string order
    ) {
        Object (
            participant_id: participant_id,
            audio_source_id: audio_source_id,
            screen_sharing_audio_source_id: screen_sharing_audio_source_id,
            video_info: video_info,
            screen_sharing_video_info: screen_sharing_video_info,
            bio: bio,
            is_current_user: is_current_user,
            is_speaking: is_speaking,
            is_hand_raised: is_hand_raised,
            can_be_muted_for_all_users: can_be_muted_for_all_users,
            can_be_unmuted_for_all_users: can_be_unmuted_for_all_users,
            can_be_muted_for_current_user: can_be_muted_for_current_user,
            can_be_unmuted_for_current_user: can_be_unmuted_for_current_user,
            is_muted_for_all_users: is_muted_for_all_users,
            is_muted_for_current_user: is_muted_for_current_user,
            can_unmute_self: can_unmute_self,
            volume_level: volume_level,
            order: order,
            tdlib_type: "groupCallParticipant",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
