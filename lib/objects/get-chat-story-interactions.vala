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
 * Returns interactions with a story posted in a chat. Can be used only
 * if story is posted on behalf of a chat and the user is an
 * administrator in the chat
 */
public class TDLib.GetChatStoryInteractions : TDObject {

    /**
     * The identifier of the poster of the story
     */
    public int64 story_poster_chat_id { get; construct set; }

    /**
     * Story identifier
     */
    public int32 story_id { get; construct set; }

    /**
     * Pass the default heart reaction or a suggested reaction type to
     * receive only interactions with the specified reaction type; pass null
     * to receive all interactions; reactionTypePaid isn't supported
     */
    public ReactionType reaction_type { get; construct set; }

    /**
     * Pass true to get forwards and reposts first, then reactions, then
     * other views; pass false to get interactions sorted just by interaction
     * date
     */
    public bool prefer_forwards { get; construct set; }

    /**
     * Offset of the first entry to return as received from the previous
     * request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of story interactions to return
     */
    public int32 limit { get; construct set; }

    public GetChatStoryInteractions (
        int64 story_poster_chat_id,
        int32 story_id,
        ReactionType reaction_type,
        bool prefer_forwards,
        string offset,
        int32 limit
    ) {
        Object (
            story_poster_chat_id: story_poster_chat_id,
            story_id: story_id,
            reaction_type: reaction_type,
            prefer_forwards: prefer_forwards,
            offset: offset,
            limit: limit,
            tdlib_type: "getChatStoryInteractions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
