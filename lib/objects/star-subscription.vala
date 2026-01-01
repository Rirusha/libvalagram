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
 * Contains information about subscription to a channel chat, a bot, or a
 * business account that was paid in Telegram Stars
 */
public class TDLib.StarSubscription : Error {

    /**
     * Unique identifier of the subscription
     */
    public string id_ { get; construct set; }

    /**
     * Identifier of the chat that is subscribed
     */
    public int64 chat_id { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the subscription will expire or
     * expired
     */
    public int32 expiration_date { get; construct set; }

    /**
     * True, if the subscription was canceled
     */
    public bool is_canceled { get; construct set; }

    /**
     * True, if the subscription expires soon and there are no enough
     * Telegram Stars on the user's balance to extend it
     */
    public bool is_expiring { get; construct set; }

    /**
     * The subscription plan
     */
    public StarSubscriptionPricing pricing { get; construct set; }

    /**
     * Type of the subscription
     */
    public StarSubscriptionType type_ { get; construct set; }

    public StarSubscription (
        string id_,
        int64 chat_id,
        int32 expiration_date,
        bool is_canceled,
        bool is_expiring,
        StarSubscriptionPricing pricing,
        StarSubscriptionType type_
    ) {
        Object (
            id_: id_,
            chat_id: chat_id,
            expiration_date: expiration_date,
            is_canceled: is_canceled,
            is_expiring: is_expiring,
            pricing: pricing,
            type_: type_,
            tdlib_type: "starSubscription",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
