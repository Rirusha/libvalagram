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
 * Returns a link preview by the text of a message. Do not call this
 * function too often. Returns a 404 error if the text has no link
 * preview
 */
public class TDLib.GetLinkPreview : TDObject {

    /**
     * Message text with formatting
     */
    public FormattedText text { get; construct set; }

    /**
     * Options to be used for generation of the link preview; pass null to
     * use default link preview options
     */
    public LinkPreviewOptions link_preview_options { get; construct set; }

    public GetLinkPreview (
        FormattedText text,
        LinkPreviewOptions link_preview_options
    ) {
        Object (
            text: text,
            link_preview_options: link_preview_options,
            tdlib_type: "getLinkPreview",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
