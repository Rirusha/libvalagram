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
 * Position on a photo where a mask is placed
 */
public class TDLib.MaskPosition : Error {

    /**
     * Part of the face, relative to which the mask is placed
     */
    public MaskPoint point { get; construct set; }

    /**
     * Shift by X-axis measured in widths of the mask scaled to the face
     * size, from left to right. (For example, -1.0 will place the mask just
     * to the left of the default mask position)
     */
    public double x_shift { get; construct set; }

    /**
     * Shift by Y-axis measured in heights of the mask scaled to the face
     * size, from top to bottom. (For example, 1.0 will place the mask just
     * below the default mask position)
     */
    public double y_shift { get; construct set; }

    /**
     * Mask scaling coefficient. (For example, 2.0 means a doubled size)
     */
    public double scale { get; construct set; }

    public MaskPosition (
        MaskPoint point,
        double x_shift,
        double y_shift,
        double scale
    ) {
        Object (
            point: point,
            x_shift: x_shift,
            y_shift: y_shift,
            scale: scale,
            tdlib_type: "maskPosition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
