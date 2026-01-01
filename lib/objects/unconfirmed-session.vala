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
 * Contains information about an unconfirmed session
 */
public class TDLib.UnconfirmedSession : Error {

    /**
     * Session identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the user has logged in
     */
    public int32 log_in_date { get; construct set; }

    /**
     * Model of the device that was used for the session creation, as
     * provided by the application
     */
    public string device_model { get; construct set; }

    /**
     * A human-readable description of the location from which the session
     * was created, based on the IP address
     */
    public string location { get; construct set; }

    public UnconfirmedSession (
        int64 id_,
        int32 log_in_date,
        string device_model,
        string location
    ) {
        Object (
            id_: id_,
            log_in_date: log_in_date,
            device_model: device_model,
            location: location,
            tdlib_type: "unconfirmedSession",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
