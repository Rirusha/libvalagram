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
 * Describes a list of stories
 */
public abstract class TDLib.StoryList : Error {}

/**
 * The list of stories, shown in the main chat list and folder chat lists
 */
public class TDLib.StoryListMain : StoryList {

    public StoryListMain () {
        Object (
            tdlib_type: "storyListMain",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of stories, shown in the Arvhive chat list
 */
public class TDLib.StoryListArchive : StoryList {

    public StoryListArchive () {
        Object (
            tdlib_type: "storyListArchive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
