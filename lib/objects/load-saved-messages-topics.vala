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
 * Loads more Saved Messages topics. The loaded topics will be sent
 * through updateSavedMessagesTopic. Topics are sorted by their
 * topic.order in descending order. Returns a 404 error if all topics
 * have been loaded
 */
internal class TDLib.LoadSavedMessagesTopics : TDObject {

    /**
     * The maximum number of topics to be loaded. For optimal performance,
     * the number of loaded topics is chosen by TDLib and can be smaller than
     * the specified limit, even if the end of the list is not reached
     */
    public int32 limit { get; construct set; }

    public LoadSavedMessagesTopics (
        int32 limit
    ) {
        Object (
            limit: limit,
            tdlib_type: "loadSavedMessagesTopics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
