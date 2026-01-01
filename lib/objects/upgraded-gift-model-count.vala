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
 * Describes a model of an upgraded gift with the number of gifts found
 */
public class TDLib.UpgradedGiftModelCount : Error {

    /**
     * The model
     */
    public UpgradedGiftModel model { get; construct set; }

    /**
     * Total number of gifts with the model
     */
    public int32 total_count { get; construct set; }

    public UpgradedGiftModelCount (
        UpgradedGiftModel model,
        int32 total_count
    ) {
        Object (
            model: model,
            total_count: total_count,
            tdlib_type: "upgradedGiftModelCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
