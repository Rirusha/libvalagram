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
 * Contains information about interactions with a story
 */
public class TDLib.StoryInteractionInfo : Error {

    /**
     * Number of times the story was viewed
     */
    public int32 view_count { get; construct set; }

    /**
     * Number of times the story was forwarded; 0 if none or unknown
     */
    public int32 forward_count { get; construct set; }

    /**
     * Number of reactions added to the story; 0 if none or unknown
     */
    public int32 reaction_count { get; construct set; }

    /**
     * Identifiers of at most 3 recent viewers of the story
     */
    public Gee.ArrayList<int64?> recent_viewer_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public StoryInteractionInfo (
        int32 view_count,
        int32 forward_count,
        int32 reaction_count,
        Gee.ArrayList<int64?> recent_viewer_user_ids
    ) {
        Object (
            view_count: view_count,
            forward_count: forward_count,
            reaction_count: reaction_count,
            recent_viewer_user_ids: recent_viewer_user_ids,
            tdlib_type: "storyInteractionInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
