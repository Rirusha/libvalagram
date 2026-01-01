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
 * Describes a statistical graph
 */
public abstract class TDLib.StatisticalGraph : Error {}

/**
 * A graph data
 */
public class TDLib.StatisticalGraphData : StatisticalGraph {

    /**
     * Graph data in JSON format
     */
    public string json_data { get; construct set; }

    /**
     * If non-empty, a token which can be used to receive a zoomed in graph
     */
    public string zoom_token { get; construct set; }

    public StatisticalGraphData (
        string json_data,
        string zoom_token
    ) {
        Object (
            json_data: json_data,
            zoom_token: zoom_token,
            tdlib_type: "statisticalGraphData",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The graph data to be asynchronously loaded through
 * {@link Client.get_statistical_graph}
 */
public class TDLib.StatisticalGraphAsync : StatisticalGraph {

    /**
     * The token to use for data loading
     */
    public string token { get; construct set; }

    public StatisticalGraphAsync (
        string token
    ) {
        Object (
            token: token,
            tdlib_type: "statisticalGraphAsync",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An error message to be shown to the user instead of the graph
 */
public class TDLib.StatisticalGraphError : StatisticalGraph {

    /**
     * The error message
     */
    public string error_message { get; construct set; }

    public StatisticalGraphError (
        string error_message
    ) {
        Object (
            error_message: error_message,
            tdlib_type: "statisticalGraphError",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
