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
 * Returns interactions with a story. The method can be called only for
 * stories posted on behalf of the current user
 */
internal class TDLib.GetStoryInteractions : TDObject {

    /**
     * Story identifier
     */
    public int32 story_id { get; construct set; }

    /**
     * Query to search for in names, usernames and titles; may be empty to
     * get all relevant interactions
     */
    public string query { get; construct set; }

    /**
     * Pass true to get only interactions by contacts; pass false to get all
     * relevant interactions
     */
    public bool only_contacts { get; construct set; }

    /**
     * Pass true to get forwards and reposts first, then reactions, then
     * other views; pass false to get interactions sorted just by interaction
     * date
     */
    public bool prefer_forwards { get; construct set; }

    /**
     * Pass true to get interactions with reaction first; pass false to get
     * interactions sorted just by interaction date. Ignored if
     * prefer_forwards == true
     */
    public bool prefer_with_reaction { get; construct set; }

    /**
     * Offset of the first entry to return as received from the previous
     * request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of story interactions to return
     */
    public int32 limit { get; construct set; }

    public GetStoryInteractions (
        int32 story_id,
        string query,
        bool only_contacts,
        bool prefer_forwards,
        bool prefer_with_reaction,
        string offset,
        int32 limit
    ) {
        Object (
            story_id: story_id,
            query: query,
            only_contacts: only_contacts,
            prefer_forwards: prefer_forwards,
            prefer_with_reaction: prefer_with_reaction,
            offset: offset,
            limit: limit,
            tdlib_type: "getStoryInteractions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
