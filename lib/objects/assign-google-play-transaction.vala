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
 * Informs server about a purchase through Google Play. For official
 * applications only
 */
public class TDLib.AssignGooglePlayTransaction : TDObject {

    /**
     * Application package name
     */
    public string package_name { get; construct set; }

    /**
     * Identifier of the purchased store product
     */
    public string store_product_id { get; construct set; }

    /**
     * Google Play purchase token
     */
    public string purchase_token { get; construct set; }

    /**
     * Transaction purpose
     */
    public StorePaymentPurpose purpose { get; construct set; }

    public AssignGooglePlayTransaction (
        string package_name,
        string store_product_id,
        string purchase_token,
        StorePaymentPurpose purpose
    ) {
        Object (
            package_name: package_name,
            store_product_id: store_product_id,
            purchase_token: purchase_token,
            purpose: purpose,
            tdlib_type: "assignGooglePlayTransaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
