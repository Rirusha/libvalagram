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
 * Informs TDLib that a bot was opened from the list of similar bots
 */
public class TDLib.OpenBotSimilarBot : TDObject {

    /**
     * Identifier of the original bot, which similar bots were requested
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Identifier of the opened bot
     */
    public int64 opened_bot_user_id { get; construct set; }

    public OpenBotSimilarBot (
        int64 bot_user_id,
        int64 opened_bot_user_id
    ) {
        Object (
            bot_user_id: bot_user_id,
            opened_bot_user_id: opened_bot_user_id,
            tdlib_type: "openBotSimilarBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
