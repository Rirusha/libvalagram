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
 * Handles a push notification. Returns error with code 406 if the push
 * notification is not supported and connection to the server is required
 * to fetch new data. Can be called before authorization
 */
public class TDLib.ProcessPushNotification : TDObject {

    /**
     * JSON-encoded push notification payload with all fields sent by the
     * server, and "google.sent_time" and "google.notification.sound" fields
     * added
     */
    public string payload { get; construct set; }

    public ProcessPushNotification (
        string payload
    ) {
        Object (
            payload: payload,
            tdlib_type: "processPushNotification",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
