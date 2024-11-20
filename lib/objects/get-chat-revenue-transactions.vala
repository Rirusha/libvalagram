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
 * Returns the list of revenue transactions for a chat. Currently, this
 * method can be used only
 * for channels if supergroupFullInfo.can_get_revenue_statistics == true
 * or bots if userFullInfo.bot_info.can_get_revenue_statistics == true
 */
internal class TDLib.GetChatRevenueTransactions : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Number of transactions to skip
     */
    public int32 offset { get; construct set; }

    /**
     * The maximum number of transactions to be returned; up to 200
     */
    public int32 limit { get; construct set; }

    public GetChatRevenueTransactions (
        int64 chat_id,
        int32 offset,
        int32 limit
    ) {
        Object (
            chat_id: chat_id,
            offset: offset,
            limit: limit,
            tdlib_type: "getChatRevenueTransactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
