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
 * Returns approximate number of bots similar to the given bot
 */
public class TDLib.GetBotSimilarBotCount : TDObject {

    /**
     * User identifier of the target bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Pass true to get the number of bots without sending network requests,
     * or -1 if the number of bots is unknown locally
     */
    public bool return_local { get; construct set; }

    public GetBotSimilarBotCount (
        int64 bot_user_id,
        bool return_local
    ) {
        Object (
            bot_user_id: bot_user_id,
            return_local: return_local,
            tdlib_type: "getBotSimilarBotCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
