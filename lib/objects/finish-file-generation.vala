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
 * Finishes the file generation
 */
public class TDLib.FinishFileGeneration : TDObject {

    /**
     * The identifier of the generation process
     */
    public int64 generation_id { get; construct set; }

    /**
     * If passed, the file generation has failed and must be terminated; pass
     * null if the file generation succeeded
     */
    public Error error { get; construct set; }

    public FinishFileGeneration (
        int64 generation_id,
        Error error
    ) {
        Object (
            generation_id: generation_id,
            error: error,
            tdlib_type: "finishFileGeneration",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
