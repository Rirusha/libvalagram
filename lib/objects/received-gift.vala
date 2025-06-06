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
 * Represents a gift received by a user or a chat
 */
public class TDLib.ReceivedGift : Error {

    /**
     * Unique identifier of the received gift for the current user; only for
     * the receiver of the gift
     */
    public string received_gift_id { get; construct set; }

    /**
     * Identifier of a user or a chat that sent the gift; may be null if
     * unknown
     */
    public MessageSender? sender_id { get; construct set; }

    /**
     * Message added to the gift
     */
    public FormattedText text { get; construct set; }

    /**
     * True, if the sender and gift text are shown only to the gift receiver;
     * otherwise, everyone are able to see them
     */
    public bool is_private { get; construct set; }

    /**
     * True, if the gift is displayed on the chat's profile page; only for
     * the receiver of the gift
     */
    public bool is_saved { get; construct set; }

    /**
     * True, if the gift is pinned to the top of the chat's profile page
     */
    public bool is_pinned { get; construct set; }

    /**
     * True, if the gift is a regular gift that can be upgraded to a unique
     * gift; only for the receiver of the gift
     */
    public bool can_be_upgraded { get; construct set; }

    /**
     * True, if the gift is an upgraded gift that can be transferred to
     * another owner; only for the receiver of the gift
     */
    public bool can_be_transferred { get; construct set; }

    /**
     * True, if the gift was refunded and isn't available anymore
     */
    public bool was_refunded { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift was sent
     */
    public int32 date { get; construct set; }

    /**
     * The gift
     */
    public SentGift gift { get; construct set; }

    /**
     * Number of Telegram Stars that can be claimed by the receiver instead
     * of the regular gift; 0 if the gift can't be sold by the current user
     */
    public int64 sell_star_count { get; construct set; }

    /**
     * Number of Telegram Stars that were paid by the sender for the ability
     * to upgrade the gift
     */
    public int64 prepaid_upgrade_star_count { get; construct set; }

    /**
     * Number of Telegram Stars that must be paid to transfer the upgraded
     * gift; only for the receiver of the gift
     */
    public int64 transfer_star_count { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift can be transferred to
     * another owner; 0 if the gift can be transferred immediately or
     * transfer isn't possible; only for the receiver of the gift
     */
    public int32 next_transfer_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift can be resold to another
     * user; 0 if the gift can't be resold; only for the receiver of the gift
     */
    public int32 next_resale_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the upgraded gift can be
     * transferred to the TON blockchain as an NFT; 0 if NFT export isn't
     * possible; only for the receiver of the gift
     */
    public int32 export_date { get; construct set; }

    public ReceivedGift (
        string received_gift_id,
        MessageSender? sender_id,
        FormattedText text,
        bool is_private,
        bool is_saved,
        bool is_pinned,
        bool can_be_upgraded,
        bool can_be_transferred,
        bool was_refunded,
        int32 date,
        SentGift gift,
        int64 sell_star_count,
        int64 prepaid_upgrade_star_count,
        int64 transfer_star_count,
        int32 next_transfer_date,
        int32 next_resale_date,
        int32 export_date
    ) {
        Object (
            received_gift_id: received_gift_id,
            sender_id: sender_id,
            text: text,
            is_private: is_private,
            is_saved: is_saved,
            is_pinned: is_pinned,
            can_be_upgraded: can_be_upgraded,
            can_be_transferred: can_be_transferred,
            was_refunded: was_refunded,
            date: date,
            gift: gift,
            sell_star_count: sell_star_count,
            prepaid_upgrade_star_count: prepaid_upgrade_star_count,
            transfer_star_count: transfer_star_count,
            next_transfer_date: next_transfer_date,
            next_resale_date: next_resale_date,
            export_date: export_date,
            tdlib_type: "receivedGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
