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
 * Represents the value of a string in a language pack
 */
public abstract class TDLib.LanguagePackStringValue : Error {}

/**
 * An ordinary language pack string
 */
public class TDLib.LanguagePackStringValueOrdinary : LanguagePackStringValue {

    /**
     * String value
     */
    public string value { get; construct set; }

    public LanguagePackStringValueOrdinary (
        string value
    ) {
        Object (
            value: value,
            tdlib_type: "languagePackStringValueOrdinary",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A language pack string which has different forms based on the number
 * of some object it mentions. See
 * [[https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html]]
 * for more information
 */
public class TDLib.LanguagePackStringValuePluralized : LanguagePackStringValue {

    /**
     * Value for zero objects
     */
    public string zero_value { get; construct set; }

    /**
     * Value for one object
     */
    public string one_value { get; construct set; }

    /**
     * Value for two objects
     */
    public string two_value { get; construct set; }

    /**
     * Value for few objects
     */
    public string few_value { get; construct set; }

    /**
     * Value for many objects
     */
    public string many_value { get; construct set; }

    /**
     * Default value
     */
    public string other_value { get; construct set; }

    public LanguagePackStringValuePluralized (
        string zero_value,
        string one_value,
        string two_value,
        string few_value,
        string many_value,
        string other_value
    ) {
        Object (
            zero_value: zero_value,
            one_value: one_value,
            two_value: two_value,
            few_value: few_value,
            many_value: many_value,
            other_value: other_value,
            tdlib_type: "languagePackStringValuePluralized",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A deleted language pack string, the value must be taken from the
 * built-in English language pack
 */
public class TDLib.LanguagePackStringValueDeleted : LanguagePackStringValue {

    public LanguagePackStringValueDeleted () {
        Object (
            tdlib_type: "languagePackStringValueDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
