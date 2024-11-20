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
 * A value with information about its recent changes
 */
public class TDLib.StatisticalValue : Error {

    /**
     * The current value
     */
    public double value { get; construct set; }

    /**
     * The value for the previous day
     */
    public double previous_value { get; construct set; }

    /**
     * The growth rate of the value, as a percentage
     */
    public double growth_rate_percentage { get; construct set; }

    public StatisticalValue (
        double value,
        double previous_value,
        double growth_rate_percentage
    ) {
        Object (
            value: value,
            previous_value: previous_value,
            growth_rate_percentage: growth_rate_percentage,
            tdlib_type: "statisticalValue",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
