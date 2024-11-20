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
 * Contains information about a Telegram Passport element that was
 * requested by a service
 */
public class TDLib.PassportSuitableElement : Error {

    /**
     * Type of the element
     */
    public PassportElementType type_ { get; construct set; }

    /**
     * True, if a selfie is required with the identity document
     */
    public bool is_selfie_required { get; construct set; }

    /**
     * True, if a certified English translation is required with the document
     */
    public bool is_translation_required { get; construct set; }

    /**
     * True, if personal details must include the user's name in the language
     * of their country of residence
     */
    public bool is_native_name_required { get; construct set; }

    public PassportSuitableElement (
        PassportElementType type_,
        bool is_selfie_required,
        bool is_translation_required,
        bool is_native_name_required
    ) {
        Object (
            type_: type_,
            is_selfie_required: is_selfie_required,
            is_translation_required: is_translation_required,
            is_native_name_required: is_native_name_required,
            tdlib_type: "passportSuitableElement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
