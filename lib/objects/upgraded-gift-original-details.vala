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
 * Describes the original details about the gift
 */
public class TDLib.UpgradedGiftOriginalDetails : Error {

    /**
     * Identifier of the user that sent the gift; 0 if the gift was private
     */
    public int64 sender_user_id { get; construct set; }

    /**
     * Identifier of the user that received the gift
     */
    public int64 receiver_user_id { get; construct set; }

    /**
     * Message added to the gift
     */
    public FormattedText text { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the gift was sent
     */
    public int32 date { get; construct set; }

    public UpgradedGiftOriginalDetails (
        int64 sender_user_id,
        int64 receiver_user_id,
        FormattedText text,
        int32 date
    ) {
        Object (
            sender_user_id: sender_user_id,
            receiver_user_id: receiver_user_id,
            text: text,
            date: date,
            tdlib_type: "upgradedGiftOriginalDetails",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
