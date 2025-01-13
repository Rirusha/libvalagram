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
 * Contains the description of an error in a Telegram Passport element
 */
public abstract class TDLib.PassportElementErrorSource : Error {}

/**
 * The element contains an error in an unspecified place. The error will
 * be considered resolved when new data is added
 */
public class TDLib.PassportElementErrorSourceUnspecified : PassportElementErrorSource {

    public PassportElementErrorSourceUnspecified () {
        Object (
            tdlib_type: "passportElementErrorSourceUnspecified",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * One of the data fields contains an error. The error will be considered
 * resolved when the value of the field changes
 */
public class TDLib.PassportElementErrorSourceDataField : PassportElementErrorSource {

    /**
     * Field name
     */
    public string field_name { get; construct set; }

    public PassportElementErrorSourceDataField (
        string field_name
    ) {
        Object (
            field_name: field_name,
            tdlib_type: "passportElementErrorSourceDataField",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The front side of the document contains an error. The error will be
 * considered resolved when the file with the front side changes
 */
public class TDLib.PassportElementErrorSourceFrontSide : PassportElementErrorSource {

    public PassportElementErrorSourceFrontSide () {
        Object (
            tdlib_type: "passportElementErrorSourceFrontSide",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The reverse side of the document contains an error. The error will be
 * considered resolved when the file with the reverse side changes
 */
public class TDLib.PassportElementErrorSourceReverseSide : PassportElementErrorSource {

    public PassportElementErrorSourceReverseSide () {
        Object (
            tdlib_type: "passportElementErrorSourceReverseSide",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The selfie with the document contains an error. The error will be
 * considered resolved when the file with the selfie changes
 */
public class TDLib.PassportElementErrorSourceSelfie : PassportElementErrorSource {

    public PassportElementErrorSourceSelfie () {
        Object (
            tdlib_type: "passportElementErrorSourceSelfie",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * One of files with the translation of the document contains an error.
 * The error will be considered resolved when the file changes
 */
public class TDLib.PassportElementErrorSourceTranslationFile : PassportElementErrorSource {

    /**
     * Index of a file with the error
     */
    public int32 file_index { get; construct set; }

    public PassportElementErrorSourceTranslationFile (
        int32 file_index
    ) {
        Object (
            file_index: file_index,
            tdlib_type: "passportElementErrorSourceTranslationFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The translation of the document contains an error. The error will be
 * considered resolved when the list of translation files changes
 */
public class TDLib.PassportElementErrorSourceTranslationFiles : PassportElementErrorSource {

    public PassportElementErrorSourceTranslationFiles () {
        Object (
            tdlib_type: "passportElementErrorSourceTranslationFiles",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The file contains an error. The error will be considered resolved when
 * the file changes
 */
public class TDLib.PassportElementErrorSourceFile : PassportElementErrorSource {

    /**
     * Index of a file with the error
     */
    public int32 file_index { get; construct set; }

    public PassportElementErrorSourceFile (
        int32 file_index
    ) {
        Object (
            file_index: file_index,
            tdlib_type: "passportElementErrorSourceFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The list of attached files contains an error. The error will be
 * considered resolved when the list of files changes
 */
public class TDLib.PassportElementErrorSourceFiles : PassportElementErrorSource {

    public PassportElementErrorSourceFiles () {
        Object (
            tdlib_type: "passportElementErrorSourceFiles",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
