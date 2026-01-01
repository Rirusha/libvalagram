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
 * Provides information about the method by which an authentication code
 * is delivered to the user
 */
public abstract class TDLib.AuthenticationCodeType : Error {}

/**
 * A digit-only authentication code is delivered via a private Telegram
 * message, which can be viewed from another active session
 */
public class TDLib.AuthenticationCodeTypeTelegramMessage : AuthenticationCodeType {

    /**
     * Length of the code
     */
    public int32 length { get; construct set; }

    public AuthenticationCodeTypeTelegramMessage (
        int32 length
    ) {
        Object (
            length: length,
            tdlib_type: "authenticationCodeTypeTelegramMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A digit-only authentication code is delivered via an SMS message to
 * the specified phone number; non-official applications may not receive
 * this type of code
 */
public class TDLib.AuthenticationCodeTypeSms : AuthenticationCodeType {

    /**
     * Length of the code
     */
    public int32 length { get; construct set; }

    public AuthenticationCodeTypeSms (
        int32 length
    ) {
        Object (
            length: length,
            tdlib_type: "authenticationCodeTypeSms",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An authentication code is a word delivered via an SMS message to the
 * specified phone number; non-official applications may not receive this
 * type of code
 */
public class TDLib.AuthenticationCodeTypeSmsWord : AuthenticationCodeType {

    /**
     * The first letters of the word if known
     */
    public string first_letter { get; construct set; }

    public AuthenticationCodeTypeSmsWord (
        string first_letter
    ) {
        Object (
            first_letter: first_letter,
            tdlib_type: "authenticationCodeTypeSmsWord",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An authentication code is a phrase from multiple words delivered via
 * an SMS message to the specified phone number; non-official
 * applications may not receive this type of code
 */
public class TDLib.AuthenticationCodeTypeSmsPhrase : AuthenticationCodeType {

    /**
     * The first word of the phrase if known
     */
    public string first_word { get; construct set; }

    public AuthenticationCodeTypeSmsPhrase (
        string first_word
    ) {
        Object (
            first_word: first_word,
            tdlib_type: "authenticationCodeTypeSmsPhrase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A digit-only authentication code is delivered via a phone call to the
 * specified phone number
 */
public class TDLib.AuthenticationCodeTypeCall : AuthenticationCodeType {

    /**
     * Length of the code
     */
    public int32 length { get; construct set; }

    public AuthenticationCodeTypeCall (
        int32 length
    ) {
        Object (
            length: length,
            tdlib_type: "authenticationCodeTypeCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An authentication code is delivered by an immediately canceled call to
 * the specified phone number. The phone number that calls is the code
 * that must be entered automatically
 */
public class TDLib.AuthenticationCodeTypeFlashCall : AuthenticationCodeType {

    /**
     * Pattern of the phone number from which the call will be made
     */
    public string pattern { get; construct set; }

    public AuthenticationCodeTypeFlashCall (
        string pattern
    ) {
        Object (
            pattern: pattern,
            tdlib_type: "authenticationCodeTypeFlashCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An authentication code is delivered by an immediately canceled call to
 * the specified phone number. The last digits of the phone number that
 * calls are the code that must be entered manually by the user
 */
public class TDLib.AuthenticationCodeTypeMissedCall : AuthenticationCodeType {

    /**
     * Prefix of the phone number from which the call will be made
     */
    public string phone_number_prefix { get; construct set; }

    /**
     * Number of digits in the code, excluding the prefix
     */
    public int32 length { get; construct set; }

    public AuthenticationCodeTypeMissedCall (
        string phone_number_prefix,
        int32 length
    ) {
        Object (
            phone_number_prefix: phone_number_prefix,
            length: length,
            tdlib_type: "authenticationCodeTypeMissedCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A digit-only authentication code is delivered to
 * [[https://fragment.com]]. The user must be logged in there via a
 * wallet owning the phone number's NFT
 */
public class TDLib.AuthenticationCodeTypeFragment : AuthenticationCodeType {

    /**
     * URL to open to receive the code
     */
    public string url { get; construct set; }

    /**
     * Length of the code
     */
    public int32 length { get; construct set; }

    public AuthenticationCodeTypeFragment (
        string url,
        int32 length
    ) {
        Object (
            url: url,
            length: length,
            tdlib_type: "authenticationCodeTypeFragment",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A digit-only authentication code is delivered via Firebase
 * Authentication to the official Android application
 */
public class TDLib.AuthenticationCodeTypeFirebaseAndroid : AuthenticationCodeType {

    /**
     * Parameters to be used for device verification
     */
    public FirebaseDeviceVerificationParameters device_verification_parameters { get; construct set; }

    /**
     * Length of the code
     */
    public int32 length { get; construct set; }

    public AuthenticationCodeTypeFirebaseAndroid (
        FirebaseDeviceVerificationParameters device_verification_parameters,
        int32 length
    ) {
        Object (
            device_verification_parameters: device_verification_parameters,
            length: length,
            tdlib_type: "authenticationCodeTypeFirebaseAndroid",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A digit-only authentication code is delivered via Firebase
 * Authentication to the official iOS application
 */
public class TDLib.AuthenticationCodeTypeFirebaseIos : AuthenticationCodeType {

    /**
     * Receipt of successful application token validation to compare with
     * receipt from push notification
     */
    public string receipt { get; construct set; }

    /**
     * Time after the next authentication method is expected to be used if
     * verification push notification isn't received, in seconds
     */
    public int32 push_timeout { get; construct set; }

    /**
     * Length of the code
     */
    public int32 length { get; construct set; }

    public AuthenticationCodeTypeFirebaseIos (
        string receipt,
        int32 push_timeout,
        int32 length
    ) {
        Object (
            receipt: receipt,
            push_timeout: push_timeout,
            length: length,
            tdlib_type: "authenticationCodeTypeFirebaseIos",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
