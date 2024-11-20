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
 * Contains information about a Telegram Passport element
 */
public abstract class TDLib.PassportElement : Error {}

/**
 * A Telegram Passport element containing the user's personal details
 */
public class TDLib.PassportElementPersonalDetails : PassportElement {

    /**
     * Personal details of the user
     */
    public PersonalDetails personal_details { get; construct set; }

    public PassportElementPersonalDetails (
        PersonalDetails personal_details
    ) {
        Object (
            personal_details: personal_details,
            tdlib_type: "passportElementPersonalDetails",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's passport
 */
public class TDLib.PassportElementPassport : PassportElement {

    /**
     * Passport
     */
    public IdentityDocument passport { get; construct set; }

    public PassportElementPassport (
        IdentityDocument passport
    ) {
        Object (
            passport: passport,
            tdlib_type: "passportElementPassport",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's driver license
 */
public class TDLib.PassportElementDriverLicense : PassportElement {

    /**
     * Driver license
     */
    public IdentityDocument driver_license { get; construct set; }

    public PassportElementDriverLicense (
        IdentityDocument driver_license
    ) {
        Object (
            driver_license: driver_license,
            tdlib_type: "passportElementDriverLicense",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's identity card
 */
public class TDLib.PassportElementIdentityCard : PassportElement {

    /**
     * Identity card
     */
    public IdentityDocument identity_card { get; construct set; }

    public PassportElementIdentityCard (
        IdentityDocument identity_card
    ) {
        Object (
            identity_card: identity_card,
            tdlib_type: "passportElementIdentityCard",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's internal passport
 */
public class TDLib.PassportElementInternalPassport : PassportElement {

    /**
     * Internal passport
     */
    public IdentityDocument internal_passport { get; construct set; }

    public PassportElementInternalPassport (
        IdentityDocument internal_passport
    ) {
        Object (
            internal_passport: internal_passport,
            tdlib_type: "passportElementInternalPassport",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's address
 */
public class TDLib.PassportElementAddress : PassportElement {

    /**
     * Address
     */
    public Address address { get; construct set; }

    public PassportElementAddress (
        Address address
    ) {
        Object (
            address: address,
            tdlib_type: "passportElementAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's utility bill
 */
public class TDLib.PassportElementUtilityBill : PassportElement {

    /**
     * Utility bill
     */
    public PersonalDocument utility_bill { get; construct set; }

    public PassportElementUtilityBill (
        PersonalDocument utility_bill
    ) {
        Object (
            utility_bill: utility_bill,
            tdlib_type: "passportElementUtilityBill",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's bank statement
 */
public class TDLib.PassportElementBankStatement : PassportElement {

    /**
     * Bank statement
     */
    public PersonalDocument bank_statement { get; construct set; }

    public PassportElementBankStatement (
        PersonalDocument bank_statement
    ) {
        Object (
            bank_statement: bank_statement,
            tdlib_type: "passportElementBankStatement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's rental agreement
 */
public class TDLib.PassportElementRentalAgreement : PassportElement {

    /**
     * Rental agreement
     */
    public PersonalDocument rental_agreement { get; construct set; }

    public PassportElementRentalAgreement (
        PersonalDocument rental_agreement
    ) {
        Object (
            rental_agreement: rental_agreement,
            tdlib_type: "passportElementRentalAgreement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's passport
 * registration pages
 */
public class TDLib.PassportElementPassportRegistration : PassportElement {

    /**
     * Passport registration pages
     */
    public PersonalDocument passport_registration { get; construct set; }

    public PassportElementPassportRegistration (
        PersonalDocument passport_registration
    ) {
        Object (
            passport_registration: passport_registration,
            tdlib_type: "passportElementPassportRegistration",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's temporary
 * registration
 */
public class TDLib.PassportElementTemporaryRegistration : PassportElement {

    /**
     * Temporary registration
     */
    public PersonalDocument temporary_registration { get; construct set; }

    public PassportElementTemporaryRegistration (
        PersonalDocument temporary_registration
    ) {
        Object (
            temporary_registration: temporary_registration,
            tdlib_type: "passportElementTemporaryRegistration",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's phone number
 */
public class TDLib.PassportElementPhoneNumber : PassportElement {

    /**
     * Phone number
     */
    public string phone_number { get; construct set; }

    public PassportElementPhoneNumber (
        string phone_number
    ) {
        Object (
            phone_number: phone_number,
            tdlib_type: "passportElementPhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A Telegram Passport element containing the user's email address
 */
public class TDLib.PassportElementEmailAddress : PassportElement {

    /**
     * Email address
     */
    public string email_address { get; construct set; }

    public PassportElementEmailAddress (
        string email_address
    ) {
        Object (
            email_address: email_address,
            tdlib_type: "passportElementEmailAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
