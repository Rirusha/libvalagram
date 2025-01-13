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
 * Returns an affiliate program that were connected to the given
 * affiliate by identifier of the bot that created the program
 */
internal class TDLib.GetConnectedAffiliateProgram : TDObject {

    /**
     * The affiliate to which the affiliate program will be connected
     */
    public AffiliateType affiliate { get; construct set; }

    /**
     * Identifier of the bot that created the program
     */
    public int64 bot_user_id { get; construct set; }

    public GetConnectedAffiliateProgram (
        AffiliateType affiliate,
        int64 bot_user_id
    ) {
        Object (
            affiliate: affiliate,
            bot_user_id: bot_user_id,
            tdlib_type: "getConnectedAffiliateProgram",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
