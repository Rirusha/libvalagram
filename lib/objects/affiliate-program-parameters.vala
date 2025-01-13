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
 * Describes parameters of an affiliate program
 */
public class TDLib.AffiliateProgramParameters : Error {

    /**
     * The number of Telegram Stars received by the affiliate for each 1000
     * Telegram Stars received by the program owner;
     * 
     * getOption("affiliate_program_commission_per_mille_min")-getOption("affiliate_program_commission_per_mille_max")
     */
    public int32 commission_per_mille { get; construct set; }

    /**
     * Number of months the program will be active; 0-36. If 0, then the
     * program is eternal
     */
    public int32 month_count { get; construct set; }

    public AffiliateProgramParameters (
        int32 commission_per_mille,
        int32 month_count
    ) {
        Object (
            commission_per_mille: commission_per_mille,
            month_count: month_count,
            tdlib_type: "affiliateProgramParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
