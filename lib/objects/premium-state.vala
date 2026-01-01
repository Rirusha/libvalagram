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
 * Contains state of Telegram Premium subscription and promotion videos
 * for Premium features
 */
public class TDLib.PremiumState : Error {

    /**
     * Text description of the state of the current Premium subscription; may
     * be empty if the current user has no Telegram Premium subscription
     */
    public FormattedText state { get; construct set; }

    /**
     * The list of available options for buying Telegram Premium
     */
    public Gee.ArrayList<PremiumStatePaymentOption?> payment_options { get; construct set; default = new Gee.ArrayList<PremiumStatePaymentOption?> (); }

    /**
     * The list of available promotion animations for Premium features
     */
    public Gee.ArrayList<PremiumFeaturePromotionAnimation?> animations { get; construct set; default = new Gee.ArrayList<PremiumFeaturePromotionAnimation?> (); }

    /**
     * The list of available promotion animations for Business features
     */
    public Gee.ArrayList<BusinessFeaturePromotionAnimation?> business_animations { get; construct set; default = new Gee.ArrayList<BusinessFeaturePromotionAnimation?> (); }

    public PremiumState (
        FormattedText state,
        Gee.ArrayList<PremiumStatePaymentOption?> payment_options,
        Gee.ArrayList<PremiumFeaturePromotionAnimation?> animations,
        Gee.ArrayList<BusinessFeaturePromotionAnimation?> business_animations
    ) {
        Object (
            state: state,
            payment_options: payment_options,
            animations: animations,
            business_animations: business_animations,
            tdlib_type: "premiumState",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
