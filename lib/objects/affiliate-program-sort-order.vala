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
 * Describes the order of the found affiliate programs
 */
public abstract class TDLib.AffiliateProgramSortOrder : Error {}

/**
 * The affiliate programs must be sorted by the profitability
 */
public class TDLib.AffiliateProgramSortOrderProfitability : AffiliateProgramSortOrder {

    public AffiliateProgramSortOrderProfitability () {
        Object (
            tdlib_type: "affiliateProgramSortOrderProfitability",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The affiliate programs must be sorted by creation date
 */
public class TDLib.AffiliateProgramSortOrderCreationDate : AffiliateProgramSortOrder {

    public AffiliateProgramSortOrderCreationDate () {
        Object (
            tdlib_type: "affiliateProgramSortOrderCreationDate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The affiliate programs must be sorted by the expected revenue
 */
public class TDLib.AffiliateProgramSortOrderRevenue : AffiliateProgramSortOrder {

    public AffiliateProgramSortOrderRevenue () {
        Object (
            tdlib_type: "affiliateProgramSortOrderRevenue",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
