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
 * Cancels or re-enables Telegram Star subscription
 */
internal class TDLib.EditStarSubscription : TDObject {

    /**
     * Identifier of the subscription to change
     */
    public string subscription_id { get; construct set; }

    /**
     * New value of is_canceled
     */
    public bool is_canceled { get; construct set; }

    public EditStarSubscription (
        string subscription_id,
        bool is_canceled
    ) {
        Object (
            subscription_id: subscription_id,
            is_canceled: is_canceled,
            tdlib_type: "editStarSubscription",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
