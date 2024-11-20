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
 * Describes purpose of a transaction with a supergroup or a channel
 */
public abstract class TDLib.ChatTransactionPurpose : Error {}

/**
 * Paid media were bought
 */
public class TDLib.ChatTransactionPurposePaidMedia : ChatTransactionPurpose {

    /**
     * Identifier of the corresponding message with paid media; can be 0 or
     * an identifier of a deleted message
     */
    public int64 message_id { get; construct set; }

    /**
     * The bought media if the transaction wasn't refunded
     */
    public Gee.ArrayList<PaidMedia?> media { get; construct set; default = new Gee.ArrayList<PaidMedia?> (); }

    public ChatTransactionPurposePaidMedia (
        int64 message_id,
        Gee.ArrayList<PaidMedia?> media
    ) {
        Object (
            message_id: message_id,
            media: media,
            tdlib_type: "chatTransactionPurposePaidMedia",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * User joined the channel and subscribed to regular payments in Telegram
 * Stars
 */
public class TDLib.ChatTransactionPurposeJoin : ChatTransactionPurpose {

    /**
     * The number of seconds between consecutive Telegram Star debiting
     */
    public int32 period { get; construct set; }

    public ChatTransactionPurposeJoin (
        int32 period
    ) {
        Object (
            period: period,
            tdlib_type: "chatTransactionPurposeJoin",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * User paid for a reaction
 */
public class TDLib.ChatTransactionPurposeReaction : ChatTransactionPurpose {

    /**
     * Identifier of the reacted message; can be 0 or an identifier of a
     * deleted message
     */
    public int64 message_id { get; construct set; }

    public ChatTransactionPurposeReaction (
        int64 message_id
    ) {
        Object (
            message_id: message_id,
            tdlib_type: "chatTransactionPurposeReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * User received Telegram Stars from a giveaway
 */
public class TDLib.ChatTransactionPurposeGiveaway : ChatTransactionPurpose {

    /**
     * Identifier of the message with giveaway; can be 0 or an identifier of
     * a deleted message
     */
    public int64 giveaway_message_id { get; construct set; }

    public ChatTransactionPurposeGiveaway (
        int64 giveaway_message_id
    ) {
        Object (
            giveaway_message_id: giveaway_message_id,
            tdlib_type: "chatTransactionPurposeGiveaway",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
