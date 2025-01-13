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
 * Describes a Web App. Use getInternalLink with internalLinkTypeWebApp
 * to share the Web App
 */
public class TDLib.WebApp : Error {

    /**
     * Web App short name
     */
    public string short_name { get; construct set; }

    /**
     * Web App title
     */
    public string title { get; construct set; }

    /**
     * Web App description
     */
    public string description { get; construct set; }

    /**
     * Web App photo
     */
    public Photo photo { get; construct set; }

    /**
     * Web App animation; may be null
     */
    public Animation? animation { get; construct set; }

    public WebApp (
        string short_name,
        string title,
        string description,
        Photo photo,
        Animation? animation
    ) {
        Object (
            short_name: short_name,
            title: title,
            description: description,
            photo: photo,
            animation: animation,
            tdlib_type: "webApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
