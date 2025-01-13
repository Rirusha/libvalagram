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
 * Returns available options for Telegram Premium gift code or Telegram
 * Premium giveaway creation
 */
internal class TDLib.GetPremiumGiftCodePaymentOptions : TDObject {

    /**
     * Identifier of the supergroup or channel chat, which will be
     * automatically boosted by receivers of the gift codes and which is
     * administered by the user; 0 if none
     */
    public int64 boosted_chat_id { get; construct set; }

    public GetPremiumGiftCodePaymentOptions (
        int64 boosted_chat_id
    ) {
        Object (
            boosted_chat_id: boosted_chat_id,
            tdlib_type: "getPremiumGiftCodePaymentOptions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
