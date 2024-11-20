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
 * Part of the face, relative to which a mask is placed
 */
public abstract class TDLib.MaskPoint : Error {}

/**
 * The mask is placed relatively to the forehead
 */
public class TDLib.MaskPointForehead : MaskPoint {

    public MaskPointForehead () {
        Object (
            tdlib_type: "maskPointForehead",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The mask is placed relatively to the eyes
 */
public class TDLib.MaskPointEyes : MaskPoint {

    public MaskPointEyes () {
        Object (
            tdlib_type: "maskPointEyes",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The mask is placed relatively to the mouth
 */
public class TDLib.MaskPointMouth : MaskPoint {

    public MaskPointMouth () {
        Object (
            tdlib_type: "maskPointMouth",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The mask is placed relatively to the chin
 */
public class TDLib.MaskPointChin : MaskPoint {

    public MaskPointChin () {
        Object (
            tdlib_type: "maskPointChin",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
