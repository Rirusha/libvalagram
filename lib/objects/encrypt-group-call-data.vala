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
 * Encrypts group call data before sending them over network using
 * tgcalls
 */
public class TDLib.EncryptGroupCallData : TDObject {

    /**
     * Group call identifier. The call must not be a video chat
     */
    public int32 group_call_id { get; construct set; }

    /**
     * Data channel for which data is encrypted
     */
    public GroupCallDataChannel data_channel { get; construct set; }

    /**
     * Data to encrypt
     */
    public Bytes data { get; construct set; }

    /**
     * Size of data prefix that must be kept unencrypted
     */
    public int32 unencrypted_prefix_size { get; construct set; }

    public EncryptGroupCallData (
        int32 group_call_id,
        GroupCallDataChannel data_channel,
        Bytes data,
        int32 unencrypted_prefix_size
    ) {
        Object (
            group_call_id: group_call_id,
            data_channel: data_channel,
            data: data,
            unencrypted_prefix_size: unencrypted_prefix_size,
            tdlib_type: "encryptGroupCallData",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
