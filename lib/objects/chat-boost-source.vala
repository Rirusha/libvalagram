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
 * Describes source of a chat boost
 */
public abstract class TDLib.ChatBoostSource : Error {}

/**
 * The chat created a Telegram Premium gift code for a user
 */
public class TDLib.ChatBoostSourceGiftCode : ChatBoostSource {

    /**
     * Identifier of a user, for which the gift code was created
     */
    public int64 user_id { get; construct set; }

    /**
     * The created Telegram Premium gift code, which is known only if this is
     * a gift code for the current user, or it has already been claimed
     */
    public string gift_code { get; construct set; }

    public ChatBoostSourceGiftCode (
        int64 user_id,
        string gift_code
    ) {
        Object (
            user_id: user_id,
            gift_code: gift_code,
            tdlib_type: "chatBoostSourceGiftCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat created a giveaway
 */
public class TDLib.ChatBoostSourceGiveaway : ChatBoostSource {

    /**
     * Identifier of a user that won in the giveaway; 0 if none
     */
    public int64 user_id { get; construct set; }

    /**
     * The created Telegram Premium gift code if it was used by the user or
     * can be claimed by the current user; an empty string otherwise; for
     * Telegram Premium giveways only
     */
    public string gift_code { get; construct set; }

    /**
     * Number of Telegram Stars distributed among winners of the giveaway
     */
    public int64 star_count { get; construct set; }

    /**
     * Identifier of the corresponding giveaway message; can be an identifier
     * of a deleted message
     */
    public int64 giveaway_message_id { get; construct set; }

    /**
     * True, if the winner for the corresponding giveaway prize wasn't
     * chosen, because there were not enough participants
     */
    public bool is_unclaimed { get; construct set; }

    public ChatBoostSourceGiveaway (
        int64 user_id,
        string gift_code,
        int64 star_count,
        int64 giveaway_message_id,
        bool is_unclaimed
    ) {
        Object (
            user_id: user_id,
            gift_code: gift_code,
            star_count: star_count,
            giveaway_message_id: giveaway_message_id,
            is_unclaimed: is_unclaimed,
            tdlib_type: "chatBoostSourceGiveaway",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A user with Telegram Premium subscription or gifted Telegram Premium
 * boosted the chat
 */
public class TDLib.ChatBoostSourcePremium : ChatBoostSource {

    /**
     * Identifier of the user
     */
    public int64 user_id { get; construct set; }

    public ChatBoostSourcePremium (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "chatBoostSourcePremium",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
