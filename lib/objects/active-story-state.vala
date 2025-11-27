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
 * Describes state of active stories posted by a chat
 */
public abstract class TDLib.ActiveStoryState : Error {}

/**
 * The chat has an active live story
 */
public class TDLib.ActiveStoryStateLive : ActiveStoryState {

    /**
     * Identifier of the active live story
     */
    public int32 story_id { get; construct set; }

    public ActiveStoryStateLive (
        int32 story_id
    ) {
        Object (
            story_id: story_id,
            tdlib_type: "activeStoryStateLive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat has some unread active stories
 */
public class TDLib.ActiveStoryStateUnread : ActiveStoryState {

    public ActiveStoryStateUnread () {
        Object (
            tdlib_type: "activeStoryStateUnread",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat has active stories, all of which were read
 */
public class TDLib.ActiveStoryStateRead : ActiveStoryState {

    public ActiveStoryStateRead () {
        Object (
            tdlib_type: "activeStoryStateRead",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
