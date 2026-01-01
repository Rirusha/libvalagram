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
 * Describes a stream to which TDLib internal log is written
 */
public abstract class TDLib.LogStream : Error {}

/**
 * The log is written to stderr or an OS specific log
 */
public class TDLib.LogStreamDefault : LogStream {

    public LogStreamDefault () {
        Object (
            tdlib_type: "logStreamDefault",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The log is written to a file
 */
public class TDLib.LogStreamFile : LogStream {

    /**
     * Path to the file to where the internal TDLib log will be written
     */
    public string path { get; construct set; }

    /**
     * The maximum size of the file to where the internal TDLib log is
     * written before the file will automatically be rotated, in bytes
     */
    public int64 max_file_size { get; construct set; }

    /**
     * Pass true to additionally redirect stderr to the log file. Ignored on
     * Windows
     */
    public bool redirect_stderr { get; construct set; }

    public LogStreamFile (
        string path,
        int64 max_file_size,
        bool redirect_stderr
    ) {
        Object (
            path: path,
            max_file_size: max_file_size,
            redirect_stderr: redirect_stderr,
            tdlib_type: "logStreamFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The log is written nowhere
 */
public class TDLib.LogStreamEmpty : LogStream {

    public LogStreamEmpty () {
        Object (
            tdlib_type: "logStreamEmpty",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
