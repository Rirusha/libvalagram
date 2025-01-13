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
 * Returns a URL for Telegram Star withdrawal
 */
public class TDLib.GetStarWithdrawalUrl : TDObject {

    /**
     * Identifier of the owner of the Telegram Stars; can be identifier of an
     * owned bot, or identifier of an owned channel chat
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * The number of Telegram Stars to withdraw. Must be at least
     * getOption("star_withdrawal_count_min")
     */
    public int64 star_count { get; construct set; }

    /**
     * The 2-step verification password of the current user
     */
    public string password { get; construct set; }

    public GetStarWithdrawalUrl (
        MessageSender owner_id,
        int64 star_count,
        string password
    ) {
        Object (
            owner_id: owner_id,
            star_count: star_count,
            password: password,
            tdlib_type: "getStarWithdrawalUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
