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
 * Contains information about original story that was reposted
 */
public class TDLib.StoryRepostInfo : Error {

    /**
     * Origin of the story that was reposted
     */
    public StoryOrigin origin { get; construct set; }

    /**
     * True, if story content was modified during reposting; otherwise, story
     * wasn't modified
     */
    public bool is_content_modified { get; construct set; }

    public StoryRepostInfo (
        StoryOrigin origin,
        bool is_content_modified
    ) {
        Object (
            origin: origin,
            is_content_modified: is_content_modified,
            tdlib_type: "storyRepostInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
