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
 * Represents a gift received by a user
 */
public class TDLib.UserGift : Error {

    /**
     * Identifier of the user that sent the gift; 0 if unknown
     */
    public int64 sender_user_id { get; construct set; }

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
     * True, if the gift is displayed on the user's profile page; may be
     * false only for the receiver of the gift
     */
    public bool is_saved { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift was sent
     */
    public int32 date { get; construct set; }

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    /**
     * Identifier of the message with the gift in the chat with the sender of
     * the gift; can be 0 or an identifier of a deleted message; only for the
     * gift receiver
     */
    public int64 message_id { get; construct set; }

    /**
     * Number of Telegram Stars that can be claimed by the receiver instead
     * of the gift; 0 if the gift can't be sold by the current user
     */
    public int64 sell_star_count { get; construct set; }

    public UserGift (
        int64 sender_user_id,
        FormattedText text,
        bool is_private,
        bool is_saved,
        int32 date,
        Gift gift,
        int64 message_id,
        int64 sell_star_count
    ) {
        Object (
            sender_user_id: sender_user_id,
            text: text,
            is_private: is_private,
            is_saved: is_saved,
            date: date,
            gift: gift,
            message_id: message_id,
            sell_star_count: sell_star_count,
            tdlib_type: "userGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
