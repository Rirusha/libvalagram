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
 * Changes the minimum number of Telegram Stars that must be paid by
 * general participant for each sent message to a live story call.
 * Requires groupCall.can_be_managed right
 */
public class TDLib.SetGroupCallPaidMessageStarCount : TDObject {

    /**
     * Group call identifier; must be an identifier of a live story call
     */
    public int32 group_call_id { get; construct set; }

    /**
     * The new minimum number of Telegram Stars;
     * 0-getOption("paid_group_call_message_star_count_max")
     */
    public int64 paid_message_star_count { get; construct set; }

    public SetGroupCallPaidMessageStarCount (
        int32 group_call_id,
        int64 paid_message_star_count
    ) {
        Object (
            group_call_id: group_call_id,
            paid_message_star_count: paid_message_star_count,
            tdlib_type: "setGroupCallPaidMessageStarCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
