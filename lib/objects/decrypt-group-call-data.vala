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
 * Decrypts group call data received by tgcalls
 */
public class TDLib.DecryptGroupCallData : TDObject {

    /**
     * Group call identifier. The call must not be a video chat
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Identifier of the group call participant, which sent the data
     */
    public MessageSender participant_id { get; construct set; }

    /**
     * Data channel for which data was encrypted; pass null if unknown
     */
    public GroupCallDataChannel data_channel { get; construct set; }

    /**
     * Data to decrypt
     */
    public Bytes data { get; construct set; }

    public DecryptGroupCallData (
        int32 group_call_id,
        MessageSender participant_id,
        GroupCallDataChannel data_channel,
        Bytes data
    ) {
        Object (
            group_call_id: group_call_id,
            participant_id: participant_id,
            data_channel: data_channel,
            data: data,
            tdlib_type: "decryptGroupCallData",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
