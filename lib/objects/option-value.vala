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
 * Represents the value of an option
 */
public abstract class TDLib.OptionValue : Error {}

/**
 * Represents a boolean option
 */
public class TDLib.OptionValueBoolean : OptionValue {

    /**
     * The value of the option
     */
    public bool value { get; construct set; }

    public OptionValueBoolean (
        bool value
    ) {
        Object (
            value: value,
            tdlib_type: "optionValueBoolean",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents an unknown option or an option which has a default value
 */
public class TDLib.OptionValueEmpty : OptionValue {

    public OptionValueEmpty () {
        Object (
            tdlib_type: "optionValueEmpty",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents an integer option
 */
public class TDLib.OptionValueInteger : OptionValue {

    /**
     * The value of the option
     */
    public int64 value { get; construct set; }

    public OptionValueInteger (
        int64 value
    ) {
        Object (
            value: value,
            tdlib_type: "optionValueInteger",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a string option
 */
public class TDLib.OptionValueString : OptionValue {

    /**
     * The value of the option
     */
    public string value { get; construct set; }

    public OptionValueString (
        string value
    ) {
        Object (
            value: value,
            tdlib_type: "optionValueString",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
