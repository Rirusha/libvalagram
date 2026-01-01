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
 * Searches for a given quote in a text. Returns found quote start
 * position in UTF-16 code units. Returns a 404 error if the quote is not
 * found. Can be called synchronously
 */
public class TDLib.SearchQuote : TDObject {

    /**
     * Text in which to search for the quote
     */
    public FormattedText text { get; construct set; }

    /**
     * Quote to search for
     */
    public FormattedText quote { get; construct set; }

    /**
     * Approximate quote position in UTF-16 code units
     */
    public int32 quote_position { get; construct set; }

    public SearchQuote (
        FormattedText text,
        FormattedText quote,
        int32 quote_position
    ) {
        Object (
            text: text,
            quote: quote,
            quote_position: quote_position,
            tdlib_type: "searchQuote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
