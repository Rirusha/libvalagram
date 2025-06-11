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
 * Describes the reason why a code needs to be re-sent
 */
public abstract class TDLib.ResendCodeReason : Error {}

/**
 * The user requested to resend the code
 */
public class TDLib.ResendCodeReasonUserRequest : ResendCodeReason {

    public ResendCodeReasonUserRequest () {
        Object (
            tdlib_type: "resendCodeReasonUserRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The code is re-sent, because device verification has failed
 */
public class TDLib.ResendCodeReasonVerificationFailed : ResendCodeReason {

    /**
     * Cause of the verification failure, for example,
     * "PLAY_SERVICES_NOT_AVAILABLE", "APNS_RECEIVE_TIMEOUT", or
     * "APNS_INIT_FAILED"
     */
    public string error_message { get; construct set; }

    public ResendCodeReasonVerificationFailed (
        string error_message
    ) {
        Object (
            error_message: error_message,
            tdlib_type: "resendCodeReasonVerificationFailed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
