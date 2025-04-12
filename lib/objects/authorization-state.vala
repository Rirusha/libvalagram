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
 * Represents the current authorization state of the TDLib client
 */
public abstract class TDLib.AuthorizationState : Error {}

/**
 * Initialization parameters are needed. Call
 * {@link Client.set_tdlib_parameters} to provide them
 */
public class TDLib.AuthorizationStateWaitTdlibParameters : AuthorizationState {

    public AuthorizationStateWaitTdlibParameters () {
        Object (
            tdlib_type: "authorizationStateWaitTdlibParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * TDLib needs the user's phone number to authorize. Call
 * {@link Client.set_authentication_phone_number} to provide the phone
 * number, or use {@link Client.request_qr_code_authentication} or
 * {@link Client.check_authentication_bot_token} for other authentication
 * options
 */
public class TDLib.AuthorizationStateWaitPhoneNumber : AuthorizationState {

    public AuthorizationStateWaitPhoneNumber () {
        Object (
            tdlib_type: "authorizationStateWaitPhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user must buy Telegram Premium as an in-store purchase to log in.
 * Call {@link Client.check_authentication_premium_purchase} and then
 * {@link Client.set_authentication_premium_purchase_transaction}
 */
public class TDLib.AuthorizationStateWaitPremiumPurchase : AuthorizationState {

    /**
     * Identifier of the store product that must be bought
     */
    public string store_product_id { get; construct set; }

    public AuthorizationStateWaitPremiumPurchase (
        string store_product_id
    ) {
        Object (
            store_product_id: store_product_id,
            tdlib_type: "authorizationStateWaitPremiumPurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * TDLib needs the user's email address to authorize. Call
 * {@link Client.set_authentication_email_address} to provide the email
 * address, or directly call
 * {@link Client.check_authentication_email_code} with Apple ID/Google ID
 * token if allowed
 */
public class TDLib.AuthorizationStateWaitEmailAddress : AuthorizationState {

    /**
     * True, if authorization through Apple ID is allowed
     */
    public bool allow_apple_id { get; construct set; }

    /**
     * True, if authorization through Google ID is allowed
     */
    public bool allow_google_id { get; construct set; }

    public AuthorizationStateWaitEmailAddress (
        bool allow_apple_id,
        bool allow_google_id
    ) {
        Object (
            allow_apple_id: allow_apple_id,
            allow_google_id: allow_google_id,
            tdlib_type: "authorizationStateWaitEmailAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * TDLib needs the user's authentication code sent to an email address to
 * authorize. Call {@link Client.check_authentication_email_code} to
 * provide the code
 */
public class TDLib.AuthorizationStateWaitEmailCode : AuthorizationState {

    /**
     * True, if authorization through Apple ID is allowed
     */
    public bool allow_apple_id { get; construct set; }

    /**
     * True, if authorization through Google ID is allowed
     */
    public bool allow_google_id { get; construct set; }

    /**
     * Information about the sent authentication code
     */
    public EmailAddressAuthenticationCodeInfo code_info { get; construct set; }

    /**
     * Reset state of the email address; may be null if the email address
     * can't be reset
     */
    public EmailAddressResetState? email_address_reset_state { get; construct set; }

    public AuthorizationStateWaitEmailCode (
        bool allow_apple_id,
        bool allow_google_id,
        EmailAddressAuthenticationCodeInfo code_info,
        EmailAddressResetState? email_address_reset_state
    ) {
        Object (
            allow_apple_id: allow_apple_id,
            allow_google_id: allow_google_id,
            code_info: code_info,
            email_address_reset_state: email_address_reset_state,
            tdlib_type: "authorizationStateWaitEmailCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * TDLib needs the user's authentication code to authorize. Call
 * {@link Client.check_authentication_code} to check the code
 */
public class TDLib.AuthorizationStateWaitCode : AuthorizationState {

    /**
     * Information about the authorization code that was sent
     */
    public AuthenticationCodeInfo code_info { get; construct set; }

    public AuthorizationStateWaitCode (
        AuthenticationCodeInfo code_info
    ) {
        Object (
            code_info: code_info,
            tdlib_type: "authorizationStateWaitCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user needs to confirm authorization on another logged in device by
 * scanning a QR code with the provided link
 */
public class TDLib.AuthorizationStateWaitOtherDeviceConfirmation : AuthorizationState {

    /**
     * A [[tg://]] URL for the QR code. The link will be updated frequently
     */
    public string link { get; construct set; }

    public AuthorizationStateWaitOtherDeviceConfirmation (
        string link
    ) {
        Object (
            link: link,
            tdlib_type: "authorizationStateWaitOtherDeviceConfirmation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is unregistered and need to accept terms of service and enter
 * their first name and last name to finish registration. Call
 * {@link Client.register_user} to accept the terms of service and
 * provide the data
 */
public class TDLib.AuthorizationStateWaitRegistration : AuthorizationState {

    /**
     * Telegram terms of service
     */
    public TermsOfService terms_of_service { get; construct set; }

    public AuthorizationStateWaitRegistration (
        TermsOfService terms_of_service
    ) {
        Object (
            terms_of_service: terms_of_service,
            tdlib_type: "authorizationStateWaitRegistration",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user has been authorized, but needs to enter a 2-step verification
 * password to start using the application.
 * Call {@link Client.check_authentication_password} to provide the
 * password, or {@link Client.request_authentication_password_recovery}
 * to recover the password, or {@link Client.delete_account} to delete
 * the account after a week
 */
public class TDLib.AuthorizationStateWaitPassword : AuthorizationState {

    /**
     * Hint for the password; may be empty
     */
    public string password_hint { get; construct set; }

    /**
     * True, if a recovery email address has been set up
     */
    public bool has_recovery_email_address { get; construct set; }

    /**
     * True, if some Telegram Passport elements were saved
     */
    public bool has_passport_data { get; construct set; }

    /**
     * Pattern of the email address to which the recovery email was sent;
     * empty until a recovery email has been sent
     */
    public string recovery_email_address_pattern { get; construct set; }

    public AuthorizationStateWaitPassword (
        string password_hint,
        bool has_recovery_email_address,
        bool has_passport_data,
        string recovery_email_address_pattern
    ) {
        Object (
            password_hint: password_hint,
            has_recovery_email_address: has_recovery_email_address,
            has_passport_data: has_passport_data,
            recovery_email_address_pattern: recovery_email_address_pattern,
            tdlib_type: "authorizationStateWaitPassword",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user has been successfully authorized. TDLib is now ready to
 * answer general requests
 */
public class TDLib.AuthorizationStateReady : AuthorizationState {

    public AuthorizationStateReady () {
        Object (
            tdlib_type: "authorizationStateReady",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is currently logging out
 */
public class TDLib.AuthorizationStateLoggingOut : AuthorizationState {

    public AuthorizationStateLoggingOut () {
        Object (
            tdlib_type: "authorizationStateLoggingOut",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * TDLib is closing, all subsequent queries will be answered with the
 * error 500. Note that closing TDLib can take a while. All resources
 * will be freed only after authorizationStateClosed has been received
 */
public class TDLib.AuthorizationStateClosing : AuthorizationState {

    public AuthorizationStateClosing () {
        Object (
            tdlib_type: "authorizationStateClosing",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * TDLib client is in its final state. All databases are closed and all
 * resources are released. No other updates will be received after this.
 * All queries will be responded to
 * with error code 500. To continue working, one must create a new
 * instance of the TDLib client
 */
public class TDLib.AuthorizationStateClosed : AuthorizationState {

    public AuthorizationStateClosed () {
        Object (
            tdlib_type: "authorizationStateClosed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
