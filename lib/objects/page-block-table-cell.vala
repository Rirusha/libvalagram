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
 * Represents a cell of a table
 */
public class TDLib.PageBlockTableCell : Error {

    /**
     * Cell text; may be null. If the text is null, then the cell must be
     * invisible
     */
    public RichText? text { get; construct set; }

    /**
     * True, if it is a header cell
     */
    public bool is_header { get; construct set; }

    /**
     * The number of columns the cell spans
     */
    public int32 colspan { get; construct set; }

    /**
     * The number of rows the cell spans
     */
    public int32 rowspan { get; construct set; }

    /**
     * Horizontal cell content alignment
     */
    public PageBlockHorizontalAlignment align { get; construct set; }

    /**
     * Vertical cell content alignment
     */
    public PageBlockVerticalAlignment valign { get; construct set; }

    public PageBlockTableCell (
        RichText? text,
        bool is_header,
        int32 colspan,
        int32 rowspan,
        PageBlockHorizontalAlignment align,
        PageBlockVerticalAlignment valign
    ) {
        Object (
            text: text,
            is_header: is_header,
            colspan: colspan,
            rowspan: rowspan,
            align: align,
            valign: valign,
            tdlib_type: "pageBlockTableCell",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
