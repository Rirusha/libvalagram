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
 * Contains parameters of the application theme
 */
public class TDLib.ThemeParameters : Error {

    /**
     * A color of the background in the RGB format
     */
    public int32 background_color { get; construct set; }

    /**
     * A secondary color for the background in the RGB format
     */
    public int32 secondary_background_color { get; construct set; }

    /**
     * A color of the header background in the RGB format
     */
    public int32 header_background_color { get; construct set; }

    /**
     * A color of the bottom bar background in the RGB format
     */
    public int32 bottom_bar_background_color { get; construct set; }

    /**
     * A color of the section background in the RGB format
     */
    public int32 section_background_color { get; construct set; }

    /**
     * A color of the section separator in the RGB format
     */
    public int32 section_separator_color { get; construct set; }

    /**
     * A color of text in the RGB format
     */
    public int32 text_color { get; construct set; }

    /**
     * An accent color of the text in the RGB format
     */
    public int32 accent_text_color { get; construct set; }

    /**
     * A color of text on the section headers in the RGB format
     */
    public int32 section_header_text_color { get; construct set; }

    /**
     * A color of the subtitle text in the RGB format
     */
    public int32 subtitle_text_color { get; construct set; }

    /**
     * A color of the text for destructive actions in the RGB format
     */
    public int32 destructive_text_color { get; construct set; }

    /**
     * A color of hints in the RGB format
     */
    public int32 hint_color { get; construct set; }

    /**
     * A color of links in the RGB format
     */
    public int32 link_color { get; construct set; }

    /**
     * A color of the buttons in the RGB format
     */
    public int32 button_color { get; construct set; }

    /**
     * A color of text on the buttons in the RGB format
     */
    public int32 button_text_color { get; construct set; }

    public ThemeParameters (
        int32 background_color,
        int32 secondary_background_color,
        int32 header_background_color,
        int32 bottom_bar_background_color,
        int32 section_background_color,
        int32 section_separator_color,
        int32 text_color,
        int32 accent_text_color,
        int32 section_header_text_color,
        int32 subtitle_text_color,
        int32 destructive_text_color,
        int32 hint_color,
        int32 link_color,
        int32 button_color,
        int32 button_text_color
    ) {
        Object (
            background_color: background_color,
            secondary_background_color: secondary_background_color,
            header_background_color: header_background_color,
            bottom_bar_background_color: bottom_bar_background_color,
            section_background_color: section_background_color,
            section_separator_color: section_separator_color,
            text_color: text_color,
            accent_text_color: accent_text_color,
            section_header_text_color: section_header_text_color,
            subtitle_text_color: subtitle_text_color,
            destructive_text_color: destructive_text_color,
            hint_color: hint_color,
            link_color: link_color,
            button_color: button_color,
            button_text_color: button_text_color,
            tdlib_type: "themeParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
