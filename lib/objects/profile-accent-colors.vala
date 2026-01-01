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
 * Contains information about supported accent colors for user profile
 * photo background in RGB format
 */
public class TDLib.ProfileAccentColors : Error {

    /**
     * The list of 1-2 colors in RGB format, describing the colors, as
     * expected to be shown in the color palette settings
     */
    public Gee.ArrayList<int32?> palette_colors { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * The list of 1-2 colors in RGB format, describing the colors, as
     * expected to be used for the profile photo background
     */
    public Gee.ArrayList<int32?> background_colors { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * The list of 2 colors in RGB format, describing the colors of the
     * gradient to be used for the unread active story indicator around
     * profile photo
     */
    public Gee.ArrayList<int32?> story_colors { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public ProfileAccentColors (
        Gee.ArrayList<int32?> palette_colors,
        Gee.ArrayList<int32?> background_colors,
        Gee.ArrayList<int32?> story_colors
    ) {
        Object (
            palette_colors: palette_colors,
            background_colors: background_colors,
            story_colors: story_colors,
            tdlib_type: "profileAccentColors",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
