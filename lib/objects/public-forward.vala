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
 * Describes a public forward or repost of a story
 */
public abstract class TDLib.PublicForward : Error {}

/**
 * Contains a public forward as a message
 */
public class TDLib.PublicForwardMessage : PublicForward {

    /**
     * Information about the message
     */
    public new Message message { get; construct set; }

    public PublicForwardMessage (
        Message message
    ) {
        Object (
            message: message,
            tdlib_type: "publicForwardMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Contains a public repost to a story
 */
public class TDLib.PublicForwardStory : PublicForward {

    /**
     * Information about the story
     */
    public Story story { get; construct set; }

    public PublicForwardStory (
        Story story
    ) {
        Object (
            story: story,
            tdlib_type: "publicForwardStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
