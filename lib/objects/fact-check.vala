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
 * Describes a fact-check added to the message by an independent checker
 */
public class TDLib.FactCheck : Error {

    /**
     * Text of the fact-check
     */
    public FormattedText text { get; construct set; }

    /**
     * A two-letter ISO 3166-1 alpha-2 country code of the country for which
     * the fact-check is shown
     */
    public string country_code { get; construct set; }

    public FactCheck (
        FormattedText text,
        string country_code
    ) {
        Object (
            text: text,
            country_code: country_code,
            tdlib_type: "factCheck",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
