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
 * Contains information about subscription plan that must be paid by the
 * user to use a chat invite link
 */
public class TDLib.ChatInviteLinkSubscriptionInfo : Error {

    /**
     * Information about subscription plan that must be paid by the user to
     * use the link
     */
    public StarSubscriptionPricing pricing { get; construct set; }

    /**
     * True, if the user has already paid for the subscription and can use
     * joinChatByInviteLink to join the subscribed chat again
     */
    public bool can_reuse { get; construct set; }

    /**
     * Identifier of the payment form to use for subscription payment; 0 if
     * the subscription can't be paid
     */
    public int64 form_id { get; construct set; }

    public ChatInviteLinkSubscriptionInfo (
        StarSubscriptionPricing pricing,
        bool can_reuse,
        int64 form_id
    ) {
        Object (
            pricing: pricing,
            can_reuse: can_reuse,
            form_id: form_id,
            tdlib_type: "chatInviteLinkSubscriptionInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
