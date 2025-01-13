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
 * Registers the currently used device for receiving push notifications.
 * Returns a globally unique identifier of the push notification
 * subscription
 */
public class TDLib.RegisterDevice : TDObject {

    /**
     * Device token
     */
    public DeviceToken device_token { get; construct set; }

    /**
     * List of user identifiers of other users currently using the
     * application
     */
    public Gee.ArrayList<int64?> other_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public RegisterDevice (
        DeviceToken device_token,
        Gee.ArrayList<int64?> other_user_ids
    ) {
        Object (
            device_token: device_token,
            other_user_ids: other_user_ids,
            tdlib_type: "registerDevice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
