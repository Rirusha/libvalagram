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
 * Contains information about a group call participant's video channel
 */
public class TDLib.GroupCallParticipantVideoInfo : Error {

    /**
     * List of synchronization source groups of the video
     */
    public Gee.ArrayList<GroupCallVideoSourceGroup?> source_groups { get; construct set; default = new Gee.ArrayList<GroupCallVideoSourceGroup?> (); }

    /**
     * Video channel endpoint identifier
     */
    public string endpoint_id { get; construct set; }

    /**
     * True, if the video is paused. This flag needs to be ignored, if new
     * video frames are received
     */
    public bool is_paused { get; construct set; }

    public GroupCallParticipantVideoInfo (
        Gee.ArrayList<GroupCallVideoSourceGroup?> source_groups,
        string endpoint_id,
        bool is_paused
    ) {
        Object (
            source_groups: source_groups,
            endpoint_id: endpoint_id,
            is_paused: is_paused,
            tdlib_type: "groupCallParticipantVideoInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
