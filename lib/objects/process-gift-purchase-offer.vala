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
 * Handles a pending gift purchase offer
 */
public class TDLib.ProcessGiftPurchaseOffer : TDObject {

    /**
     * Identifier of the message with the gift purchase offer
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass true to approve the request; pass false to decline it
     */
    public bool approve { get; construct set; }

    public ProcessGiftPurchaseOffer (
        int64 message_id,
        bool approve
    ) {
        Object (
            message_id: message_id,
            approve: approve,
            tdlib_type: "processGiftPurchaseOffer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
