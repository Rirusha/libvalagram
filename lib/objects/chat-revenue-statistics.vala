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
 * A detailed statistics about revenue earned from sponsored messages in
 * a chat
 */
public class TDLib.ChatRevenueStatistics : Error {

    /**
     * A graph containing amount of revenue in a given hour
     */
    public StatisticalGraph revenue_by_hour_graph { get; construct set; }

    /**
     * A graph containing amount of revenue
     */
    public StatisticalGraph revenue_graph { get; construct set; }

    /**
     * Amount of earned revenue
     */
    public ChatRevenueAmount revenue_amount { get; construct set; }

    /**
     * Current conversion rate of the cryptocurrency in which revenue is
     * calculated to USD
     */
    public double usd_rate { get; construct set; }

    public ChatRevenueStatistics (
        StatisticalGraph revenue_by_hour_graph,
        StatisticalGraph revenue_graph,
        ChatRevenueAmount revenue_amount,
        double usd_rate
    ) {
        Object (
            revenue_by_hour_graph: revenue_by_hour_graph,
            revenue_graph: revenue_graph,
            revenue_amount: revenue_amount,
            usd_rate: usd_rate,
            tdlib_type: "chatRevenueStatistics",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
