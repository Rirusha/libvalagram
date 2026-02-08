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
 * Contains the type of the content of a story
 */
public abstract class TDLib.StoryContentType : Error {}

/**
 * A photo story
 */
public class TDLib.StoryContentTypePhoto : StoryContentType {

    public StoryContentTypePhoto () {
        Object (
            tdlib_type: "storyContentTypePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video story
 */
public class TDLib.StoryContentTypeVideo : StoryContentType {

    public StoryContentTypeVideo () {
        Object (
            tdlib_type: "storyContentTypeVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A live story
 */
public class TDLib.StoryContentTypeLive : StoryContentType {

    public StoryContentTypeLive () {
        Object (
            tdlib_type: "storyContentTypeLive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A story of unknown content type
 */
public class TDLib.StoryContentTypeUnsupported : StoryContentType {

    public StoryContentTypeUnsupported () {
        Object (
            tdlib_type: "storyContentTypeUnsupported",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
