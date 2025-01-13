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
 * Describes media previews of a bot
 */
public class TDLib.BotMediaPreview : Error {

    /**
     * Point in time (Unix timestamp) when the preview was added or changed
     * last time
     */
    public int32 date { get; construct set; }

    /**
     * Content of the preview
     */
    public StoryContent content { get; construct set; }

    public BotMediaPreview (
        int32 date,
        StoryContent content
    ) {
        Object (
            date: date,
            content: content,
            tdlib_type: "botMediaPreview",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
