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
 * Describes a Vertical alignment of a table cell content
 */
public abstract class TDLib.PageBlockVerticalAlignment : Error {}

/**
 * The content must be top-aligned
 */
public class TDLib.PageBlockVerticalAlignmentTop : PageBlockVerticalAlignment {

    public PageBlockVerticalAlignmentTop () {
        Object (
            tdlib_type: "pageBlockVerticalAlignmentTop",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The content must be middle-aligned
 */
public class TDLib.PageBlockVerticalAlignmentMiddle : PageBlockVerticalAlignment {

    public PageBlockVerticalAlignmentMiddle () {
        Object (
            tdlib_type: "pageBlockVerticalAlignmentMiddle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The content must be bottom-aligned
 */
public class TDLib.PageBlockVerticalAlignmentBottom : PageBlockVerticalAlignment {

    public PageBlockVerticalAlignmentBottom () {
        Object (
            tdlib_type: "pageBlockVerticalAlignmentBottom",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
