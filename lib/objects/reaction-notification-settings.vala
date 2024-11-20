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
 * Contains information about notification settings for reactions
 */
public class TDLib.ReactionNotificationSettings : Error {

    /**
     * Source of message reactions for which notifications are shown
     */
    public ReactionNotificationSource message_reaction_source { get; construct set; }

    /**
     * Source of story reactions for which notifications are shown
     */
    public ReactionNotificationSource story_reaction_source { get; construct set; }

    /**
     * Identifier of the notification sound to be played; 0 if sound is
     * disabled
     */
    public int64 sound_id { get; construct set; }

    /**
     * True, if reaction sender and emoji must be displayed in notifications
     */
    public bool show_preview { get; construct set; }

    public ReactionNotificationSettings (
        ReactionNotificationSource message_reaction_source,
        ReactionNotificationSource story_reaction_source,
        int64 sound_id,
        bool show_preview
    ) {
        Object (
            message_reaction_source: message_reaction_source,
            story_reaction_source: story_reaction_source,
            sound_id: sound_id,
            show_preview: show_preview,
            tdlib_type: "reactionNotificationSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
