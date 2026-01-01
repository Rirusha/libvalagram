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
 * Describes a horizontal alignment of a table cell content
 */
public abstract class TDLib.PageBlockHorizontalAlignment : Error {}

/**
 * The content must be left-aligned
 */
public class TDLib.PageBlockHorizontalAlignmentLeft : PageBlockHorizontalAlignment {

    public PageBlockHorizontalAlignmentLeft () {
        Object (
            tdlib_type: "pageBlockHorizontalAlignmentLeft",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The content must be center-aligned
 */
public class TDLib.PageBlockHorizontalAlignmentCenter : PageBlockHorizontalAlignment {

    public PageBlockHorizontalAlignmentCenter () {
        Object (
            tdlib_type: "pageBlockHorizontalAlignmentCenter",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The content must be right-aligned
 */
public class TDLib.PageBlockHorizontalAlignmentRight : PageBlockHorizontalAlignment {

    public PageBlockHorizontalAlignmentRight () {
        Object (
            tdlib_type: "pageBlockHorizontalAlignmentRight",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
