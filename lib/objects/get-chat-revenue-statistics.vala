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
 * Returns detailed revenue statistics about a chat. Currently, this
 * method can be used only
 * for channels if supergroupFullInfo.can_get_revenue_statistics == true
 * or bots if userFullInfo.bot_info.can_get_revenue_statistics == true
 */
public class TDLib.GetChatRevenueStatistics : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Pass true if a dark theme is used by the application
     */
    public bool is_dark { get; construct set; }

    public GetChatRevenueStatistics (
        int64 chat_id,
        bool is_dark
    ) {
        Object (
            chat_id: chat_id,
            is_dark: is_dark,
            tdlib_type: "getChatRevenueStatistics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
