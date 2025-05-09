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
 * Returns a URL for chat revenue withdrawal; requires owner privileges
 * in the channel chat or the bot. Currently, this method can be used
 * only
 * if getOption("can_withdraw_chat_revenue") for channels with
 * supergroupFullInfo.can_get_revenue_statistics == true or bots with
 * userFullInfo.bot_info.can_get_revenue_statistics == true
 */
public class TDLib.GetChatRevenueWithdrawalUrl : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * The 2-step verification password of the current user
     */
    public string password { get; construct set; }

    public GetChatRevenueWithdrawalUrl (
        int64 chat_id,
        string password
    ) {
        Object (
            chat_id: chat_id,
            password: password,
            tdlib_type: "getChatRevenueWithdrawalUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
