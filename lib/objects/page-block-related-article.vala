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
 * Contains information about a related article
 */
public class TDLib.PageBlockRelatedArticle : Error {

    /**
     * Related article URL
     */
    public string url { get; construct set; }

    /**
     * Article title; may be empty
     */
    public string title { get; construct set; }

    /**
     * Article description; may be empty
     */
    public string description { get; construct set; }

    /**
     * Article photo; may be null
     */
    public Photo? photo { get; construct set; }

    /**
     * Article author; may be empty
     */
    public string author { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the article was published; 0 if
     * unknown
     */
    public int32 publish_date { get; construct set; }

    public PageBlockRelatedArticle (
        string url,
        string title,
        string description,
        Photo? photo,
        string author,
        int32 publish_date
    ) {
        Object (
            url: url,
            title: title,
            description: description,
            photo: photo,
            author: author,
            publish_date: publish_date,
            tdlib_type: "pageBlockRelatedArticle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
