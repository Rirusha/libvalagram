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
 * Creates a new subscription invite link for a channel chat. Requires
 * can_invite_users right in the chat
 */
public class TDLib.CreateChatSubscriptionInviteLink : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * Invite link name; 0-32 characters
     */
    public string name { get; construct set; }

    /**
     * Information about subscription plan that will be applied to the users
     * joining the chat via the link.
     * Subscription period must be 2592000 in production environment, and 60
     * or 300 if Telegram test environment is used
     */
    public StarSubscriptionPricing subscription_pricing { get; construct set; }

    public CreateChatSubscriptionInviteLink (
        int64 chat_id,
        string name,
        StarSubscriptionPricing subscription_pricing
    ) {
        Object (
            chat_id: chat_id,
            name: name,
            subscription_pricing: subscription_pricing,
            tdlib_type: "createChatSubscriptionInviteLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
