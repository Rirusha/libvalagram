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
 * Describes an in-store transaction
 */
public abstract class TDLib.StoreTransaction : Error {}

/**
 * A purchase through App Store
 */
public class TDLib.StoreTransactionAppStore : StoreTransaction {

    /**
     * App Store receipt
     */
    public Bytes receipt { get; construct set; }

    public StoreTransactionAppStore (
        Bytes receipt
    ) {
        Object (
            receipt: receipt,
            tdlib_type: "storeTransactionAppStore",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A purchase through Google Play
 */
public class TDLib.StoreTransactionGooglePlay : StoreTransaction {

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

    public StoreTransactionGooglePlay (
        string package_name,
        string store_product_id,
        string purchase_token
    ) {
        Object (
            package_name: package_name,
            store_product_id: store_product_id,
            purchase_token: purchase_token,
            tdlib_type: "storeTransactionGooglePlay",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
