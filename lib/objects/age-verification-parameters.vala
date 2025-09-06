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
 * Describes parameters for age verification of the current user
 */
public class TDLib.AgeVerificationParameters : Error {

    /**
     * The minimum age required to view restricted content
     */
    public int32 min_age { get; construct set; }

    /**
     * Username of the bot which main Web App may be used to verify age of
     * the user
     */
    public string verification_bot_username { get; construct set; }

    /**
     * Unique name for the country or region, which legislation required age
     * verification. May be used to get the corresponding localization key
     */
    public string country { get; construct set; }

    public AgeVerificationParameters (
        int32 min_age,
        string verification_bot_username,
        string country
    ) {
        Object (
            min_age: min_age,
            verification_bot_username: verification_bot_username,
            country: country,
            tdlib_type: "ageVerificationParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
