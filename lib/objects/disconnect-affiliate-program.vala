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
 * Disconnects an affiliate program from the given affiliate and
 * immediately deactivates its referral link. Returns updated information
 * about the disconnected affiliate program
 */
internal class TDLib.DisconnectAffiliateProgram : TDObject {

    /**
     * The affiliate to which the affiliate program is connected
     */
    public AffiliateType affiliate { get; construct set; }

    /**
     * The referral link of the affiliate program
     */
    public string url { get; construct set; }

    public DisconnectAffiliateProgram (
        AffiliateType affiliate,
        string url
    ) {
        Object (
            affiliate: affiliate,
            url: url,
            tdlib_type: "disconnectAffiliateProgram",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
