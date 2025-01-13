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
 * Contains information about a Telegram Passport element to be saved
 */
public abstract class TDLib.InputPassportElement : Error {}

/**
 * A Telegram Passport element to be saved containing the user's personal
 * details
 */
public class TDLib.InputPassportElementPersonalDetails : InputPassportElement {

    /**
     * Personal details of the user
     */
    public PersonalDetails personal_details { get; construct set; }

    public InputPassportElementPersonalDetails (
        PersonalDetails personal_details
    ) {
        Object (
            personal_details: personal_details,
            tdlib_type: "inputPassportElementPersonalDetails",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's passport
 */
public class TDLib.InputPassportElementPassport : InputPassportElement {

    /**
     * The passport to be saved
     */
    public InputIdentityDocument passport { get; construct set; }

    public InputPassportElementPassport (
        InputIdentityDocument passport
    ) {
        Object (
            passport: passport,
            tdlib_type: "inputPassportElementPassport",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's driver
 * license
 */
public class TDLib.InputPassportElementDriverLicense : InputPassportElement {

    /**
     * The driver license to be saved
     */
    public InputIdentityDocument driver_license { get; construct set; }

    public InputPassportElementDriverLicense (
        InputIdentityDocument driver_license
    ) {
        Object (
            driver_license: driver_license,
            tdlib_type: "inputPassportElementDriverLicense",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's identity
 * card
 */
public class TDLib.InputPassportElementIdentityCard : InputPassportElement {

    /**
     * The identity card to be saved
     */
    public InputIdentityDocument identity_card { get; construct set; }

    public InputPassportElementIdentityCard (
        InputIdentityDocument identity_card
    ) {
        Object (
            identity_card: identity_card,
            tdlib_type: "inputPassportElementIdentityCard",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's internal
 * passport
 */
public class TDLib.InputPassportElementInternalPassport : InputPassportElement {

    /**
     * The internal passport to be saved
     */
    public InputIdentityDocument internal_passport { get; construct set; }

    public InputPassportElementInternalPassport (
        InputIdentityDocument internal_passport
    ) {
        Object (
            internal_passport: internal_passport,
            tdlib_type: "inputPassportElementInternalPassport",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's address
 */
public class TDLib.InputPassportElementAddress : InputPassportElement {

    /**
     * The address to be saved
     */
    public Address address { get; construct set; }

    public InputPassportElementAddress (
        Address address
    ) {
        Object (
            address: address,
            tdlib_type: "inputPassportElementAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's utility
 * bill
 */
public class TDLib.InputPassportElementUtilityBill : InputPassportElement {

    /**
     * The utility bill to be saved
     */
    public InputPersonalDocument utility_bill { get; construct set; }

    public InputPassportElementUtilityBill (
        InputPersonalDocument utility_bill
    ) {
        Object (
            utility_bill: utility_bill,
            tdlib_type: "inputPassportElementUtilityBill",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's bank
 * statement
 */
public class TDLib.InputPassportElementBankStatement : InputPassportElement {

    /**
     * The bank statement to be saved
     */
    public InputPersonalDocument bank_statement { get; construct set; }

    public InputPassportElementBankStatement (
        InputPersonalDocument bank_statement
    ) {
        Object (
            bank_statement: bank_statement,
            tdlib_type: "inputPassportElementBankStatement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's rental
 * agreement
 */
public class TDLib.InputPassportElementRentalAgreement : InputPassportElement {

    /**
     * The rental agreement to be saved
     */
    public InputPersonalDocument rental_agreement { get; construct set; }

    public InputPassportElementRentalAgreement (
        InputPersonalDocument rental_agreement
    ) {
        Object (
            rental_agreement: rental_agreement,
            tdlib_type: "inputPassportElementRentalAgreement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's passport
 * registration
 */
public class TDLib.InputPassportElementPassportRegistration : InputPassportElement {

    /**
     * The passport registration page to be saved
     */
    public InputPersonalDocument passport_registration { get; construct set; }

    public InputPassportElementPassportRegistration (
        InputPersonalDocument passport_registration
    ) {
        Object (
            passport_registration: passport_registration,
            tdlib_type: "inputPassportElementPassportRegistration",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's
 * temporary registration
 */
public class TDLib.InputPassportElementTemporaryRegistration : InputPassportElement {

    /**
     * The temporary registration document to be saved
     */
    public InputPersonalDocument temporary_registration { get; construct set; }

    public InputPassportElementTemporaryRegistration (
        InputPersonalDocument temporary_registration
    ) {
        Object (
            temporary_registration: temporary_registration,
            tdlib_type: "inputPassportElementTemporaryRegistration",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's phone
 * number
 */
public class TDLib.InputPassportElementPhoneNumber : InputPassportElement {

    /**
     * The phone number to be saved
     */
    public string phone_number { get; construct set; }

    public InputPassportElementPhoneNumber (
        string phone_number
    ) {
        Object (
            phone_number: phone_number,
            tdlib_type: "inputPassportElementPhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element to be saved containing the user's email
 * address
 */
public class TDLib.InputPassportElementEmailAddress : InputPassportElement {

    /**
     * The email address to be saved
     */
    public string email_address { get; construct set; }

    public InputPassportElementEmailAddress (
        string email_address
    ) {
        Object (
            email_address: email_address,
            tdlib_type: "inputPassportElementEmailAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
