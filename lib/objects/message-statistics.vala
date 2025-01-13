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
 * A detailed statistics about a message
 */
public class TDLib.MessageStatistics : Error {

    /**
     * A graph containing number of message views and shares
     */
    public StatisticalGraph message_interaction_graph { get; construct set; }

    /**
     * A graph containing number of message reactions
     */
    public StatisticalGraph message_reaction_graph { get; construct set; }

    public MessageStatistics (
        StatisticalGraph message_interaction_graph,
        StatisticalGraph message_reaction_graph
    ) {
        Object (
            message_interaction_graph: message_interaction_graph,
            message_reaction_graph: message_reaction_graph,
            tdlib_type: "messageStatistics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
