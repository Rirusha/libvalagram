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
 * Describes type of subscription paid in Telegram Stars
 */
public abstract class TDLib.StarSubscriptionType : Error {}

/**
 * Describes a subscription to a channel chat
 */
public class TDLib.StarSubscriptionTypeChannel : StarSubscriptionType {

    /**
     * True, if the subscription is active and the user can use the method
     * {@link Client.reuse_star_subscription} to join the subscribed chat
     * again
     */
    public bool can_reuse { get; construct set; }

    /**
     * The invite link that can be used to renew the subscription if it has
     * been expired; may be empty, if the link isn't available anymore
     */
    public string invite_link { get; construct set; }

    public StarSubscriptionTypeChannel (
        bool can_reuse,
        string invite_link
    ) {
        Object (
            can_reuse: can_reuse,
            invite_link: invite_link,
            tdlib_type: "starSubscriptionTypeChannel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Describes a subscription in a bot or a business account
 */
public class TDLib.StarSubscriptionTypeBot : StarSubscriptionType {

    /**
     * True, if the subscription was canceled by the bot and can't be
     * extended
     */
    public bool is_canceled_by_bot { get; construct set; }

    /**
     * Subscription invoice title
     */
    public string title { get; construct set; }

    /**
     * Subscription invoice photo
     */
    public Photo photo { get; construct set; }

    /**
     * The link to the subscription invoice
     */
    public string invoice_link { get; construct set; }

    public StarSubscriptionTypeBot (
        bool is_canceled_by_bot,
        string title,
        Photo photo,
        string invoice_link
    ) {
        Object (
            is_canceled_by_bot: is_canceled_by_bot,
            title: title,
            photo: photo,
            invoice_link: invoice_link,
            tdlib_type: "starSubscriptionTypeBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
