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
 * Changes the business start page of the current user. Requires Telegram
 * Business subscription
 */
public class TDLib.SetBusinessStartPage : TDObject {

    /**
     * The new start page of the business; pass null to remove custom start
     * page
     */
    public InputBusinessStartPage start_page { get; construct set; }

    public SetBusinessStartPage (
        InputBusinessStartPage start_page
    ) {
        Object (
            start_page: start_page,
            tdlib_type: "setBusinessStartPage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
