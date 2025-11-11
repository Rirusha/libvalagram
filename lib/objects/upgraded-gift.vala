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
 * Describes an upgraded gift that can be transferred to another owner or
 * transferred to the TON blockchain as an NFT
 */
public class TDLib.UpgradedGift : Error {

    /**
     * Unique identifier of the gift
     */
    public int64 id_ { get; construct set; }

    /**
     * Unique identifier of the regular gift from which the gift was
     * upgraded; may be 0 for short period of time for old gifts from
     * database
     */
    public int64 regular_gift_id { get; construct set; }

    /**
     * Identifier of the chat that published the gift; 0 if none
     */
    public int64 publisher_chat_id { get; construct set; }

    /**
     * The title of the upgraded gift
     */
    public string title { get; construct set; }

    /**
     * Unique name of the upgraded gift that can be used with
     * internalLinkTypeUpgradedGift or {@link Client.send_resold_gift}
     */
    public string name { get; construct set; }

    /**
     * Unique number of the upgraded gift among gifts upgraded from the same
     * gift
     */
    public int32 number { get; construct set; }

    /**
     * Total number of gifts that were upgraded from the same gift
     */
    public int32 total_upgraded_count { get; construct set; }

    /**
     * The maximum number of gifts that can be upgraded from the same gift
     */
    public int32 max_upgraded_count { get; construct set; }

    /**
     * True, if the original gift could have been bought only by Telegram
     * Premium subscribers
     */
    public bool is_premium { get; construct set; }

    /**
     * True, if the gift can be used to set a theme in a chat
     */
    public bool is_theme_available { get; construct set; }

    /**
     * Identifier of the chat for which the gift is used to set a theme; 0 if
     * none or the gift isn't owned by the current user
     */
    public int64 used_theme_chat_id { get; construct set; }

    /**
     * Identifier of the user or the chat to which the upgraded gift was
     * assigned from blockchain; may be null if none or unknown
     */
    public MessageSender? host_id { get; construct set; }

    /**
     * Identifier of the user or the chat that owns the upgraded gift; may be
     * null if none or unknown
     */
    public MessageSender? owner_id { get; construct set; }

    /**
     * Address of the gift NFT owner in TON blockchain; may be empty if none.
     * Append the address to getOption("ton_blockchain_explorer_url") to get
     * a link with information about the address
     */
    public string owner_address { get; construct set; }

    /**
     * Name of the owner for the case when owner identifier and address
     * aren't known
     */
    public string owner_name { get; construct set; }

    /**
     * Address of the gift NFT in TON blockchain; may be empty if none.
     * Append the address to getOption("ton_blockchain_explorer_url") to get
     * a link with information about the address
     */
    public string gift_address { get; construct set; }

    /**
     * Model of the upgraded gift
     */
    public UpgradedGiftModel model { get; construct set; }

    /**
     * Symbol of the upgraded gift
     */
    public UpgradedGiftSymbol symbol { get; construct set; }

    /**
     * Backdrop of the upgraded gift
     */
    public UpgradedGiftBackdrop backdrop { get; construct set; }

    /**
     * Information about the originally sent gift; may be null if unknown
     */
    public UpgradedGiftOriginalDetails? original_details { get; construct set; }

    /**
     * Colors that can be set for user's name, background of empty chat
     * photo, replies to messages and link previews; may be null if none
     */
    public UpgradedGiftColors? colors { get; construct set; }

    /**
     * Resale parameters of the gift; may be null if resale isn't possible
     */
    public GiftResaleParameters? resale_parameters { get; construct set; }

    /**
     * ISO 4217 currency code of the currency in which value of the gift is
     * represented; may be empty if unavailable
     */
    public string value_currency { get; construct set; }

    /**
     * Estimated value of the gift; in the smallest units of the currency; 0
     * if unavailable
     */
    public int64 value_amount { get; construct set; }

    public UpgradedGift (
        int64 id_,
        int64 regular_gift_id,
        int64 publisher_chat_id,
        string title,
        string name,
        int32 number,
        int32 total_upgraded_count,
        int32 max_upgraded_count,
        bool is_premium,
        bool is_theme_available,
        int64 used_theme_chat_id,
        MessageSender? host_id,
        MessageSender? owner_id,
        string owner_address,
        string owner_name,
        string gift_address,
        UpgradedGiftModel model,
        UpgradedGiftSymbol symbol,
        UpgradedGiftBackdrop backdrop,
        UpgradedGiftOriginalDetails? original_details,
        UpgradedGiftColors? colors,
        GiftResaleParameters? resale_parameters,
        string value_currency,
        int64 value_amount
    ) {
        Object (
            id_: id_,
            regular_gift_id: regular_gift_id,
            publisher_chat_id: publisher_chat_id,
            title: title,
            name: name,
            number: number,
            total_upgraded_count: total_upgraded_count,
            max_upgraded_count: max_upgraded_count,
            is_premium: is_premium,
            is_theme_available: is_theme_available,
            used_theme_chat_id: used_theme_chat_id,
            host_id: host_id,
            owner_id: owner_id,
            owner_address: owner_address,
            owner_name: owner_name,
            gift_address: gift_address,
            model: model,
            symbol: symbol,
            backdrop: backdrop,
            original_details: original_details,
            colors: colors,
            resale_parameters: resale_parameters,
            value_currency: value_currency,
            value_amount: value_amount,
            tdlib_type: "upgradedGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
