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
 * Represents a level of features for a message sent in a live story
 * group call
 */
public class TDLib.GroupCallMessageLevel : Error {

    /**
     * The minimum number of Telegram Stars required to get features of the
     * level
     */
    public int64 min_star_count { get; construct set; }

    /**
     * The amount of time the message of this level will be pinned, in
     * seconds
     */
    public int32 pin_duration { get; construct set; }

    /**
     * The maximum allowed length of the message text
     */
    public int32 max_text_length { get; construct set; }

    /**
     * The maximum allowed number of custom emoji in the message text
     */
    public int32 max_custom_emoji_count { get; construct set; }

    /**
     * The first color used to show the message text in the RGB format
     */
    public int32 first_color { get; construct set; }

    /**
     * The second color used to show the message text in the RGB format
     */
    public int32 second_color { get; construct set; }

    /**
     * Background color for the message the RGB format
     */
    public int32 background_color { get; construct set; }

    public GroupCallMessageLevel (
        int64 min_star_count,
        int32 pin_duration,
        int32 max_text_length,
        int32 max_custom_emoji_count,
        int32 first_color,
        int32 second_color,
        int32 background_color
    ) {
        Object (
            min_star_count: min_star_count,
            pin_duration: pin_duration,
            max_text_length: max_text_length,
            max_custom_emoji_count: max_custom_emoji_count,
            first_color: first_color,
            second_color: second_color,
            background_color: background_color,
            tdlib_type: "groupCallMessageLevel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
