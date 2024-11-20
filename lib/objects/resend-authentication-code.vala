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
 * Resends an authentication code to the user. Works only when the
 * current authorization state is authorizationStateWaitCode, the
 * next_code_type of the result is not null
 * and the server-specified timeout has passed, or when the current
 * authorization state is authorizationStateWaitEmailCode
 */
internal class TDLib.ResendAuthenticationCode : TDObject {

    /**
     * Reason of code resending; pass null if unknown
     */
    public ResendCodeReason reason { get; construct set; }

    public ResendAuthenticationCode (
        ResendCodeReason reason
    ) {
        Object (
            reason: reason,
            tdlib_type: "resendAuthenticationCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
