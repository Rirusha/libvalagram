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
 * Sends an offer to purchase an upgraded gift
 */
public class TDLib.SendGiftPurchaseOffer : TDObject {

    /**
     * Identifier of the user or the channel chat that currently owns the
     * gift and will receive the offer
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * Name of the upgraded gift
     */
    public string gift_name { get; construct set; }

    /**
     * The price that the user agreed to pay for the gift
     */
    public GiftResalePrice price { get; construct set; }

    /**
     * Duration of the offer, in seconds; must be one of 21600, 43200, 86400,
     * 129600, 172800, or 259200. Can also be 120 if Telegram test
     * environment is used
     */
    public int32 duration { get; construct set; }

    /**
     * The number of Telegram Stars the user agreed to pay additionally for
     * sending of the offer message to the current gift owner; pass
     * userFullInfo.outgoing_paid_message_star_count for users and 0
     * otherwise
     */
    public int64 paid_message_star_count { get; construct set; }

    public SendGiftPurchaseOffer (
        MessageSender owner_id,
        string gift_name,
        GiftResalePrice price,
        int32 duration,
        int64 paid_message_star_count
    ) {
        Object (
            owner_id: owner_id,
            gift_name: gift_name,
            price: price,
            duration: duration,
            paid_message_star_count: paid_message_star_count,
            tdlib_type: "sendGiftPurchaseOffer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
