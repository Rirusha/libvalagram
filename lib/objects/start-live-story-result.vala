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
 * Represents result of starting a live story
 */
public abstract class TDLib.StartLiveStoryResult : Error {}

/**
 * The live story was successfully posted
 */
public class TDLib.StartLiveStoryResultOk : StartLiveStoryResult {

    /**
     * The live story
     */
    public Story story { get; construct set; }

    public StartLiveStoryResultOk (
        Story story
    ) {
        Object (
            story: story,
            tdlib_type: "startLiveStoryResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The live story failed to post with an error to be handled
 */
public class TDLib.StartLiveStoryResultFail : StartLiveStoryResult {

    /**
     * Type of the error; other error types may be returned as regular errors
     */
    public CanPostStoryResult error_type { get; construct set; }

    public StartLiveStoryResultFail (
        CanPostStoryResult error_type
    ) {
        Object (
            error_type: error_type,
            tdlib_type: "startLiveStoryResultFail",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
