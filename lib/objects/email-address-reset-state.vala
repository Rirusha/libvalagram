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
 * Describes reset state of an email address
 */
public abstract class TDLib.EmailAddressResetState : Error {}

/**
 * Email address can be reset after the given period. Call
 * resetAuthenticationEmailAddress to reset it and allow the user to
 * authorize with a code sent to the user's phone number
 */
public class TDLib.EmailAddressResetStateAvailable : EmailAddressResetState {

    /**
     * Time required to wait before the email address can be reset; 0 if the
     * user is subscribed to Telegram Premium
     */
    public int32 wait_period { get; construct set; }

    public EmailAddressResetStateAvailable (
        int32 wait_period
    ) {
        Object (
            wait_period: wait_period,
            tdlib_type: "emailAddressResetStateAvailable",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Email address reset has already been requested. Call
 * resetAuthenticationEmailAddress to check whether immediate reset is
 * possible
 */
public class TDLib.EmailAddressResetStatePending : EmailAddressResetState {

    /**
     * Left time before the email address will be reset, in seconds.
     * updateAuthorizationState is not sent when this field changes
     */
    public int32 reset_in { get; construct set; }

    public EmailAddressResetStatePending (
        int32 reset_in
    ) {
        Object (
            reset_in: reset_in,
            tdlib_type: "emailAddressResetStatePending",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
