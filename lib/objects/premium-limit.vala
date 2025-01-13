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
 * Contains information about a limit, increased for Premium users
 */
public class TDLib.PremiumLimit : Error {

    /**
     * The type of the limit
     */
    public PremiumLimitType type_ { get; construct set; }

    /**
     * Default value of the limit
     */
    public int32 default_value { get; construct set; }

    /**
     * Value of the limit for Premium users
     */
    public int32 premium_value { get; construct set; }

    public PremiumLimit (
        PremiumLimitType type_,
        int32 default_value,
        int32 premium_value
    ) {
        Object (
            type_: type_,
            default_value: default_value,
            premium_value: premium_value,
            tdlib_type: "premiumLimit",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
