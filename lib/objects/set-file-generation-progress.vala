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
 * Informs TDLib on a file generation progress
 */
internal class TDLib.SetFileGenerationProgress : TDObject {

    /**
     * The identifier of the generation process
     */
    public int64 generation_id { get; construct set; }

    /**
     * Expected size of the generated file, in bytes; 0 if unknown
     */
    public int64 expected_size { get; construct set; }

    /**
     * The number of bytes already generated
     */
    public int64 local_prefix_size { get; construct set; }

    public SetFileGenerationProgress (
        int64 generation_id,
        int64 expected_size,
        int64 local_prefix_size
    ) {
        Object (
            generation_id: generation_id,
            expected_size: expected_size,
            local_prefix_size: local_prefix_size,
            tdlib_type: "setFileGenerationProgress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
