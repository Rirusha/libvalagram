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
 * Requests QR code authentication by scanning a QR code on another
 * logged in device. Works only when the current authorization state is
 * authorizationStateWaitPhoneNumber,
 * or if there is no pending authentication query and the current
 * authorization state is authorizationStateWaitEmailAddress,
 * authorizationStateWaitEmailCode, authorizationStateWaitCode,
 * authorizationStateWaitRegistration, or authorizationStateWaitPassword
 */
public class TDLib.RequestQrCodeAuthentication : TDObject {

    /**
     * List of user identifiers of other users currently using the
     * application
     */
    public Gee.ArrayList<int64?> other_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public RequestQrCodeAuthentication (
        Gee.ArrayList<int64?> other_user_ids
    ) {
        Object (
            other_user_ids: other_user_ids,
            tdlib_type: "requestQrCodeAuthentication",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
