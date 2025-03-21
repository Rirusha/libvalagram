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
 * Returns the list of stories that posted by the given chat to its chat
 * page. If from_story_id == 0, then pinned stories are returned first.
 * Then, stories are returned in reverse chronological order (i.e., in
 * order of decreasing story_id). For optimal performance, the number of
 * returned stories is chosen by TDLib
 */
public class TDLib.GetChatPostedToChatPageStories : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the story starting from which stories must be returned;
     * use 0 to get results from pinned and the newest story
     */
    public int32 from_story_id { get; construct set; }

    /**
     * The maximum number of stories to be returned.
     * For optimal performance, the number of returned stories is chosen by
     * TDLib and can be smaller than the specified limit
     */
    public int32 limit { get; construct set; }

    public GetChatPostedToChatPageStories (
        int64 chat_id,
        int32 from_story_id,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            from_story_id: from_story_id,
            limit: limit,
            tdlib_type: "getChatPostedToChatPageStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
