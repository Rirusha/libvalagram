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
 * Sets the verbosity level of the internal logging of TDLib. Can be
 * called synchronously
 */
public class TDLib.SetLogVerbosityLevel : TDObject {

    /**
     * New value of the verbosity level for logging. Value 0 corresponds to
     * fatal errors, value 1 corresponds to errors, value 2 corresponds to
     * warnings and debug warnings,
     * value 3 corresponds to informational, value 4 corresponds to debug,
     * value 5 corresponds to verbose debug, value greater than 5 and up to
     * 1023 can be used to enable even more logging
     */
    public int32 new_verbosity_level { get; construct set; }

    public SetLogVerbosityLevel (
        int32 new_verbosity_level
    ) {
        Object (
            new_verbosity_level: new_verbosity_level,
            tdlib_type: "setLogVerbosityLevel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
