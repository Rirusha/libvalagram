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
 * Changes settings for gift receiving of a business account; for bots
 * only
 */
public class TDLib.SetBusinessAccountGiftSettings : TDObject {

    /**
     * Unique identifier of business connection
     */
    public string business_connection_id { get; construct set; }

    /**
     * The new settings
     */
    public GiftSettings settings { get; construct set; }

    public SetBusinessAccountGiftSettings (
        string business_connection_id,
        GiftSettings settings
    ) {
        Object (
            business_connection_id: business_connection_id,
            settings: settings,
            tdlib_type: "setBusinessAccountGiftSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
