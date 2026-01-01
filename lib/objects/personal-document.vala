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
 * A personal document, containing some information about a user
 */
public class TDLib.PersonalDocument : Error {

    /**
     * List of files containing the pages of the document
     */
    public Gee.ArrayList<DatedFile?> files { get; construct set; default = new Gee.ArrayList<DatedFile?> (); }

    /**
     * List of files containing a certified English translation of the
     * document
     */
    public Gee.ArrayList<DatedFile?> translation { get; construct set; default = new Gee.ArrayList<DatedFile?> (); }

    public PersonalDocument (
        Gee.ArrayList<DatedFile?> files,
        Gee.ArrayList<DatedFile?> translation
    ) {
        Object (
            files: files,
            translation: translation,
            tdlib_type: "personalDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
