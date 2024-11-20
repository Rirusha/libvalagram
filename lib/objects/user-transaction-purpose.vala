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
 * Describes purpose of a transaction with a user
 */
public abstract class TDLib.UserTransactionPurpose : Error {}

/**
 * A user gifted Telegram Stars
 */
public class TDLib.UserTransactionPurposeGiftedStars : UserTransactionPurpose {

    /**
     * A sticker to be shown in the transaction information; may be null if
     * unknown
     */
    public Sticker? sticker { get; construct set; }

    public UserTransactionPurposeGiftedStars (
        Sticker? sticker
    ) {
        Object (
            sticker: sticker,
            tdlib_type: "userTransactionPurposeGiftedStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user sold a gift received from another user or bot
 */
public class TDLib.UserTransactionPurposeGiftSell : UserTransactionPurpose {

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    public UserTransactionPurposeGiftSell (
        Gift gift
    ) {
        Object (
            gift: gift,
            tdlib_type: "userTransactionPurposeGiftSell",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user or the bot sent a gift to a user
 */
public class TDLib.UserTransactionPurposeGiftSend : UserTransactionPurpose {

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    public UserTransactionPurposeGiftSend (
        Gift gift
    ) {
        Object (
            gift: gift,
            tdlib_type: "userTransactionPurposeGiftSend",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
