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
 * Contains information about an encrypted Telegram Passport element; for
 * bots only
 */
public class TDLib.EncryptedPassportElement : Error {

    /**
     * Type of Telegram Passport element
     */
    public PassportElementType type_ { get; construct set; }

    /**
     * Encrypted JSON-encoded data about the user
     */
    public Bytes data { get; construct set; }

    /**
     * The front side of an identity document
     */
    public DatedFile front_side { get; construct set; }

    /**
     * The reverse side of an identity document; may be null
     */
    public DatedFile? reverse_side { get; construct set; }

    /**
     * Selfie with the document; may be null
     */
    public DatedFile? selfie { get; construct set; }

    /**
     * List of files containing a certified English translation of the
     * document
     */
    public Gee.ArrayList<DatedFile?> translation { get; construct set; default = new Gee.ArrayList<DatedFile?> (); }

    /**
     * List of attached files
     */
    public Gee.ArrayList<DatedFile?> files { get; construct set; default = new Gee.ArrayList<DatedFile?> (); }

    /**
     * Unencrypted data, phone number or email address
     */
    public string value { get; construct set; }

    /**
     * Hash of the entire element
     */
    public string hash { get; construct set; }

    public EncryptedPassportElement (
        PassportElementType type_,
        Bytes data,
        DatedFile front_side,
        DatedFile? reverse_side,
        DatedFile? selfie,
        Gee.ArrayList<DatedFile?> translation,
        Gee.ArrayList<DatedFile?> files,
        string value,
        string hash
    ) {
        Object (
            type_: type_,
            data: data,
            front_side: front_side,
            reverse_side: reverse_side,
            selfie: selfie,
            translation: translation,
            files: files,
            value: value,
            hash: hash,
            tdlib_type: "encryptedPassportElement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
