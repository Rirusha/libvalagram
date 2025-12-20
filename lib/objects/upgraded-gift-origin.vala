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
 * Describes origin from which the upgraded gift was obtained
 */
public abstract class TDLib.UpgradedGiftOrigin : Error {}

/**
 * The gift was obtained by upgrading of a previously received gift
 */
public class TDLib.UpgradedGiftOriginUpgrade : UpgradedGiftOrigin {

    /**
     * Identifier of the message with the regular gift that was upgraded; may
     * be 0 or an identifier of a deleted message
     */
    public int64 gift_message_id { get; construct set; }

    public UpgradedGiftOriginUpgrade (
        int64 gift_message_id
    ) {
        Object (
            gift_message_id: gift_message_id,
            tdlib_type: "upgradedGiftOriginUpgrade",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The gift was transferred from another owner
 */
public class TDLib.UpgradedGiftOriginTransfer : UpgradedGiftOrigin {

    public UpgradedGiftOriginTransfer () {
        Object (
            tdlib_type: "upgradedGiftOriginTransfer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The gift was bought from another user
 */
public class TDLib.UpgradedGiftOriginResale : UpgradedGiftOrigin {

    /**
     * Price paid for the gift
     */
    public GiftResalePrice price { get; construct set; }

    public UpgradedGiftOriginResale (
        GiftResalePrice price
    ) {
        Object (
            price: price,
            tdlib_type: "upgradedGiftOriginResale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The gift was assigned from blockchain and isn't owned by the current
 * user. The gift can't be transferred, resold or withdrawn to blockchain
 */
public class TDLib.UpgradedGiftOriginBlockchain : UpgradedGiftOrigin {

    public UpgradedGiftOriginBlockchain () {
        Object (
            tdlib_type: "upgradedGiftOriginBlockchain",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The sender or receiver of the message has paid for upgraid of the
 * gift, which has been completed
 */
public class TDLib.UpgradedGiftOriginPrepaidUpgrade : UpgradedGiftOrigin {

    public UpgradedGiftOriginPrepaidUpgrade () {
        Object (
            tdlib_type: "upgradedGiftOriginPrepaidUpgrade",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The gift was bought through an offer
 */
public class TDLib.UpgradedGiftOriginOffer : UpgradedGiftOrigin {

    /**
     * Price paid for the gift
     */
    public GiftResalePrice price { get; construct set; }

    public UpgradedGiftOriginOffer (
        GiftResalePrice price
    ) {
        Object (
            price: price,
            tdlib_type: "upgradedGiftOriginOffer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
