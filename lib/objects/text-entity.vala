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
 * Represents a part of the text that needs to be formatted in some
 * unusual way
 */
public class TDLib.TextEntity : Error {

    /**
     * Offset of the entity, in UTF-16 code units
     */
    public int32 offset { get; construct set; }

    /**
     * Length of the entity, in UTF-16 code units
     */
    public int32 length { get; construct set; }

    /**
     * Type of the entity
     */
    public TextEntityType type_ { get; construct set; }

    public TextEntity (
        int32 offset,
        int32 length,
        TextEntityType type_
    ) {
        Object (
            offset: offset,
            length: length,
            type_: type_,
            tdlib_type: "textEntity",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
