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
 * Discards a call
 */
internal class TDLib.DiscardCall : TDObject {

    /**
     * Call identifier
     */
    public int32 call_id { get; construct set; }

    /**
     * Pass true if the user was disconnected
     */
    public bool is_disconnected { get; construct set; }

    /**
     * The call duration, in seconds
     */
    public int32 duration { get; construct set; }

    /**
     * Pass true if the call was a video call
     */
    public bool is_video { get; construct set; }

    /**
     * Identifier of the connection used during the call
     */
    public int64 connection_id { get; construct set; }

    public DiscardCall (
        int32 call_id,
        bool is_disconnected,
        int32 duration,
        bool is_video,
        int64 connection_id
    ) {
        Object (
            call_id: call_id,
            is_disconnected: is_disconnected,
            duration: duration,
            is_video: is_video,
            connection_id: connection_id,
            tdlib_type: "discardCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
