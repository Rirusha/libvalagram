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
 * Sets group call title. Requires groupCall.can_be_managed group call
 * flag
 */
public class TDLib.SetGroupCallTitle : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * New group call title; 1-64 characters
     */
    public string title { get; construct set; }

    public SetGroupCallTitle (
        int32 group_call_id,
        string title
    ) {
        Object (
            group_call_id: group_call_id,
            title: title,
            tdlib_type: "setGroupCallTitle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
