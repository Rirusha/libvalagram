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
 * Adds pending paid reaction in a live story group call. Can't be used
 * in live stories posted by the current user.
 * Call {@link Client.commit_pending_live_story_reactions} or
 * {@link Client.remove_pending_live_story_reactions} to actually send
 * all pending reactions when the undo timer is over or abort the sending
 */
public class TDLib.AddPendingLiveStoryReaction : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Number of Telegram Stars to be used for the reaction. The total number
     * of pending paid reactions must not exceed
     * getOption("paid_group_call_message_star_count_max")
     */
    public int64 star_count { get; construct set; }

    public AddPendingLiveStoryReaction (
        int32 group_call_id,
        int64 star_count
    ) {
        Object (
            group_call_id: group_call_id,
            star_count: star_count,
            tdlib_type: "addPendingLiveStoryReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
