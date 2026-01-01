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
 * Represents a tag used in Saved Messages or a Saved Messages topic
 */
public class TDLib.SavedMessagesTag : Error {

    /**
     * The tag
     */
    public ReactionType tag { get; construct set; }

    /**
     * Label of the tag; 0-12 characters. Always empty if the tag is returned
     * for a Saved Messages topic
     */
    public string label { get; construct set; }

    /**
     * Number of times the tag was used; may be 0 if the tag has non-empty
     * label
     */
    public int32 count { get; construct set; }

    public SavedMessagesTag (
        ReactionType tag,
        string label,
        int32 count
    ) {
        Object (
            tag: tag,
            label: label,
            count: count,
            tdlib_type: "savedMessagesTag",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
