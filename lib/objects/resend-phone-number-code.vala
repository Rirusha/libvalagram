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
 * Resends the authentication code sent to a phone number. Works only if
 * the previously received authenticationCodeInfo next_code_type was not
 * null and the server-specified timeout has passed
 */
public class TDLib.ResendPhoneNumberCode : TDObject {

    /**
     * Reason of code resending; pass null if unknown
     */
    public ResendCodeReason reason { get; construct set; }

    public ResendPhoneNumberCode (
        ResendCodeReason reason
    ) {
        Object (
            reason: reason,
            tdlib_type: "resendPhoneNumberCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
