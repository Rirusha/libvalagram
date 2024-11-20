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
 * Toggles whether a group call participant hand is rased
 */
internal class TDLib.ToggleGroupCallParticipantIsHandRaised : TDObject {

    /**
     * Group call identifier
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Participant identifier
     */
    public MessageSender participant_id { get; construct set; }

    /**
     * Pass true if the user's hand needs to be raised. Only self hand can be
     * raised. Requires groupCall.can_be_managed group call flag to lower
     * other's hand
     */
    public bool is_hand_raised { get; construct set; }

    public ToggleGroupCallParticipantIsHandRaised (
        int32 group_call_id,
        MessageSender participant_id,
        bool is_hand_raised
    ) {
        Object (
            group_call_id: group_call_id,
            participant_id: participant_id,
            is_hand_raised: is_hand_raised,
            tdlib_type: "toggleGroupCallParticipantIsHandRaised",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
