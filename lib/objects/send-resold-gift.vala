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
 * Sends an upgraded gift that is available for resale to another user or
 * channel chat; gifts already owned by the current user
 * must be transferred using {@link Client.transfer_gift} and can't be
 * passed to the method
 */
public class TDLib.SendResoldGift : TDObject {

    /**
     * Name of the upgraded gift to send
     */
    public string gift_name { get; construct set; }

    /**
     * Identifier of the user or the channel chat that will receive the gift
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * The amount of Telegram Stars required to pay for the gift
     */
    public int64 star_count { get; construct set; }

    public SendResoldGift (
        string gift_name,
        MessageSender owner_id,
        int64 star_count
    ) {
        Object (
            gift_name: gift_name,
            owner_id: owner_id,
            star_count: star_count,
            tdlib_type: "sendResoldGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
