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
 * Contains information about a Telegram Passport authorization form that
 * was requested
 */
public class TDLib.PassportAuthorizationForm : Error {

    /**
     * Unique identifier of the authorization form
     */
    public int32 id_ { get; construct set; }

    /**
     * Telegram Passport elements that must be provided to complete the form
     */
    public Gee.ArrayList<PassportRequiredElement?> required_elements { get; construct set; default = new Gee.ArrayList<PassportRequiredElement?> (); }

    /**
     * URL for the privacy policy of the service; may be empty
     */
    public string privacy_policy_url { get; construct set; }

    public PassportAuthorizationForm (
        int32 id_,
        Gee.ArrayList<PassportRequiredElement?> required_elements,
        string privacy_policy_url
    ) {
        Object (
            id_: id_,
            required_elements: required_elements,
            privacy_policy_url: privacy_policy_url,
            tdlib_type: "passportAuthorizationForm",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
