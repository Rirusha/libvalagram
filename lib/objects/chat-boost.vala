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
 * Describes a boost applied to a chat
 */
public class TDLib.ChatBoost : Error {

    /**
     * Unique identifier of the boost
     */
    public string id_ { get; construct set; }

    /**
     * The number of identical boosts applied
     */
    public int32 count { get; construct set; }

    /**
     * Source of the boost
     */
    public ChatBoostSource source { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the chat was boosted
     */
    public int32 start_date { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the boost will expire
     */
    public int32 expiration_date { get; construct set; }

    public ChatBoost (
        string id_,
        int32 count,
        ChatBoostSource source,
        int32 start_date,
        int32 expiration_date
    ) {
        Object (
            id_: id_,
            count: count,
            source: source,
            start_date: start_date,
            expiration_date: expiration_date,
            tdlib_type: "chatBoost",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
