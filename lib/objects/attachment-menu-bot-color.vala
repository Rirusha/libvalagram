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
 * Describes a color to highlight a bot added to attachment menu
 */
public class TDLib.AttachmentMenuBotColor : Error {

    /**
     * Color in the RGB format for light themes
     */
    public int32 light_color { get; construct set; }

    /**
     * Color in the RGB format for dark themes
     */
    public int32 dark_color { get; construct set; }

    public AttachmentMenuBotColor (
        int32 light_color,
        int32 dark_color
    ) {
        Object (
            light_color: light_color,
            dark_color: dark_color,
            tdlib_type: "attachmentMenuBotColor",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
