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
 * Returns the list of Telegram Star subscriptions for the current user
 */
public class TDLib.GetStarSubscriptions : TDObject {

    /**
     * Pass true to receive only expiring subscriptions for which there are
     * no enough Telegram Stars to extend
     */
    public bool only_expiring { get; construct set; }

    /**
     * Offset of the first subscription to return as received from the
     * previous request; use empty string to get the first chunk of results
     */
    public string offset { get; construct set; }

    public GetStarSubscriptions (
        bool only_expiring,
        string offset
    ) {
        Object (
            only_expiring: only_expiring,
            offset: offset,
            tdlib_type: "getStarSubscriptions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
