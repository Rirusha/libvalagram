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
 * Describes a clickable rectangle area on a story media
 */
public class TDLib.StoryArea : Error {

    /**
     * Position of the area
     */
    public StoryAreaPosition position { get; construct set; }

    /**
     * Type of the area
     */
    public StoryAreaType type_ { get; construct set; }

    public StoryArea (
        StoryAreaPosition position,
        StoryAreaType type_
    ) {
        Object (
            position: position,
            type_: type_,
            tdlib_type: "storyArea",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
