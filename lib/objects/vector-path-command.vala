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
 * Represents a vector path command
 */
public abstract class TDLib.VectorPathCommand : Error {}

/**
 * A straight line to a given point
 */
public class TDLib.VectorPathCommandLine : VectorPathCommand {

    /**
     * The end point of the straight line
     */
    public Point end_point { get; construct set; }

    public VectorPathCommandLine (
        Point end_point
    ) {
        Object (
            end_point: end_point,
            tdlib_type: "vectorPathCommandLine",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A cubic Bézier curve to a given point
 */
public class TDLib.VectorPathCommandCubicBezierCurve : VectorPathCommand {

    /**
     * The start control point of the curve
     */
    public Point start_control_point { get; construct set; }

    /**
     * The end control point of the curve
     */
    public Point end_control_point { get; construct set; }

    /**
     * The end point of the curve
     */
    public Point end_point { get; construct set; }

    public VectorPathCommandCubicBezierCurve (
        Point start_control_point,
        Point end_control_point,
        Point end_point
    ) {
        Object (
            start_control_point: start_control_point,
            end_control_point: end_control_point,
            end_point: end_point,
            tdlib_type: "vectorPathCommandCubicBezierCurve",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
