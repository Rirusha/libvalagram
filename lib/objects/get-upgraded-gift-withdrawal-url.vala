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
 * Returns a URL for upgraded gift withdrawal in the TON blockchain as an
 * NFT; requires owner privileges for gifts owned by a chat
 */
public class TDLib.GetUpgradedGiftWithdrawalUrl : TDObject {

    /**
     * Identifier of the gift
     */
    public string received_gift_id { get; construct set; }

    /**
     * The 2-step verification password of the current user
     */
    public string password { get; construct set; }

    public GetUpgradedGiftWithdrawalUrl (
        string received_gift_id,
        string password
    ) {
        Object (
            received_gift_id: received_gift_id,
            password: password,
            tdlib_type: "getUpgradedGiftWithdrawalUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
