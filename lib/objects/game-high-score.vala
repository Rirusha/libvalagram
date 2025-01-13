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
 * Contains one row of the game high score table
 */
public class TDLib.GameHighScore : Error {

    /**
     * Position in the high score table
     */
    public int32 position { get; construct set; }

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * User score
     */
    public int32 score { get; construct set; }

    public GameHighScore (
        int32 position,
        int64 user_id,
        int32 score
    ) {
        Object (
            position: position,
            user_id: user_id,
            score: score,
            tdlib_type: "gameHighScore",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
