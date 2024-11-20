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
 * Contains information about one session in a Telegram application used
 * by the current user. Sessions must be shown to the user in the
 * returned order
 */
public class TDLib.Session : Error {

    /**
     * Session identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * True, if this session is the current session
     */
    public bool is_current { get; construct set; }

    /**
     * True, if a 2-step verification password is needed to complete
     * authorization of the session
     */
    public bool is_password_pending { get; construct set; }

    /**
     * True, if the session wasn't confirmed from another session
     */
    public bool is_unconfirmed { get; construct set; }

    /**
     * True, if incoming secret chats can be accepted by the session
     */
    public bool can_accept_secret_chats { get; construct set; }

    /**
     * True, if incoming calls can be accepted by the session
     */
    public bool can_accept_calls { get; construct set; }

    /**
     * Session type based on the system and application version, which can be
     * used to display a corresponding icon
     */
    public SessionType type_ { get; construct set; }

    /**
     * Telegram API identifier, as provided by the application
     */
    public int32 api_id { get; construct set; }

    /**
     * Name of the application, as provided by the application
     */
    public string application_name { get; construct set; }

    /**
     * The version of the application, as provided by the application
     */
    public string application_version { get; construct set; }

    /**
     * True, if the application is an official application or uses the api_id
     * of an official application
     */
    public bool is_official_application { get; construct set; }

    /**
     * Model of the device the application has been run or is running on, as
     * provided by the application
     */
    public string device_model { get; construct set; }

    /**
     * Operating system the application has been run or is running on, as
     * provided by the application
     */
    public string platform { get; construct set; }

    /**
     * Version of the operating system the application has been run or is
     * running on, as provided by the application
     */
    public string system_version { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the user has logged in
     */
    public int32 log_in_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the session was last used
     */
    public int32 last_active_date { get; construct set; }

    /**
     * IP address from which the session was created, in human-readable
     * format
     */
    public string ip_address { get; construct set; }

    /**
     * A human-readable description of the location from which the session
     * was created, based on the IP address
     */
    public string location { get; construct set; }

    public Session (
        int64 id_,
        bool is_current,
        bool is_password_pending,
        bool is_unconfirmed,
        bool can_accept_secret_chats,
        bool can_accept_calls,
        SessionType type_,
        int32 api_id,
        string application_name,
        string application_version,
        bool is_official_application,
        string device_model,
        string platform,
        string system_version,
        int32 log_in_date,
        int32 last_active_date,
        string ip_address,
        string location
    ) {
        Object (
            id_: id_,
            is_current: is_current,
            is_password_pending: is_password_pending,
            is_unconfirmed: is_unconfirmed,
            can_accept_secret_chats: can_accept_secret_chats,
            can_accept_calls: can_accept_calls,
            type_: type_,
            api_id: api_id,
            application_name: application_name,
            application_version: application_version,
            is_official_application: is_official_application,
            device_model: device_model,
            platform: platform,
            system_version: system_version,
            log_in_date: log_in_date,
            last_active_date: last_active_date,
            ip_address: ip_address,
            location: location,
            tdlib_type: "session",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
