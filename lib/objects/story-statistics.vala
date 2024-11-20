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
 * A detailed statistics about a story
 */
public class TDLib.StoryStatistics : Error {

    /**
     * A graph containing number of story views and shares
     */
    public StatisticalGraph story_interaction_graph { get; construct set; }

    /**
     * A graph containing number of story reactions
     */
    public StatisticalGraph story_reaction_graph { get; construct set; }

    public StoryStatistics (
        StatisticalGraph story_interaction_graph,
        StatisticalGraph story_reaction_graph
    ) {
        Object (
            story_interaction_graph: story_interaction_graph,
            story_reaction_graph: story_reaction_graph,
            tdlib_type: "storyStatistics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
