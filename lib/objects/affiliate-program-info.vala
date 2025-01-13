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
 * Contains information about an active affiliate program
 */
public class TDLib.AffiliateProgramInfo : Error {

    /**
     * Parameters of the affiliate program
     */
    public AffiliateProgramParameters parameters { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the affiliate program will be
     * closed; 0 if the affiliate program isn't scheduled to be closed.
     * If positive, then the program can't be connected using
     * connectAffiliateProgram, but active connections will work until the
     * date
     */
    public int32 end_date { get; construct set; }

    /**
     * The amount of daily revenue per user in Telegram Stars of the bot that
     * created the affiliate program
     */
    public StarAmount daily_revenue_per_user_amount { get; construct set; }

    public AffiliateProgramInfo (
        AffiliateProgramParameters parameters,
        int32 end_date,
        StarAmount daily_revenue_per_user_amount
    ) {
        Object (
            parameters: parameters,
            end_date: end_date,
            daily_revenue_per_user_amount: daily_revenue_per_user_amount,
            tdlib_type: "affiliateProgramInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
