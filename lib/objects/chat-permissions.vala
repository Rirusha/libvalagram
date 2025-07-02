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
 * Describes actions that a user is allowed to take in a chat
 */
public class TDLib.ChatPermissions : Error {

    /**
     * True, if the user can send text messages, contacts, giveaways,
     * giveaway winners, invoices, locations, and venues
     */
    public bool can_send_basic_messages { get; construct set; }

    /**
     * True, if the user can send music files
     */
    public bool can_send_audios { get; construct set; }

    /**
     * True, if the user can send documents
     */
    public bool can_send_documents { get; construct set; }

    /**
     * True, if the user can send photos
     */
    public bool can_send_photos { get; construct set; }

    /**
     * True, if the user can send videos
     */
    public bool can_send_videos { get; construct set; }

    /**
     * True, if the user can send video notes
     */
    public bool can_send_video_notes { get; construct set; }

    /**
     * True, if the user can send voice notes
     */
    public bool can_send_voice_notes { get; construct set; }

    /**
     * True, if the user can send polls and checklists
     */
    public bool can_send_polls { get; construct set; }

    /**
     * True, if the user can send animations, games, stickers, and dice and
     * use inline bots
     */
    public bool can_send_other_messages { get; construct set; }

    /**
     * True, if the user may add a link preview to their messages
     */
    public bool can_add_link_previews { get; construct set; }

    /**
     * True, if the user can change the chat title, photo, and other settings
     */
    public bool can_change_info { get; construct set; }

    /**
     * True, if the user can invite new users to the chat
     */
    public bool can_invite_users { get; construct set; }

    /**
     * True, if the user can pin messages
     */
    public bool can_pin_messages { get; construct set; }

    /**
     * True, if the user can create topics
     */
    public bool can_create_topics { get; construct set; }

    public ChatPermissions (
        bool can_send_basic_messages,
        bool can_send_audios,
        bool can_send_documents,
        bool can_send_photos,
        bool can_send_videos,
        bool can_send_video_notes,
        bool can_send_voice_notes,
        bool can_send_polls,
        bool can_send_other_messages,
        bool can_add_link_previews,
        bool can_change_info,
        bool can_invite_users,
        bool can_pin_messages,
        bool can_create_topics
    ) {
        Object (
            can_send_basic_messages: can_send_basic_messages,
            can_send_audios: can_send_audios,
            can_send_documents: can_send_documents,
            can_send_photos: can_send_photos,
            can_send_videos: can_send_videos,
            can_send_video_notes: can_send_video_notes,
            can_send_voice_notes: can_send_voice_notes,
            can_send_polls: can_send_polls,
            can_send_other_messages: can_send_other_messages,
            can_add_link_previews: can_add_link_previews,
            can_change_info: can_change_info,
            can_invite_users: can_invite_users,
            can_pin_messages: can_pin_messages,
            can_create_topics: can_create_topics,
            tdlib_type: "chatPermissions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
