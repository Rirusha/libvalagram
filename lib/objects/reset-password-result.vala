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
 * Represents result of 2-step verification password reset
 */
public abstract class TDLib.ResetPasswordResult : Error {}

/**
 * The password was reset
 */
public class TDLib.ResetPasswordResultOk : ResetPasswordResult {

    public ResetPasswordResultOk () {
        Object (
            tdlib_type: "resetPasswordResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The password reset request is pending
 */
public class TDLib.ResetPasswordResultPending : ResetPasswordResult {

    /**
     * Point in time (Unix timestamp) after which the password can be reset
     * immediately using resetPassword
     */
    public int32 pending_reset_date { get; construct set; }

    public ResetPasswordResultPending (
        int32 pending_reset_date
    ) {
        Object (
            pending_reset_date: pending_reset_date,
            tdlib_type: "resetPasswordResultPending",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The password reset request was declined
 */
public class TDLib.ResetPasswordResultDeclined : ResetPasswordResult {

    /**
     * Point in time (Unix timestamp) when the password reset can be retried
     */
    public int32 retry_date { get; construct set; }

    public ResetPasswordResultDeclined (
        int32 retry_date
    ) {
        Object (
            retry_date: retry_date,
            tdlib_type: "resetPasswordResultDeclined",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
