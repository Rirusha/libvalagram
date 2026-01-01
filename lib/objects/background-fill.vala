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
 * Describes a fill of a background
 */
public abstract class TDLib.BackgroundFill : Error {}

/**
 * Describes a solid fill of a background
 */
public class TDLib.BackgroundFillSolid : BackgroundFill {

    /**
     * A color of the background in the RGB format
     */
    public int32 color { get; construct set; }

    public BackgroundFillSolid (
        int32 color
    ) {
        Object (
            color: color,
            tdlib_type: "backgroundFillSolid",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a gradient fill of a background
 */
public class TDLib.BackgroundFillGradient : BackgroundFill {

    /**
     * A top color of the background in the RGB format
     */
    public int32 top_color { get; construct set; }

    /**
     * A bottom color of the background in the RGB format
     */
    public int32 bottom_color { get; construct set; }

    /**
     * Clockwise rotation angle of the gradient, in degrees; 0-359. Must
     * always be divisible by 45
     */
    public int32 rotation_angle { get; construct set; }

    public BackgroundFillGradient (
        int32 top_color,
        int32 bottom_color,
        int32 rotation_angle
    ) {
        Object (
            top_color: top_color,
            bottom_color: bottom_color,
            rotation_angle: rotation_angle,
            tdlib_type: "backgroundFillGradient",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a freeform gradient fill of a background
 */
public class TDLib.BackgroundFillFreeformGradient : BackgroundFill {

    /**
     * A list of 3 or 4 colors of the freeform gradient in the RGB format
     */
    public Gee.ArrayList<int32?> colors { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public BackgroundFillFreeformGradient (
        Gee.ArrayList<int32?> colors
    ) {
        Object (
            colors: colors,
            tdlib_type: "backgroundFillFreeformGradient",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
