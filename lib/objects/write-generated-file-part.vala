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
 * Writes a part of a generated file. This method is intended to be used
 * only if the application has no direct access to TDLib's file system,
 * because it is usually slower than a direct write to the destination
 * file
 */
internal class TDLib.WriteGeneratedFilePart : TDObject {

    /**
     * The identifier of the generation process
     */
    public int64 generation_id { get; construct set; }

    /**
     * The offset from which to write the data to the file
     */
    public int64 offset { get; construct set; }

    /**
     * The data to write
     */
    public Bytes data { get; construct set; }

    public WriteGeneratedFilePart (
        int64 generation_id,
        int64 offset,
        Bytes data
    ) {
        Object (
            generation_id: generation_id,
            offset: offset,
            data: data,
            tdlib_type: "writeGeneratedFilePart",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
