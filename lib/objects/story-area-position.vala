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
 * Describes position of a clickable rectangle area on a story media
 */
public class TDLib.StoryAreaPosition : Error {

    /**
     * The abscissa of the rectangle's center, as a percentage of the media
     * width
     */
    public double x_percentage { get; construct set; }

    /**
     * The ordinate of the rectangle's center, as a percentage of the media
     * height
     */
    public double y_percentage { get; construct set; }

    /**
     * The width of the rectangle, as a percentage of the media width
     */
    public double width_percentage { get; construct set; }

    /**
     * The height of the rectangle, as a percentage of the media height
     */
    public double height_percentage { get; construct set; }

    /**
     * Clockwise rotation angle of the rectangle, in degrees; 0-360
     */
    public double rotation_angle { get; construct set; }

    /**
     * The radius of the rectangle corner rounding, as a percentage of the
     * media width
     */
    public double corner_radius_percentage { get; construct set; }

    public StoryAreaPosition (
        double x_percentage,
        double y_percentage,
        double width_percentage,
        double height_percentage,
        double rotation_angle,
        double corner_radius_percentage
    ) {
        Object (
            x_percentage: x_percentage,
            y_percentage: y_percentage,
            width_percentage: width_percentage,
            height_percentage: height_percentage,
            rotation_angle: rotation_angle,
            corner_radius_percentage: corner_radius_percentage,
            tdlib_type: "storyAreaPosition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
