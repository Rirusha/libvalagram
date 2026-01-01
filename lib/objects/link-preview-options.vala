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
 * Options to be used for generation of a link preview
 */
public class TDLib.LinkPreviewOptions : Error {

    /**
     * True, if link preview must be disabled
     */
    public bool is_disabled { get; construct set; }

    /**
     * URL to use for link preview. If empty, then the first URL found in the
     * message text will be used
     */
    public string url { get; construct set; }

    /**
     * True, if shown media preview must be small; ignored in secret chats or
     * if the URL isn't explicitly specified
     */
    public bool force_small_media { get; construct set; }

    /**
     * True, if shown media preview must be large; ignored in secret chats or
     * if the URL isn't explicitly specified
     */
    public bool force_large_media { get; construct set; }

    /**
     * True, if link preview must be shown above message text; otherwise, the
     * link preview will be shown below the message text; ignored in secret
     * chats
     */
    public bool show_above_text { get; construct set; }

    public LinkPreviewOptions (
        bool is_disabled,
        string url,
        bool force_small_media,
        bool force_large_media,
        bool show_above_text
    ) {
        Object (
            is_disabled: is_disabled,
            url: url,
            force_small_media: force_small_media,
            force_large_media: force_large_media,
            show_above_text: show_above_text,
            tdlib_type: "linkPreviewOptions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
