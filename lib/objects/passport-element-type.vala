/*
 * Copyright (C) 2024-2026 Vladimir Vaskov
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
 * Contains the type of Telegram Passport element
 */
public abstract class TDLib.PassportElementType : Error {}

/**
 * A Telegram Passport element containing the user's personal details
 */
public class TDLib.PassportElementTypePersonalDetails : PassportElementType {

    public PassportElementTypePersonalDetails () {
        Object (
            tdlib_type: "passportElementTypePersonalDetails",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's passport
 */
public class TDLib.PassportElementTypePassport : PassportElementType {

    public PassportElementTypePassport () {
        Object (
            tdlib_type: "passportElementTypePassport",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's driver license
 */
public class TDLib.PassportElementTypeDriverLicense : PassportElementType {

    public PassportElementTypeDriverLicense () {
        Object (
            tdlib_type: "passportElementTypeDriverLicense",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's identity card
 */
public class TDLib.PassportElementTypeIdentityCard : PassportElementType {

    public PassportElementTypeIdentityCard () {
        Object (
            tdlib_type: "passportElementTypeIdentityCard",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's internal passport
 */
public class TDLib.PassportElementTypeInternalPassport : PassportElementType {

    public PassportElementTypeInternalPassport () {
        Object (
            tdlib_type: "passportElementTypeInternalPassport",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's address
 */
public class TDLib.PassportElementTypeAddress : PassportElementType {

    public PassportElementTypeAddress () {
        Object (
            tdlib_type: "passportElementTypeAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's utility bill
 */
public class TDLib.PassportElementTypeUtilityBill : PassportElementType {

    public PassportElementTypeUtilityBill () {
        Object (
            tdlib_type: "passportElementTypeUtilityBill",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's bank statement
 */
public class TDLib.PassportElementTypeBankStatement : PassportElementType {

    public PassportElementTypeBankStatement () {
        Object (
            tdlib_type: "passportElementTypeBankStatement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's rental agreement
 */
public class TDLib.PassportElementTypeRentalAgreement : PassportElementType {

    public PassportElementTypeRentalAgreement () {
        Object (
            tdlib_type: "passportElementTypeRentalAgreement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the registration page of the
 * user's passport
 */
public class TDLib.PassportElementTypePassportRegistration : PassportElementType {

    public PassportElementTypePassportRegistration () {
        Object (
            tdlib_type: "passportElementTypePassportRegistration",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's temporary
 * registration
 */
public class TDLib.PassportElementTypeTemporaryRegistration : PassportElementType {

    public PassportElementTypeTemporaryRegistration () {
        Object (
            tdlib_type: "passportElementTypeTemporaryRegistration",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's phone number
 */
public class TDLib.PassportElementTypePhoneNumber : PassportElementType {

    public PassportElementTypePhoneNumber () {
        Object (
            tdlib_type: "passportElementTypePhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's email address
 */
public class TDLib.PassportElementTypeEmailAddress : PassportElementType {

    public PassportElementTypeEmailAddress () {
        Object (
            tdlib_type: "passportElementTypeEmailAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
