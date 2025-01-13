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
 * Describes an affiliate program that was connected to an affiliate
 */
public class TDLib.ConnectedAffiliateProgram : Error {

    /**
     * The link that can be used to refer users if the program is still
     * active
     */
    public string url { get; construct set; }

    /**
     * User identifier of the bot created the program
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * The parameters of the affiliate program
     */
    public AffiliateProgramParameters parameters { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the affiliate program was
     * connected
     */
    public int32 connection_date { get; construct set; }

    /**
     * True, if the program was canceled by the bot, or disconnected by the
     * chat owner and isn't available anymore
     */
    public bool is_disconnected { get; construct set; }

    /**
     * The number of users that used the affiliate program
     */
    public int64 user_count { get; construct set; }

    /**
     * The number of Telegram Stars that were earned by the affiliate program
     */
    public int64 revenue_star_count { get; construct set; }

    public ConnectedAffiliateProgram (
        string url,
        int64 bot_user_id,
        AffiliateProgramParameters parameters,
        int32 connection_date,
        bool is_disconnected,
        int64 user_count,
        int64 revenue_star_count
    ) {
        Object (
            url: url,
            bot_user_id: bot_user_id,
            parameters: parameters,
            connection_date: connection_date,
            is_disconnected: is_disconnected,
            user_count: user_count,
            revenue_star_count: revenue_star_count,
            tdlib_type: "connectedAffiliateProgram",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
