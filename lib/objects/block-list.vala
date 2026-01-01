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
 * Describes type of block list
 */
public abstract class TDLib.BlockList : Error {}

/**
 * The main block list that disallows writing messages to the current
 * user, receiving their status and photo, viewing of stories, and some
 * other actions
 */
public class TDLib.BlockListMain : BlockList {

    public BlockListMain () {
        Object (
            tdlib_type: "blockListMain",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The block list that disallows viewing of stories of the current user
 */
public class TDLib.BlockListStories : BlockList {

    public BlockListStories () {
        Object (
            tdlib_type: "blockListStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
