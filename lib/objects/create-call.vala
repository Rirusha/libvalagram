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
 * Creates a new call
 */
public class TDLib.CreateCall : TDObject {

    /**
     * Identifier of the user to be called
     */
    public int64 user_id { get; construct set; }

    /**
     * The call protocols supported by the application
     */
    public CallProtocol protocol { get; construct set; }

    /**
     * Pass true to create a video call
     */
    public bool is_video { get; construct set; }

    public CreateCall (
        int64 user_id,
        CallProtocol protocol,
        bool is_video
    ) {
        Object (
            user_id: user_id,
            protocol: protocol,
            is_video: is_video,
            tdlib_type: "createCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
