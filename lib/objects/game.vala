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
 * Describes a game. Use getInternalLink with internalLinkTypeGame to
 * share the game
 */
public class TDLib.Game : Error {

    /**
     * Unique game identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Game short name
     */
    public string short_name { get; construct set; }

    /**
     * Game title
     */
    public string title { get; construct set; }

    /**
     * Game text, usually containing scoreboards for a game
     */
    public FormattedText text { get; construct set; }

    /**
     * Game description
     */
    public string description { get; construct set; }

    /**
     * Game photo
     */
    public Photo photo { get; construct set; }

    /**
     * Game animation; may be null
     */
    public Animation? animation { get; construct set; }

    public Game (
        int64 id_,
        string short_name,
        string title,
        FormattedText text,
        string description,
        Photo photo,
        Animation? animation
    ) {
        Object (
            id_: id_,
            short_name: short_name,
            title: title,
            text: text,
            description: description,
            photo: photo,
            animation: animation,
            tdlib_type: "game",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
