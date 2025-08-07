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
 * Contains information about a post to suggest
 */
public class TDLib.InputSuggestedPostInfo : Error {

    /**
     * Price of the suggested post; pass null to suggest a post without
     * payment. If the current user isn't an administrator of the channel
     * direct messages chat
     * and has no enough funds to pay for the post, then the error
     * "BALANCE_TOO_LOW" will be returned immediately
     */
    public SuggestedPostPrice price { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the post is expected to be
     * published; pass 0 if the date isn't restricted. If specified,
     * then the date must be
     * getOption("suggested_post_send_delay_min")-getOption("suggested_post_send_delay_max")
     * seconds in the future
     */
    public int32 send_date { get; construct set; }

    public InputSuggestedPostInfo (
        SuggestedPostPrice price,
        int32 send_date
    ) {
        Object (
            price: price,
            send_date: send_date,
            tdlib_type: "inputSuggestedPostInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
