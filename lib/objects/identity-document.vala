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
 * An identity document
 */
public class TDLib.IdentityDocument : Error {

    /**
     * Document number; 1-24 characters
     */
    public string number { get; construct set; }

    /**
     * Document expiration date; may be null if not applicable
     */
    public Date? expiration_date { get; construct set; }

    /**
     * Front side of the document
     */
    public DatedFile front_side { get; construct set; }

    /**
     * Reverse side of the document; only for driver license and identity
     * card; may be null
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

    public IdentityDocument (
        string number,
        Date? expiration_date,
        DatedFile front_side,
        DatedFile? reverse_side,
        DatedFile? selfie,
        Gee.ArrayList<DatedFile?> translation
    ) {
        Object (
            number: number,
            expiration_date: expiration_date,
            front_side: front_side,
            reverse_side: reverse_side,
            selfie: selfie,
            translation: translation,
            tdlib_type: "identityDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
