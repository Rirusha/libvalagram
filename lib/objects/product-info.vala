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
 * Contains information about a product that can be paid with invoice
 */
public class TDLib.ProductInfo : Error {

    /**
     * Product title
     */
    public string title { get; construct set; }

    /**
     * Product description
     */
    public FormattedText description { get; construct set; }

    /**
     * Product photo; may be null
     */
    public Photo? photo { get; construct set; }

    public ProductInfo (
        string title,
        FormattedText description,
        Photo? photo
    ) {
        Object (
            title: title,
            description: description,
            photo: photo,
            tdlib_type: "productInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
