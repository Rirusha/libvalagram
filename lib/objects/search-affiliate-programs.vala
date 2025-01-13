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
 * Searches affiliate programs that can be connected to the given
 * affiliate
 */
internal class TDLib.SearchAffiliatePrograms : TDObject {

    /**
     * The affiliate for which affiliate programs are searched for
     */
    public AffiliateType affiliate { get; construct set; }

    /**
     * Sort order for the results
     */
    public AffiliateProgramSortOrder sort_order { get; construct set; }

    /**
     * Offset of the first affiliate program to return as received from the
     * previous request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    /**
     * The maximum number of affiliate programs to return
     */
    public int32 limit { get; construct set; }

    public SearchAffiliatePrograms (
        AffiliateType affiliate,
        AffiliateProgramSortOrder sort_order,
        string offset,
        int32 limit
    ) {
        Object (
            affiliate: affiliate,
            sort_order: sort_order,
            offset: offset,
            limit: limit,
            tdlib_type: "searchAffiliatePrograms",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
