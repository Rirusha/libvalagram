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
 * Contains result of gift crafting
 */
public abstract class TDLib.CraftGiftResult : Error {}

/**
 * Crafting was successful
 */
public class TDLib.CraftGiftResultSuccess : CraftGiftResult {

    /**
     * The created gift
     */
    public UpgradedGift gift { get; construct set; }

    /**
     * Unique identifier of the received gift for the current user
     */
    public string received_gift_id { get; construct set; }

    public CraftGiftResultSuccess (
        UpgradedGift gift,
        string received_gift_id
    ) {
        Object (
            gift: gift,
            received_gift_id: received_gift_id,
            tdlib_type: "craftGiftResultSuccess",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Crafting isn't possible because one of the gifts can't be used for
 * crafting yet
 */
public class TDLib.CraftGiftResultTooEarly : CraftGiftResult {

    /**
     * Time left before the gift can be used for crafting
     */
    public int32 retry_after { get; construct set; }

    public CraftGiftResultTooEarly (
        int32 retry_after
    ) {
        Object (
            retry_after: retry_after,
            tdlib_type: "craftGiftResultTooEarly",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Crafting isn't possible because one of the gifts isn't suitable for
 * crafting
 */
public class TDLib.CraftGiftResultInvalidGift : CraftGiftResult {

    public CraftGiftResultInvalidGift () {
        Object (
            tdlib_type: "craftGiftResultInvalidGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Crafting has failed
 */
public class TDLib.CraftGiftResultFail : CraftGiftResult {

    public CraftGiftResultFail () {
        Object (
            tdlib_type: "craftGiftResultFail",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
