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
 * Reports that authentication code wasn't delivered via SMS to the
 * specified phone number; for official mobile applications only
 */
internal class TDLib.ReportPhoneNumberCodeMissing : TDObject {

    /**
     * Current mobile network code
     */
    public string mobile_network_code { get; construct set; }

    public ReportPhoneNumberCodeMissing (
        string mobile_network_code
    ) {
        Object (
            mobile_network_code: mobile_network_code,
            tdlib_type: "reportPhoneNumberCodeMissing",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
