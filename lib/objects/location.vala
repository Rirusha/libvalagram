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
 * Describes a location on planet Earth
 */
public class TDLib.Location : Error {

    /**
     * Latitude of the location in degrees; as defined by the sender
     */
    public double latitude { get; construct set; }

    /**
     * Longitude of the location, in degrees; as defined by the sender
     */
    public double longitude { get; construct set; }

    /**
     * The estimated horizontal accuracy of the location, in meters; as
     * defined by the sender. 0 if unknown
     */
    public double horizontal_accuracy { get; construct set; }

    public Location (
        double latitude,
        double longitude,
        double horizontal_accuracy
    ) {
        Object (
            latitude: latitude,
            longitude: longitude,
            horizontal_accuracy: horizontal_accuracy,
            tdlib_type: "location",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
