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
 * Describes style of a button
 */
public abstract class TDLib.ButtonStyle : Error {}

/**
 * The button has default style
 */
public class TDLib.ButtonStyleDefault : ButtonStyle {

    public ButtonStyleDefault () {
        Object (
            tdlib_type: "buttonStyleDefault",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The button has dark blue color
 */
public class TDLib.ButtonStylePrimary : ButtonStyle {

    public ButtonStylePrimary () {
        Object (
            tdlib_type: "buttonStylePrimary",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The button has red color
 */
public class TDLib.ButtonStyleDanger : ButtonStyle {

    public ButtonStyleDanger () {
        Object (
            tdlib_type: "buttonStyleDanger",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The button has green color
 */
public class TDLib.ButtonStyleSuccess : ButtonStyle {

    public ButtonStyleSuccess () {
        Object (
            tdlib_type: "buttonStyleSuccess",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
