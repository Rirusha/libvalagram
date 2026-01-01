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
 * Contains the description of an error in a Telegram Passport element;
 * for bots only
 */
public abstract class TDLib.InputPassportElementErrorSource : Error {}

/**
 * The element contains an error in an unspecified place. The error will
 * be considered resolved when new data is added
 */
public class TDLib.InputPassportElementErrorSourceUnspecified : InputPassportElementErrorSource {

    /**
     * Current hash of the entire element
     */
    public Bytes element_hash { get; construct set; }

    public InputPassportElementErrorSourceUnspecified (
        Bytes element_hash
    ) {
        Object (
            element_hash: element_hash,
            tdlib_type: "inputPassportElementErrorSourceUnspecified",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A data field contains an error. The error is considered resolved when
 * the field's value changes
 */
public class TDLib.InputPassportElementErrorSourceDataField : InputPassportElementErrorSource {

    /**
     * Field name
     */
    public string field_name { get; construct set; }

    /**
     * Current data hash
     */
    public Bytes data_hash { get; construct set; }

    public InputPassportElementErrorSourceDataField (
        string field_name,
        Bytes data_hash
    ) {
        Object (
            field_name: field_name,
            data_hash: data_hash,
            tdlib_type: "inputPassportElementErrorSourceDataField",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The front side of the document contains an error. The error is
 * considered resolved when the file with the front side of the document
 * changes
 */
public class TDLib.InputPassportElementErrorSourceFrontSide : InputPassportElementErrorSource {

    /**
     * Current hash of the file containing the front side
     */
    public Bytes file_hash { get; construct set; }

    public InputPassportElementErrorSourceFrontSide (
        Bytes file_hash
    ) {
        Object (
            file_hash: file_hash,
            tdlib_type: "inputPassportElementErrorSourceFrontSide",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The reverse side of the document contains an error. The error is
 * considered resolved when the file with the reverse side of the
 * document changes
 */
public class TDLib.InputPassportElementErrorSourceReverseSide : InputPassportElementErrorSource {

    /**
     * Current hash of the file containing the reverse side
     */
    public Bytes file_hash { get; construct set; }

    public InputPassportElementErrorSourceReverseSide (
        Bytes file_hash
    ) {
        Object (
            file_hash: file_hash,
            tdlib_type: "inputPassportElementErrorSourceReverseSide",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The selfie contains an error. The error is considered resolved when
 * the file with the selfie changes
 */
public class TDLib.InputPassportElementErrorSourceSelfie : InputPassportElementErrorSource {

    /**
     * Current hash of the file containing the selfie
     */
    public Bytes file_hash { get; construct set; }

    public InputPassportElementErrorSourceSelfie (
        Bytes file_hash
    ) {
        Object (
            file_hash: file_hash,
            tdlib_type: "inputPassportElementErrorSourceSelfie",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * One of the files containing the translation of the document contains
 * an error. The error is considered resolved when the file with the
 * translation changes
 */
public class TDLib.InputPassportElementErrorSourceTranslationFile : InputPassportElementErrorSource {

    /**
     * Current hash of the file containing the translation
     */
    public Bytes file_hash { get; construct set; }

    public InputPassportElementErrorSourceTranslationFile (
        Bytes file_hash
    ) {
        Object (
            file_hash: file_hash,
            tdlib_type: "inputPassportElementErrorSourceTranslationFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The translation of the document contains an error. The error is
 * considered resolved when the list of files changes
 */
public class TDLib.InputPassportElementErrorSourceTranslationFiles : InputPassportElementErrorSource {

    /**
     * Current hashes of all files with the translation
     */
    public Gee.ArrayList<Bytes?> file_hashes { get; construct set; default = new Gee.ArrayList<Bytes?> (); }

    public InputPassportElementErrorSourceTranslationFiles (
        Gee.ArrayList<Bytes?> file_hashes
    ) {
        Object (
            file_hashes: file_hashes,
            tdlib_type: "inputPassportElementErrorSourceTranslationFiles",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file contains an error. The error is considered resolved when the
 * file changes
 */
public class TDLib.InputPassportElementErrorSourceFile : InputPassportElementErrorSource {

    /**
     * Current hash of the file which has the error
     */
    public Bytes file_hash { get; construct set; }

    public InputPassportElementErrorSourceFile (
        Bytes file_hash
    ) {
        Object (
            file_hash: file_hash,
            tdlib_type: "inputPassportElementErrorSourceFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of attached files contains an error. The error is considered
 * resolved when the file list changes
 */
public class TDLib.InputPassportElementErrorSourceFiles : InputPassportElementErrorSource {

    /**
     * Current hashes of all attached files
     */
    public Gee.ArrayList<Bytes?> file_hashes { get; construct set; default = new Gee.ArrayList<Bytes?> (); }

    public InputPassportElementErrorSourceFiles (
        Gee.ArrayList<Bytes?> file_hashes
    ) {
        Object (
            file_hashes: file_hashes,
            tdlib_type: "inputPassportElementErrorSourceFiles",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
