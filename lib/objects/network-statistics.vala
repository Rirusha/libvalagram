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
 * A full list of available network statistic entries
 */
public class TDLib.NetworkStatistics : Error {

    /**
     * Point in time (Unix timestamp) from which the statistics are collected
     */
    public int32 since_date { get; construct set; }

    /**
     * Network statistics entries
     */
    public Gee.ArrayList<NetworkStatisticsEntry?> entries { get; construct set; default = new Gee.ArrayList<NetworkStatisticsEntry?> (); }

    public NetworkStatistics (
        int32 since_date,
        Gee.ArrayList<NetworkStatisticsEntry?> entries
    ) {
        Object (
            since_date: since_date,
            entries: entries,
            tdlib_type: "networkStatistics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
