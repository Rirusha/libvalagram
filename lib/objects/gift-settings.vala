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
 * Contains settings for gift receiving for a user
 */
public class TDLib.GiftSettings : Error {

    /**
     * True, if a button for sending a gift to the user or by the user must
     * always be shown in the input field
     */
    public bool show_gift_button { get; construct set; }

    /**
     * Types of gifts accepted by the user; for Telegram Premium users only
     */
    public AcceptedGiftTypes accepted_gift_types { get; construct set; }

    public GiftSettings (
        bool show_gift_button,
        AcceptedGiftTypes accepted_gift_types
    ) {
        Object (
            show_gift_button: show_gift_button,
            accepted_gift_types: accepted_gift_types,
            tdlib_type: "giftSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
