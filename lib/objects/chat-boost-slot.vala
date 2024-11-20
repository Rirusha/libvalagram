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
 * Describes a slot for chat boost
 */
public class TDLib.ChatBoostSlot : Error {

    /**
     * Unique identifier of the slot
     */
    public int32 slot_id { get; construct set; }

    /**
     * Identifier of the currently boosted chat; 0 if none
     */
    public int64 currently_boosted_chat_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the chat was boosted; 0 if none
     */
    public int32 start_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the boost will expire
     */
    public int32 expiration_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) after which the boost can be used for
     * another chat
     */
    public int32 cooldown_until_date { get; construct set; }

    public ChatBoostSlot (
        int32 slot_id,
        int64 currently_boosted_chat_id,
        int32 start_date,
        int32 expiration_date,
        int32 cooldown_until_date
    ) {
        Object (
            slot_id: slot_id,
            currently_boosted_chat_id: currently_boosted_chat_id,
            start_date: start_date,
            expiration_date: expiration_date,
            cooldown_until_date: cooldown_until_date,
            tdlib_type: "chatBoostSlot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
