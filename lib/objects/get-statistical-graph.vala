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
 * Loads an asynchronous or a zoomed in statistical graph
 */
internal class TDLib.GetStatisticalGraph : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The token for graph loading
     */
    public string token { get; construct set; }

    /**
     * X-value for zoomed in graph or 0 otherwise
     */
    public int64 x { get; construct set; }

    public GetStatisticalGraph (
        int64 chat_id,
        string token,
        int64 x
    ) {
        Object (
            chat_id: chat_id,
            token: token,
            x: x,
            tdlib_type: "getStatisticalGraph",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
