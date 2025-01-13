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
 * Describes a link preview
 */
public class TDLib.LinkPreview : Error {

    /**
     * Original URL of the link
     */
    public string url { get; construct set; }

    /**
     * URL to display
     */
    public string display_url { get; construct set; }

    /**
     * Short name of the site (e.g., Google Docs, App Store)
     */
    public string site_name { get; construct set; }

    /**
     * Title of the content
     */
    public string title { get; construct set; }

    /**
     * Description of the content
     */
    public FormattedText description { get; construct set; }

    /**
     * Author of the content
     */
    public string author { get; construct set; }

    /**
     * Type of the link preview
     */
    public LinkPreviewType type_ { get; construct set; }

    /**
     * True, if size of media in the preview can be changed
     */
    public bool has_large_media { get; construct set; }

    /**
     * True, if large media preview must be shown; otherwise, the media
     * preview must be shown small and only the first frame must be shown for
     * videos
     */
    public bool show_large_media { get; construct set; }

    /**
     * True, if media must be shown above link preview description;
     * otherwise, the media must be shown below the description
     */
    public bool show_media_above_description { get; construct set; }

    /**
     * True, if there is no need to show an ordinary open URL confirmation,
     * when opening the URL from the preview, because the URL is shown in the
     * message text in clear
     */
    public bool skip_confirmation { get; construct set; }

    /**
     * True, if the link preview must be shown above message text; otherwise,
     * the link preview must be shown below the message text
     */
    public bool show_above_text { get; construct set; }

    /**
     * Version of instant view (currently, can be 1 or 2) for the web page; 0
     * if none
     */
    public int32 instant_view_version { get; construct set; }

    public LinkPreview (
        string url,
        string display_url,
        string site_name,
        string title,
        FormattedText description,
        string author,
        LinkPreviewType type_,
        bool has_large_media,
        bool show_large_media,
        bool show_media_above_description,
        bool skip_confirmation,
        bool show_above_text,
        int32 instant_view_version
    ) {
        Object (
            url: url,
            display_url: display_url,
            site_name: site_name,
            title: title,
            description: description,
            author: author,
            type_: type_,
            has_large_media: has_large_media,
            show_large_media: show_large_media,
            show_media_above_description: show_media_above_description,
            skip_confirmation: skip_confirmation,
            show_above_text: show_above_text,
            instant_view_version: instant_view_version,
            tdlib_type: "linkPreview",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
