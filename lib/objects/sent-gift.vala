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
 * Represents a gift received by a user
 */
public abstract class TDLib.SentGift : Error {}

/**
 * Regular gift
 */
public class TDLib.SentGiftRegular : SentGift {

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    public SentGiftRegular (
        Gift gift
    ) {
        Object (
            gift: gift,
            tdlib_type: "sentGiftRegular",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Upgraded gift
 */
public class TDLib.SentGiftUpgraded : SentGift {

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    public SentGiftUpgraded (
        UpgradedGift gift
    ) {
        Object (
            gift: gift,
            tdlib_type: "sentGiftUpgraded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
