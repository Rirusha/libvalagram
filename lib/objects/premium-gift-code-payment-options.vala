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
 * Contains a list of options for creating Telegram Premium gift codes or
 * Telegram Premium giveaway
 */
public class TDLib.PremiumGiftCodePaymentOptions : Error {

    /**
     * The list of options
     */
    public Gee.ArrayList<PremiumGiftCodePaymentOption?> options { get; construct set; default = new Gee.ArrayList<PremiumGiftCodePaymentOption?> (); }

    public PremiumGiftCodePaymentOptions (
        Gee.ArrayList<PremiumGiftCodePaymentOption?> options
    ) {
        Object (
            options: options,
            tdlib_type: "premiumGiftCodePaymentOptions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
