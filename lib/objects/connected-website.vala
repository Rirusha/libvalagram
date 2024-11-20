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
 * Contains information about one website the current user is logged in
 * with Telegram
 */
public class TDLib.ConnectedWebsite : Error {

    /**
     * Website identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * The domain name of the website
     */
    public string domain_name { get; construct set; }

    /**
     * User identifier of a bot linked with the website
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * The version of a browser used to log in
     */
    public string browser { get; construct set; }

    /**
     * Operating system the browser is running on
     */
    public string platform { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the user was logged in
     */
    public int32 log_in_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when obtained authorization was last
     * used
     */
    public int32 last_active_date { get; construct set; }

    /**
     * IP address from which the user was logged in, in human-readable format
     */
    public string ip_address { get; construct set; }

    /**
     * Human-readable description of a country and a region from which the
     * user was logged in, based on the IP address
     */
    public string location { get; construct set; }

    public ConnectedWebsite (
        int64 id_,
        string domain_name,
        int64 bot_user_id,
        string browser,
        string platform,
        int32 log_in_date,
        int32 last_active_date,
        string ip_address,
        string location
    ) {
        Object (
            id_: id_,
            domain_name: domain_name,
            bot_user_id: bot_user_id,
            browser: browser,
            platform: platform,
            log_in_date: log_in_date,
            last_active_date: last_active_date,
            ip_address: ip_address,
            location: location,
            tdlib_type: "connectedWebsite",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
