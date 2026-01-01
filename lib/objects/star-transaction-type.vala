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
 * Describes type of transaction with Telegram Stars
 */
public abstract class TDLib.StarTransactionType : Error {}

/**
 * The transaction is a deposit of Telegram Stars from the Premium bot;
 * relevant for regular users only
 */
public class TDLib.StarTransactionTypePremiumBotDeposit : StarTransactionType {

    public StarTransactionTypePremiumBotDeposit () {
        Object (
            tdlib_type: "starTransactionTypePremiumBotDeposit",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a deposit of Telegram Stars from App Store;
 * relevant for regular users only
 */
public class TDLib.StarTransactionTypeAppStoreDeposit : StarTransactionType {

    public StarTransactionTypeAppStoreDeposit () {
        Object (
            tdlib_type: "starTransactionTypeAppStoreDeposit",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a deposit of Telegram Stars from Google Play;
 * relevant for regular users only
 */
public class TDLib.StarTransactionTypeGooglePlayDeposit : StarTransactionType {

    public StarTransactionTypeGooglePlayDeposit () {
        Object (
            tdlib_type: "starTransactionTypeGooglePlayDeposit",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a deposit of Telegram Stars from Fragment; relevant
 * for regular users and bots only
 */
public class TDLib.StarTransactionTypeFragmentDeposit : StarTransactionType {

    public StarTransactionTypeFragmentDeposit () {
        Object (
            tdlib_type: "starTransactionTypeFragmentDeposit",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a deposit of Telegram Stars by another user;
 * relevant for regular users only
 */
public class TDLib.StarTransactionTypeUserDeposit : StarTransactionType {

    /**
     * Identifier of the user that gifted Telegram Stars; 0 if the user was
     * anonymous
     */
    public int64 user_id { get; construct set; }

    /**
     * The sticker to be shown in the transaction information; may be null if
     * unknown
     */
    public Sticker? sticker { get; construct set; }

    public StarTransactionTypeUserDeposit (
        int64 user_id,
        Sticker? sticker
    ) {
        Object (
            user_id: user_id,
            sticker: sticker,
            tdlib_type: "starTransactionTypeUserDeposit",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a deposit of Telegram Stars from a giveaway;
 * relevant for regular users only
 */
public class TDLib.StarTransactionTypeGiveawayDeposit : StarTransactionType {

    /**
     * Identifier of a supergroup or a channel chat that created the giveaway
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message with the giveaway; may be 0 or an identifier
     * of a deleted message
     */
    public int64 giveaway_message_id { get; construct set; }

    public StarTransactionTypeGiveawayDeposit (
        int64 chat_id,
        int64 giveaway_message_id
    ) {
        Object (
            chat_id: chat_id,
            giveaway_message_id: giveaway_message_id,
            tdlib_type: "starTransactionTypeGiveawayDeposit",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a withdrawal of earned Telegram Stars to Fragment;
 * relevant for regular users, bots, supergroup and channel chats only
 */
public class TDLib.StarTransactionTypeFragmentWithdrawal : StarTransactionType {

    /**
     * State of the withdrawal; may be null for refunds from Fragment
     */
    public RevenueWithdrawalState? withdrawal_state { get; construct set; }

    public StarTransactionTypeFragmentWithdrawal (
        RevenueWithdrawalState? withdrawal_state
    ) {
        Object (
            withdrawal_state: withdrawal_state,
            tdlib_type: "starTransactionTypeFragmentWithdrawal",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a withdrawal of earned Telegram Stars to Telegram
 * Ad platform; relevant for bots and channel chats only
 */
public class TDLib.StarTransactionTypeTelegramAdsWithdrawal : StarTransactionType {

    public StarTransactionTypeTelegramAdsWithdrawal () {
        Object (
            tdlib_type: "starTransactionTypeTelegramAdsWithdrawal",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a payment for Telegram API usage; relevant for bots
 * only
 */
public class TDLib.StarTransactionTypeTelegramApiUsage : StarTransactionType {

    /**
     * The number of billed requests
     */
    public int32 request_count { get; construct set; }

    public StarTransactionTypeTelegramApiUsage (
        int32 request_count
    ) {
        Object (
            request_count: request_count,
            tdlib_type: "starTransactionTypeTelegramApiUsage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a purchase of paid media from a bot or a business
 * account by the current user; relevant for regular users only
 */
public class TDLib.StarTransactionTypeBotPaidMediaPurchase : StarTransactionType {

    /**
     * Identifier of the bot or the business account user that sent the paid
     * media
     */
    public int64 user_id { get; construct set; }

    /**
     * The bought media if the transaction wasn't refunded
     */
    public Gee.ArrayList<PaidMedia?> media { get; construct set; default = new Gee.ArrayList<PaidMedia?> (); }

    public StarTransactionTypeBotPaidMediaPurchase (
        int64 user_id,
        Gee.ArrayList<PaidMedia?> media
    ) {
        Object (
            user_id: user_id,
            media: media,
            tdlib_type: "starTransactionTypeBotPaidMediaPurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sale of paid media by the bot or a business
 * account managed by the bot; relevant for bots only
 */
public class TDLib.StarTransactionTypeBotPaidMediaSale : StarTransactionType {

    /**
     * Identifier of the user that bought the media
     */
    public int64 user_id { get; construct set; }

    /**
     * The bought media
     */
    public Gee.ArrayList<PaidMedia?> media { get; construct set; default = new Gee.ArrayList<PaidMedia?> (); }

    /**
     * Bot-provided payload
     */
    public string payload { get; construct set; }

    /**
     * Information about the affiliate which received commission from the
     * transaction; may be null if none
     */
    public AffiliateInfo? affiliate { get; construct set; }

    public StarTransactionTypeBotPaidMediaSale (
        int64 user_id,
        Gee.ArrayList<PaidMedia?> media,
        string payload,
        AffiliateInfo? affiliate
    ) {
        Object (
            user_id: user_id,
            media: media,
            payload: payload,
            affiliate: affiliate,
            tdlib_type: "starTransactionTypeBotPaidMediaSale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a purchase of paid media from a channel by the
 * current user; relevant for regular users only
 */
public class TDLib.StarTransactionTypeChannelPaidMediaPurchase : StarTransactionType {

    /**
     * Identifier of the channel chat that sent the paid media
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the corresponding message with paid media; may be 0 or
     * an identifier of a deleted message
     */
    public int64 message_id { get; construct set; }

    /**
     * The bought media if the transaction wasn't refunded
     */
    public Gee.ArrayList<PaidMedia?> media { get; construct set; default = new Gee.ArrayList<PaidMedia?> (); }

    public StarTransactionTypeChannelPaidMediaPurchase (
        int64 chat_id,
        int64 message_id,
        Gee.ArrayList<PaidMedia?> media
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            media: media,
            tdlib_type: "starTransactionTypeChannelPaidMediaPurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sale of paid media by the channel chat; relevant
 * for channel chats only
 */
public class TDLib.StarTransactionTypeChannelPaidMediaSale : StarTransactionType {

    /**
     * Identifier of the user that bought the media
     */
    public int64 user_id { get; construct set; }

    /**
     * Identifier of the corresponding message with paid media; may be 0 or
     * an identifier of a deleted message
     */
    public int64 message_id { get; construct set; }

    /**
     * The bought media
     */
    public Gee.ArrayList<PaidMedia?> media { get; construct set; default = new Gee.ArrayList<PaidMedia?> (); }

    public StarTransactionTypeChannelPaidMediaSale (
        int64 user_id,
        int64 message_id,
        Gee.ArrayList<PaidMedia?> media
    ) {
        Object (
            user_id: user_id,
            message_id: message_id,
            media: media,
            tdlib_type: "starTransactionTypeChannelPaidMediaSale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a purchase of a product from a bot or a business
 * account by the current user; relevant for regular users only
 */
public class TDLib.StarTransactionTypeBotInvoicePurchase : StarTransactionType {

    /**
     * Identifier of the bot or the business account user that created the
     * invoice
     */
    public int64 user_id { get; construct set; }

    /**
     * Information about the bought product
     */
    public ProductInfo product_info { get; construct set; }

    public StarTransactionTypeBotInvoicePurchase (
        int64 user_id,
        ProductInfo product_info
    ) {
        Object (
            user_id: user_id,
            product_info: product_info,
            tdlib_type: "starTransactionTypeBotInvoicePurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sale of a product by the bot; relevant for bots
 * only
 */
public class TDLib.StarTransactionTypeBotInvoiceSale : StarTransactionType {

    /**
     * Identifier of the user that bought the product
     */
    public int64 user_id { get; construct set; }

    /**
     * Information about the bought product
     */
    public ProductInfo product_info { get; construct set; }

    /**
     * Invoice payload
     */
    public Bytes invoice_payload { get; construct set; }

    /**
     * Information about the affiliate which received commission from the
     * transaction; may be null if none
     */
    public AffiliateInfo? affiliate { get; construct set; }

    public StarTransactionTypeBotInvoiceSale (
        int64 user_id,
        ProductInfo product_info,
        Bytes invoice_payload,
        AffiliateInfo? affiliate
    ) {
        Object (
            user_id: user_id,
            product_info: product_info,
            invoice_payload: invoice_payload,
            affiliate: affiliate,
            tdlib_type: "starTransactionTypeBotInvoiceSale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a purchase of a subscription from a bot or a
 * business account by the current user; relevant for regular users only
 */
public class TDLib.StarTransactionTypeBotSubscriptionPurchase : StarTransactionType {

    /**
     * Identifier of the bot or the business account user that created the
     * subscription link
     */
    public int64 user_id { get; construct set; }

    /**
     * The number of seconds between consecutive Telegram Star debitings
     */
    public int32 subscription_period { get; construct set; }

    /**
     * Information about the bought subscription
     */
    public ProductInfo product_info { get; construct set; }

    public StarTransactionTypeBotSubscriptionPurchase (
        int64 user_id,
        int32 subscription_period,
        ProductInfo product_info
    ) {
        Object (
            user_id: user_id,
            subscription_period: subscription_period,
            product_info: product_info,
            tdlib_type: "starTransactionTypeBotSubscriptionPurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sale of a subscription by the bot; relevant for
 * bots only
 */
public class TDLib.StarTransactionTypeBotSubscriptionSale : StarTransactionType {

    /**
     * Identifier of the user that bought the subscription
     */
    public int64 user_id { get; construct set; }

    /**
     * The number of seconds between consecutive Telegram Star debitings
     */
    public int32 subscription_period { get; construct set; }

    /**
     * Information about the bought subscription
     */
    public ProductInfo product_info { get; construct set; }

    /**
     * Invoice payload
     */
    public Bytes invoice_payload { get; construct set; }

    /**
     * Information about the affiliate which received commission from the
     * transaction; may be null if none
     */
    public AffiliateInfo? affiliate { get; construct set; }

    public StarTransactionTypeBotSubscriptionSale (
        int64 user_id,
        int32 subscription_period,
        ProductInfo product_info,
        Bytes invoice_payload,
        AffiliateInfo? affiliate
    ) {
        Object (
            user_id: user_id,
            subscription_period: subscription_period,
            product_info: product_info,
            invoice_payload: invoice_payload,
            affiliate: affiliate,
            tdlib_type: "starTransactionTypeBotSubscriptionSale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a purchase of a subscription to a channel chat by
 * the current user; relevant for regular users only
 */
public class TDLib.StarTransactionTypeChannelSubscriptionPurchase : StarTransactionType {

    /**
     * Identifier of the channel chat that created the subscription
     */
    public int64 chat_id { get; construct set; }

    /**
     * The number of seconds between consecutive Telegram Star debitings
     */
    public int32 subscription_period { get; construct set; }

    public StarTransactionTypeChannelSubscriptionPurchase (
        int64 chat_id,
        int32 subscription_period
    ) {
        Object (
            chat_id: chat_id,
            subscription_period: subscription_period,
            tdlib_type: "starTransactionTypeChannelSubscriptionPurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sale of a subscription by the channel chat;
 * relevant for channel chats only
 */
public class TDLib.StarTransactionTypeChannelSubscriptionSale : StarTransactionType {

    /**
     * Identifier of the user that bought the subscription
     */
    public int64 user_id { get; construct set; }

    /**
     * The number of seconds between consecutive Telegram Star debitings
     */
    public int32 subscription_period { get; construct set; }

    public StarTransactionTypeChannelSubscriptionSale (
        int64 user_id,
        int32 subscription_period
    ) {
        Object (
            user_id: user_id,
            subscription_period: subscription_period,
            tdlib_type: "starTransactionTypeChannelSubscriptionSale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a bid on a gift auction; relevant for regular users
 * only
 */
public class TDLib.StarTransactionTypeGiftAuctionBid : StarTransactionType {

    /**
     * Identifier of the user that will receive the gift
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    public StarTransactionTypeGiftAuctionBid (
        MessageSender owner_id,
        Gift gift
    ) {
        Object (
            owner_id: owner_id,
            gift: gift,
            tdlib_type: "starTransactionTypeGiftAuctionBid",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a purchase of a regular gift; relevant for regular
 * users and bots only
 */
public class TDLib.StarTransactionTypeGiftPurchase : StarTransactionType {

    /**
     * Identifier of the user or the channel that received the gift
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    public StarTransactionTypeGiftPurchase (
        MessageSender owner_id,
        Gift gift
    ) {
        Object (
            owner_id: owner_id,
            gift: gift,
            tdlib_type: "starTransactionTypeGiftPurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is an offer of gift purchase; relevant for regular
 * users only
 */
public class TDLib.StarTransactionTypeGiftPurchaseOffer : StarTransactionType {

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    public StarTransactionTypeGiftPurchaseOffer (
        UpgradedGift gift
    ) {
        Object (
            gift: gift,
            tdlib_type: "starTransactionTypeGiftPurchaseOffer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transfer of an upgraded gift; relevant for
 * regular users only
 */
public class TDLib.StarTransactionTypeGiftTransfer : StarTransactionType {

    /**
     * Identifier of the user or the channel that received the gift
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    public StarTransactionTypeGiftTransfer (
        MessageSender owner_id,
        UpgradedGift gift
    ) {
        Object (
            owner_id: owner_id,
            gift: gift,
            tdlib_type: "starTransactionTypeGiftTransfer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a drop of original details of an upgraded gift;
 * relevant for regular users only
 */
public class TDLib.StarTransactionTypeGiftOriginalDetailsDrop : StarTransactionType {

    /**
     * Identifier of the user or the channel that owns the gift
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    public StarTransactionTypeGiftOriginalDetailsDrop (
        MessageSender owner_id,
        UpgradedGift gift
    ) {
        Object (
            owner_id: owner_id,
            gift: gift,
            tdlib_type: "starTransactionTypeGiftOriginalDetailsDrop",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sale of a received gift; relevant for regular
 * users and channel chats only
 */
public class TDLib.StarTransactionTypeGiftSale : StarTransactionType {

    /**
     * Identifier of the user that sent the gift
     */
    public int64 user_id { get; construct set; }

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    public StarTransactionTypeGiftSale (
        int64 user_id,
        Gift gift
    ) {
        Object (
            user_id: user_id,
            gift: gift,
            tdlib_type: "starTransactionTypeGiftSale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is an upgrade of a gift; relevant for regular users
 * only
 */
public class TDLib.StarTransactionTypeGiftUpgrade : StarTransactionType {

    /**
     * Identifier of the user that initially sent the gift
     */
    public int64 user_id { get; construct set; }

    /**
     * The upgraded gift
     */
    public UpgradedGift gift { get; construct set; }

    public StarTransactionTypeGiftUpgrade (
        int64 user_id,
        UpgradedGift gift
    ) {
        Object (
            user_id: user_id,
            gift: gift,
            tdlib_type: "starTransactionTypeGiftUpgrade",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a purchase of an upgrade of a gift owned by another
 * user or channel; relevant for regular users only
 */
public class TDLib.StarTransactionTypeGiftUpgradePurchase : StarTransactionType {

    /**
     * Owner of the upgraded gift
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * The gift
     */
    public Gift gift { get; construct set; }

    public StarTransactionTypeGiftUpgradePurchase (
        MessageSender owner_id,
        Gift gift
    ) {
        Object (
            owner_id: owner_id,
            gift: gift,
            tdlib_type: "starTransactionTypeGiftUpgradePurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a purchase of an upgraded gift for some user or
 * channel; relevant for regular users only
 */
public class TDLib.StarTransactionTypeUpgradedGiftPurchase : StarTransactionType {

    /**
     * Identifier of the user that sold the gift
     */
    public int64 user_id { get; construct set; }

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    public StarTransactionTypeUpgradedGiftPurchase (
        int64 user_id,
        UpgradedGift gift
    ) {
        Object (
            user_id: user_id,
            gift: gift,
            tdlib_type: "starTransactionTypeUpgradedGiftPurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sale of an upgraded gift; relevant for regular
 * users only
 */
public class TDLib.StarTransactionTypeUpgradedGiftSale : StarTransactionType {

    /**
     * Identifier of the user that bought the gift
     */
    public int64 user_id { get; construct set; }

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    /**
     * The number of Telegram Stars received by the Telegram for each 1000
     * Telegram Stars received by the seller of the gift
     */
    public int32 commission_per_mille { get; construct set; }

    /**
     * The amount of Telegram Stars that were received by Telegram; can be
     * negative for refunds
     */
    public StarAmount commission_star_amount { get; construct set; }

    /**
     * True, if the gift was sold through a purchase offer
     */
    public bool via_offer { get; construct set; }

    public StarTransactionTypeUpgradedGiftSale (
        int64 user_id,
        UpgradedGift gift,
        int32 commission_per_mille,
        StarAmount commission_star_amount,
        bool via_offer
    ) {
        Object (
            user_id: user_id,
            gift: gift,
            commission_per_mille: commission_per_mille,
            commission_star_amount: commission_star_amount,
            via_offer: via_offer,
            tdlib_type: "starTransactionTypeUpgradedGiftSale",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sending of a paid reaction to a message in a
 * channel chat by the current user; relevant for regular users only
 */
public class TDLib.StarTransactionTypeChannelPaidReactionSend : StarTransactionType {

    /**
     * Identifier of the channel chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the reacted message; may be 0 or an identifier of a
     * deleted message
     */
    public int64 message_id { get; construct set; }

    public StarTransactionTypeChannelPaidReactionSend (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "starTransactionTypeChannelPaidReactionSend",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a receiving of a paid reaction to a message by the
 * channel chat; relevant for channel chats only
 */
public class TDLib.StarTransactionTypeChannelPaidReactionReceive : StarTransactionType {

    /**
     * Identifier of the user that added the paid reaction
     */
    public int64 user_id { get; construct set; }

    /**
     * Identifier of the reacted message; may be 0 or an identifier of a
     * deleted message
     */
    public int64 message_id { get; construct set; }

    public StarTransactionTypeChannelPaidReactionReceive (
        int64 user_id,
        int64 message_id
    ) {
        Object (
            user_id: user_id,
            message_id: message_id,
            tdlib_type: "starTransactionTypeChannelPaidReactionReceive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a receiving of a commission from an affiliate
 * program; relevant for regular users, bots and channel chats only
 */
public class TDLib.StarTransactionTypeAffiliateProgramCommission : StarTransactionType {

    /**
     * Identifier of the chat that created the affiliate program
     */
    public int64 chat_id { get; construct set; }

    /**
     * The number of Telegram Stars received by the affiliate for each 1000
     * Telegram Stars received by the program owner
     */
    public int32 commission_per_mille { get; construct set; }

    public StarTransactionTypeAffiliateProgramCommission (
        int64 chat_id,
        int32 commission_per_mille
    ) {
        Object (
            chat_id: chat_id,
            commission_per_mille: commission_per_mille,
            tdlib_type: "starTransactionTypeAffiliateProgramCommission",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sending of a paid message; relevant for regular
 * users only
 */
public class TDLib.StarTransactionTypePaidMessageSend : StarTransactionType {

    /**
     * Identifier of the chat that received the payment
     */
    public int64 chat_id { get; construct set; }

    /**
     * Number of sent paid messages
     */
    public int32 message_count { get; construct set; }

    public StarTransactionTypePaidMessageSend (
        int64 chat_id,
        int32 message_count
    ) {
        Object (
            chat_id: chat_id,
            message_count: message_count,
            tdlib_type: "starTransactionTypePaidMessageSend",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a receiving of a paid message; relevant for regular
 * users, supergroup and channel chats only
 */
public class TDLib.StarTransactionTypePaidMessageReceive : StarTransactionType {

    /**
     * Identifier of the sender of the message
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * Number of received paid messages
     */
    public int32 message_count { get; construct set; }

    /**
     * The number of Telegram Stars received by the Telegram for each 1000
     * Telegram Stars paid for message sending
     */
    public int32 commission_per_mille { get; construct set; }

    /**
     * The amount of Telegram Stars that were received by Telegram; can be
     * negative for refunds
     */
    public StarAmount commission_star_amount { get; construct set; }

    public StarTransactionTypePaidMessageReceive (
        MessageSender sender_id,
        int32 message_count,
        int32 commission_per_mille,
        StarAmount commission_star_amount
    ) {
        Object (
            sender_id: sender_id,
            message_count: message_count,
            commission_per_mille: commission_per_mille,
            commission_star_amount: commission_star_amount,
            tdlib_type: "starTransactionTypePaidMessageReceive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sending of a paid group call message; relevant
 * for regular users only
 */
public class TDLib.StarTransactionTypePaidGroupCallMessageSend : StarTransactionType {

    /**
     * Identifier of the chat that received the payment
     */
    public int64 chat_id { get; construct set; }

    public StarTransactionTypePaidGroupCallMessageSend (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "starTransactionTypePaidGroupCallMessageSend",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a receiving of a paid group call message; relevant
 * for regular users and channel chats only
 */
public class TDLib.StarTransactionTypePaidGroupCallMessageReceive : StarTransactionType {

    /**
     * Identifier of the sender of the message
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * The number of Telegram Stars received by the Telegram for each 1000
     * Telegram Stars paid for message sending
     */
    public int32 commission_per_mille { get; construct set; }

    /**
     * The amount of Telegram Stars that were received by Telegram; can be
     * negative for refunds
     */
    public StarAmount commission_star_amount { get; construct set; }

    public StarTransactionTypePaidGroupCallMessageReceive (
        MessageSender sender_id,
        int32 commission_per_mille,
        StarAmount commission_star_amount
    ) {
        Object (
            sender_id: sender_id,
            commission_per_mille: commission_per_mille,
            commission_star_amount: commission_star_amount,
            tdlib_type: "starTransactionTypePaidGroupCallMessageReceive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a sending of a paid group reaction; relevant for
 * regular users only
 */
public class TDLib.StarTransactionTypePaidGroupCallReactionSend : StarTransactionType {

    /**
     * Identifier of the chat that received the payment
     */
    public int64 chat_id { get; construct set; }

    public StarTransactionTypePaidGroupCallReactionSend (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "starTransactionTypePaidGroupCallReactionSend",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a receiving of a paid group call reaction; relevant
 * for regular users and channel chats only
 */
public class TDLib.StarTransactionTypePaidGroupCallReactionReceive : StarTransactionType {

    /**
     * Identifier of the sender of the reaction
     */
    public MessageSender sender_id { get; construct set; }

    /**
     * The number of Telegram Stars received by the Telegram for each 1000
     * Telegram Stars paid for reaction sending
     */
    public int32 commission_per_mille { get; construct set; }

    /**
     * The amount of Telegram Stars that were received by Telegram; can be
     * negative for refunds
     */
    public StarAmount commission_star_amount { get; construct set; }

    public StarTransactionTypePaidGroupCallReactionReceive (
        MessageSender sender_id,
        int32 commission_per_mille,
        StarAmount commission_star_amount
    ) {
        Object (
            sender_id: sender_id,
            commission_per_mille: commission_per_mille,
            commission_star_amount: commission_star_amount,
            tdlib_type: "starTransactionTypePaidGroupCallReactionReceive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a payment for a suggested post; relevant for
 * regular users only
 */
public class TDLib.StarTransactionTypeSuggestedPostPaymentSend : StarTransactionType {

    /**
     * Identifier of the channel chat that posted the post
     */
    public int64 chat_id { get; construct set; }

    public StarTransactionTypeSuggestedPostPaymentSend (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "starTransactionTypeSuggestedPostPaymentSend",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a receiving of a payment for a suggested post by
 * the channel chat; relevant for channel chats only
 */
public class TDLib.StarTransactionTypeSuggestedPostPaymentReceive : StarTransactionType {

    /**
     * Identifier of the user that paid for the suggested post
     */
    public int64 user_id { get; construct set; }

    public StarTransactionTypeSuggestedPostPaymentReceive (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "starTransactionTypeSuggestedPostPaymentReceive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a purchase of Telegram Premium subscription;
 * relevant for regular users and bots only
 */
public class TDLib.StarTransactionTypePremiumPurchase : StarTransactionType {

    /**
     * Identifier of the user that received the Telegram Premium subscription
     */
    public int64 user_id { get; construct set; }

    /**
     * Number of months the Telegram Premium subscription will be active
     */
    public int32 month_count { get; construct set; }

    /**
     * A sticker to be shown in the transaction information; may be null if
     * unknown
     */
    public Sticker? sticker { get; construct set; }

    public StarTransactionTypePremiumPurchase (
        int64 user_id,
        int32 month_count,
        Sticker? sticker
    ) {
        Object (
            user_id: user_id,
            month_count: month_count,
            sticker: sticker,
            tdlib_type: "starTransactionTypePremiumPurchase",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transfer of Telegram Stars to a business bot;
 * relevant for regular users only
 */
public class TDLib.StarTransactionTypeBusinessBotTransferSend : StarTransactionType {

    /**
     * Identifier of the bot that received Telegram Stars
     */
    public int64 user_id { get; construct set; }

    public StarTransactionTypeBusinessBotTransferSend (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "starTransactionTypeBusinessBotTransferSend",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transfer of Telegram Stars from a business
 * account; relevant for bots only
 */
public class TDLib.StarTransactionTypeBusinessBotTransferReceive : StarTransactionType {

    /**
     * Identifier of the user that sent Telegram Stars
     */
    public int64 user_id { get; construct set; }

    public StarTransactionTypeBusinessBotTransferReceive (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "starTransactionTypeBusinessBotTransferReceive",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a payment for search of posts in public Telegram
 * channels; relevant for regular users only
 */
public class TDLib.StarTransactionTypePublicPostSearch : StarTransactionType {

    public StarTransactionTypePublicPostSearch () {
        Object (
            tdlib_type: "starTransactionTypePublicPostSearch",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The transaction is a transaction of an unsupported type
 */
public class TDLib.StarTransactionTypeUnsupported : StarTransactionType {

    public StarTransactionTypeUnsupported () {
        Object (
            tdlib_type: "starTransactionTypeUnsupported",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
