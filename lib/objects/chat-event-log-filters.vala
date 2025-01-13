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
 * Represents a set of filters used to obtain a chat event log
 */
public class TDLib.ChatEventLogFilters : Error {

    /**
     * True, if message edits need to be returned
     */
    public bool message_edits { get; construct set; }

    /**
     * True, if message deletions need to be returned
     */
    public bool message_deletions { get; construct set; }

    /**
     * True, if pin/unpin events need to be returned
     */
    public bool message_pins { get; construct set; }

    /**
     * True, if members joining events need to be returned
     */
    public bool member_joins { get; construct set; }

    /**
     * True, if members leaving events need to be returned
     */
    public bool member_leaves { get; construct set; }

    /**
     * True, if invited member events need to be returned
     */
    public bool member_invites { get; construct set; }

    /**
     * True, if member promotion/demotion events need to be returned
     */
    public bool member_promotions { get; construct set; }

    /**
     * True, if member restricted/unrestricted/banned/unbanned events need to
     * be returned
     */
    public bool member_restrictions { get; construct set; }

    /**
     * True, if changes in chat information need to be returned
     */
    public bool info_changes { get; construct set; }

    /**
     * True, if changes in chat settings need to be returned
     */
    public bool setting_changes { get; construct set; }

    /**
     * True, if changes to invite links need to be returned
     */
    public bool invite_link_changes { get; construct set; }

    /**
     * True, if video chat actions need to be returned
     */
    public bool video_chat_changes { get; construct set; }

    /**
     * True, if forum-related actions need to be returned
     */
    public bool forum_changes { get; construct set; }

    /**
     * True, if subscription extensions need to be returned
     */
    public bool subscription_extensions { get; construct set; }

    public ChatEventLogFilters (
        bool message_edits,
        bool message_deletions,
        bool message_pins,
        bool member_joins,
        bool member_leaves,
        bool member_invites,
        bool member_promotions,
        bool member_restrictions,
        bool info_changes,
        bool setting_changes,
        bool invite_link_changes,
        bool video_chat_changes,
        bool forum_changes,
        bool subscription_extensions
    ) {
        Object (
            message_edits: message_edits,
            message_deletions: message_deletions,
            message_pins: message_pins,
            member_joins: member_joins,
            member_leaves: member_leaves,
            member_invites: member_invites,
            member_promotions: member_promotions,
            member_restrictions: member_restrictions,
            info_changes: info_changes,
            setting_changes: setting_changes,
            invite_link_changes: invite_link_changes,
            video_chat_changes: video_chat_changes,
            forum_changes: forum_changes,
            subscription_extensions: subscription_extensions,
            tdlib_type: "chatEventLogFilters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
