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
 * Sends a gift upgraded by the current user to another user
 */
internal class TDLib.TransferGift : TDObject {

    /**
     * Identifier of the user that sent the gift
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * Identifier of the message with the upgraded gift in the chat with the
     * user
     */
    public int64 message_id { get; construct set; }

    /**
     * Identifier of the user that will receive the gift
     */
    public int64 receiver_user_id { get; construct set; }

    /**
     * The amount of Telegram Stars required for the transfer
     */
    public int64 star_count { get; construct set; }

    public TransferGift (
        int64 sender_user_id,
        int64 message_id,
        int64 receiver_user_id,
        int64 star_count
    ) {
        Object (
            sender_user_id: sender_user_id,
            message_id: message_id,
            receiver_user_id: receiver_user_id,
            star_count: star_count,
            tdlib_type: "transferGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
