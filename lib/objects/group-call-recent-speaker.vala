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
 * Describes a recently speaking participant in a group call
 */
public class TDLib.GroupCallRecentSpeaker : Error {

    /**
     * Group call participant identifier
     */
    public MessageSender participant_id { get; construct set; }

    /**
     * True, is the user has spoken recently
     */
    public bool is_speaking { get; construct set; }

    public GroupCallRecentSpeaker (
        MessageSender participant_id,
        bool is_speaking
    ) {
        Object (
            participant_id: participant_id,
            is_speaking: is_speaking,
            tdlib_type: "groupCallRecentSpeaker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
