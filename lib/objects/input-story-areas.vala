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
 * Contains a list of story areas to be added
 */
public class TDLib.InputStoryAreas : Error {

    /**
     * List of input story areas. Currently, a story can have
     * up to 10 inputStoryAreaTypeLocation, inputStoryAreaTypeFoundVenue, and
     * inputStoryAreaTypePreviousVenue areas,
     * up to getOption("story_suggested_reaction_area_count_max")
     * inputStoryAreaTypeSuggestedReaction areas,
     * up to 1 inputStoryAreaTypeMessage area,
     * up to getOption("story_link_area_count_max") inputStoryAreaTypeLink
     * areas if the current user is a Telegram Premium user, and
     * up to 3 inputStoryAreaTypeWeather areas
     */
    public Gee.ArrayList<InputStoryArea?> areas { get; construct set; default = new Gee.ArrayList<InputStoryArea?> (); }

    public InputStoryAreas (
        Gee.ArrayList<InputStoryArea?> areas
    ) {
        Object (
            areas: areas,
            tdlib_type: "inputStoryAreas",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
