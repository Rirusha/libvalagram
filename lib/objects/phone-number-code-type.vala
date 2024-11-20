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
 * Describes type of the request for which a code is sent to a phone
 * number
 */
public abstract class TDLib.PhoneNumberCodeType : Error {}

/**
 * Checks ownership of a new phone number to change the user's
 * authentication phone number; for official Android and iOS applications
 * only
 */
public class TDLib.PhoneNumberCodeTypeChange : PhoneNumberCodeType {

    public PhoneNumberCodeTypeChange () {
        Object (
            tdlib_type: "phoneNumberCodeTypeChange",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Verifies ownership of a phone number to be added to the user's
 * Telegram Passport
 */
public class TDLib.PhoneNumberCodeTypeVerify : PhoneNumberCodeType {

    public PhoneNumberCodeTypeVerify () {
        Object (
            tdlib_type: "phoneNumberCodeTypeVerify",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Confirms ownership of a phone number to prevent account deletion while
 * handling links of the type internalLinkTypePhoneNumberConfirmation
 */
public class TDLib.PhoneNumberCodeTypeConfirmOwnership : PhoneNumberCodeType {

    /**
     * Hash value from the link
     */
    public string hash { get; construct set; }

    public PhoneNumberCodeTypeConfirmOwnership (
        string hash
    ) {
        Object (
            hash: hash,
            tdlib_type: "phoneNumberCodeTypeConfirmOwnership",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
