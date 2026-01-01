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
 * A detailed statistics about Toncoins earned by the current user
 */
public class TDLib.TonRevenueStatistics : Error {

    /**
     * A graph containing amount of revenue in a given day
     */
    public StatisticalGraph revenue_by_day_graph { get; construct set; }

    /**
     * Amount of earned revenue
     */
    public TonRevenueStatus status { get; construct set; }

    /**
     * Current conversion rate of nanotoncoin to USD cents
     */
    public double usd_rate { get; construct set; }

    public TonRevenueStatistics (
        StatisticalGraph revenue_by_day_graph,
        TonRevenueStatus status,
        double usd_rate
    ) {
        Object (
            revenue_by_day_graph: revenue_by_day_graph,
            status: status,
            usd_rate: usd_rate,
            tdlib_type: "tonRevenueStatistics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
