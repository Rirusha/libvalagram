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
 * Describes an internal [[https://t.me]] or tg: link, which must be
 * processed by the application in a special way
 */
public abstract class TDLib.InternalLinkType : Error {}

/**
 * The link is a link to the Devices section of the application. Use
 * {@link Client.get_active_sessions} to get the list of active sessions
 * and show them to the user
 */
public class TDLib.InternalLinkTypeActiveSessions : InternalLinkType {

    public InternalLinkTypeActiveSessions () {
        Object (
            tdlib_type: "internalLinkTypeActiveSessions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an attachment menu bot to be opened in the
 * specified or a chosen chat. Process given target_chat to open the
 * chat.
 * Then, call {@link Client.search_public_chat} with the given bot
 * username, check that the user is a bot and can be added to attachment
 * menu. Then, use {@link Client.get_attachment_menu_bot} to receive
 * information about the bot.
 * If the bot isn't added to attachment menu, then show a disclaimer
 * about Mini Apps being third-party applications, ask the user to accept
 * their Terms of service and confirm adding the bot to side and
 * attachment menu.
 * If the user accept the terms and confirms adding, then use
 * {@link Client.toggle_bot_is_added_to_attachment_menu} to add the bot.
 * If the attachment menu bot can't be used in the opened chat, show an
 * error to the user. If the bot is added to attachment menu and can be
 * used in the chat, then use {@link Client.open_web_app} with the given
 * URL
 */
public class TDLib.InternalLinkTypeAttachmentMenuBot : InternalLinkType {

    /**
     * Target chat to be opened
     */
    public TargetChat target_chat { get; construct set; }

    /**
     * Username of the bot
     */
    public string bot_username { get; construct set; }

    /**
     * URL to be passed to {@link Client.open_web_app}
     */
    public string url { get; construct set; }

    public InternalLinkTypeAttachmentMenuBot (
        TargetChat target_chat,
        string bot_username,
        string url
    ) {
        Object (
            target_chat: target_chat,
            bot_username: bot_username,
            url: url,
            tdlib_type: "internalLinkTypeAttachmentMenuBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link contains an authentication code. Call
 * {@link Client.check_authentication_code} with the code if the current
 * authorization state is authorizationStateWaitCode
 */
public class TDLib.InternalLinkTypeAuthenticationCode : InternalLinkType {

    /**
     * The authentication code
     */
    public new string code { get; construct set; }

    public InternalLinkTypeAuthenticationCode (
        string code
    ) {
        Object (
            code: code,
            tdlib_type: "internalLinkTypeAuthenticationCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a background. Call
 * {@link Client.search_background} with the given background name to
 * process the link.
 * If background is found and the user wants to apply it, then call
 * {@link Client.set_default_background}
 */
public class TDLib.InternalLinkTypeBackground : InternalLinkType {

    /**
     * Name of the background
     */
    public string background_name { get; construct set; }

    public InternalLinkTypeBackground (
        string background_name
    ) {
        Object (
            background_name: background_name,
            tdlib_type: "internalLinkTypeBackground",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a Telegram bot, which is expected to be added to
 * a channel chat as an administrator. Call
 * {@link Client.search_public_chat} with the given bot username and
 * check that the user is a bot,
 * ask the current user to select a channel chat to add the bot to as an
 * administrator. Then, call {@link Client.get_chat_member} to receive
 * the current bot rights in the chat and if the bot already is an
 * administrator,
 * check that the current user can edit its administrator rights and
 * combine received rights with the requested administrator rights. Then,
 * show confirmation box to the user, and call
 * {@link Client.set_chat_member_status} with the chosen chat and
 * confirmed rights
 */
public class TDLib.InternalLinkTypeBotAddToChannel : InternalLinkType {

    /**
     * Username of the bot
     */
    public string bot_username { get; construct set; }

    /**
     * Expected administrator rights for the bot
     */
    public ChatAdministratorRights administrator_rights { get; construct set; }

    public InternalLinkTypeBotAddToChannel (
        string bot_username,
        ChatAdministratorRights administrator_rights
    ) {
        Object (
            bot_username: bot_username,
            administrator_rights: administrator_rights,
            tdlib_type: "internalLinkTypeBotAddToChannel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a chat with a Telegram bot. Call
 * {@link Client.search_public_chat} with the given bot username, check
 * that the user is a bot, show START button in the chat with the bot,
 * and then call {@link Client.send_bot_start_message} with the given
 * start parameter after the button is pressed
 */
public class TDLib.InternalLinkTypeBotStart : InternalLinkType {

    /**
     * Username of the bot
     */
    public string bot_username { get; construct set; }

    /**
     * The parameter to be passed to {@link Client.send_bot_start_message}
     */
    public string start_parameter { get; construct set; }

    /**
     * True, if {@link Client.send_bot_start_message} must be called
     * automatically without showing the START button
     */
    public bool autostart { get; construct set; }

    public InternalLinkTypeBotStart (
        string bot_username,
        string start_parameter,
        bool autostart
    ) {
        Object (
            bot_username: bot_username,
            start_parameter: start_parameter,
            autostart: autostart,
            tdlib_type: "internalLinkTypeBotStart",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a Telegram bot, which is expected to be added to
 * a group chat. Call {@link Client.search_public_chat} with the given
 * bot username, check that the user is a bot and can be added to groups,
 * ask the current user to select a basic group or a supergroup chat to
 * add the bot to, taking into account that bots can be added to a public
 * supergroup only by administrators of the supergroup.
 * If administrator rights are provided by the link, call
 * {@link Client.get_chat_member} to receive the current bot rights in
 * the chat and if the bot already is an administrator,
 * check that the current user can edit its administrator rights, combine
 * received rights with the requested administrator rights, show
 * confirmation box to the user,
 * and call {@link Client.set_chat_member_status} with the chosen chat
 * and confirmed administrator rights. Before call to
 * {@link Client.set_chat_member_status} it may be required to upgrade
 * the chosen basic group chat to a supergroup chat.
 * Then, if start_parameter isn't empty, call
 * {@link Client.send_bot_start_message} with the given start parameter
 * and the chosen chat; otherwise, just send /start message with bot's
 * username added to the chat
 */
public class TDLib.InternalLinkTypeBotStartInGroup : InternalLinkType {

    /**
     * Username of the bot
     */
    public string bot_username { get; construct set; }

    /**
     * The parameter to be passed to {@link Client.send_bot_start_message}
     */
    public string start_parameter { get; construct set; }

    /**
     * Expected administrator rights for the bot; may be null
     */
    public ChatAdministratorRights? administrator_rights { get; construct set; }

    public InternalLinkTypeBotStartInGroup (
        string bot_username,
        string start_parameter,
        ChatAdministratorRights? administrator_rights
    ) {
        Object (
            bot_username: bot_username,
            start_parameter: start_parameter,
            administrator_rights: administrator_rights,
            tdlib_type: "internalLinkTypeBotStartInGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a business chat. Use
 * {@link Client.get_business_chat_link_info} with the provided link name
 * to get information about the link,
 * then open received private chat and replace chat draft with the
 * provided text
 */
public class TDLib.InternalLinkTypeBusinessChat : InternalLinkType {

    /**
     * Name of the link
     */
    public string link_name { get; construct set; }

    public InternalLinkTypeBusinessChat (
        string link_name
    ) {
        Object (
            link_name: link_name,
            tdlib_type: "internalLinkTypeBusinessChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the Telegram Star purchase section of the
 * application
 */
public class TDLib.InternalLinkTypeBuyStars : InternalLinkType {

    /**
     * The number of Telegram Stars that must be owned by the user
     */
    public int64 star_count { get; construct set; }

    /**
     * Purpose of Telegram Star purchase. Arbitrary string specified by the
     * server, for example, "subs" if the Telegram Stars are required to
     * extend channel subscriptions
     */
    public string purpose { get; construct set; }

    public InternalLinkTypeBuyStars (
        int64 star_count,
        string purpose
    ) {
        Object (
            star_count: star_count,
            purpose: purpose,
            tdlib_type: "internalLinkTypeBuyStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the change phone number section of the
 * application
 */
public class TDLib.InternalLinkTypeChangePhoneNumber : InternalLinkType {

    public InternalLinkTypeChangePhoneNumber () {
        Object (
            tdlib_type: "internalLinkTypeChangePhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is an affiliate program link. Call
 * {@link Client.search_chat_affiliate_program} with the given username
 * and referrer to process the link
 */
public class TDLib.InternalLinkTypeChatAffiliateProgram : InternalLinkType {

    /**
     * Username to be passed to {@link Client.search_chat_affiliate_program}
     */
    public string username { get; construct set; }

    /**
     * Referrer to be passed to {@link Client.search_chat_affiliate_program}
     */
    public string referrer { get; construct set; }

    public InternalLinkTypeChatAffiliateProgram (
        string username,
        string referrer
    ) {
        Object (
            username: username,
            referrer: referrer,
            tdlib_type: "internalLinkTypeChatAffiliateProgram",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to boost a Telegram chat. Call
 * {@link Client.get_chat_boost_link_info} with the given URL to process
 * the link.
 * If the chat is found, then call {@link Client.get_chat_boost_status}
 * and {@link Client.get_available_chat_boost_slots} to get the current
 * boost status and check whether the chat can be boosted.
 * If the user wants to boost the chat and the chat can be boosted, then
 * call {@link Client.boost_chat}
 */
public class TDLib.InternalLinkTypeChatBoost : InternalLinkType {

    /**
     * URL to be passed to {@link Client.get_chat_boost_link_info}
     */
    public string url { get; construct set; }

    public InternalLinkTypeChatBoost (
        string url
    ) {
        Object (
            url: url,
            tdlib_type: "internalLinkTypeChatBoost",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is an invite link to a chat folder. Call
 * {@link Client.check_chat_folder_invite_link} with the given invite
 * link to process the link.
 * If the link is valid and the user wants to join the chat folder, then
 * call {@link Client.add_chat_folder_by_invite_link}
 */
public class TDLib.InternalLinkTypeChatFolderInvite : InternalLinkType {

    /**
     * Internal representation of the invite link
     */
    public string invite_link { get; construct set; }

    public InternalLinkTypeChatFolderInvite (
        string invite_link
    ) {
        Object (
            invite_link: invite_link,
            tdlib_type: "internalLinkTypeChatFolderInvite",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the folder section of the application settings
 */
public class TDLib.InternalLinkTypeChatFolderSettings : InternalLinkType {

    public InternalLinkTypeChatFolderSettings () {
        Object (
            tdlib_type: "internalLinkTypeChatFolderSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a chat invite link. Call
 * {@link Client.check_chat_invite_link} with the given invite link to
 * process the link.
 * If the link is valid and the user wants to join the chat, then call
 * {@link Client.join_chat_by_invite_link}
 */
public class TDLib.InternalLinkTypeChatInvite : InternalLinkType {

    /**
     * Internal representation of the invite link
     */
    public string invite_link { get; construct set; }

    public InternalLinkTypeChatInvite (
        string invite_link
    ) {
        Object (
            invite_link: invite_link,
            tdlib_type: "internalLinkTypeChatInvite",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the default message auto-delete timer settings
 * section of the application settings
 */
public class TDLib.InternalLinkTypeDefaultMessageAutoDeleteTimerSettings : InternalLinkType {

    public InternalLinkTypeDefaultMessageAutoDeleteTimerSettings () {
        Object (
            tdlib_type: "internalLinkTypeDefaultMessageAutoDeleteTimerSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the edit profile section of the application
 * settings
 */
public class TDLib.InternalLinkTypeEditProfileSettings : InternalLinkType {

    public InternalLinkTypeEditProfileSettings () {
        Object (
            tdlib_type: "internalLinkTypeEditProfileSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a game. Call {@link Client.search_public_chat}
 * with the given bot username, check that the user is a bot,
 * ask the current user to select a chat to send the game, and then call
 * {@link Client.send_message} with inputMessageGame
 */
public class TDLib.InternalLinkTypeGame : InternalLinkType {

    /**
     * Username of the bot that owns the game
     */
    public string bot_username { get; construct set; }

    /**
     * Short name of the game
     */
    public string game_short_name { get; construct set; }

    public InternalLinkTypeGame (
        string bot_username,
        string game_short_name
    ) {
        Object (
            bot_username: bot_username,
            game_short_name: game_short_name,
            tdlib_type: "internalLinkTypeGame",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a group call that isn't bound to a chat. Use
 * {@link Client.get_group_call_participants} to get the list of group
 * call participants and show them on the join group call screen.
 * Call {@link Client.join_group_call} with the given invite_link to join
 * the call
 */
public class TDLib.InternalLinkTypeGroupCall : InternalLinkType {

    /**
     * Internal representation of the invite link
     */
    public string invite_link { get; construct set; }

    public InternalLinkTypeGroupCall (
        string invite_link
    ) {
        Object (
            invite_link: invite_link,
            tdlib_type: "internalLinkTypeGroupCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link must be opened in an Instant View. Call
 * {@link Client.get_web_page_instant_view} with the given URL to process
 * the link.
 * If Instant View is found, then show it, otherwise, open the fallback
 * URL in an external browser
 */
public class TDLib.InternalLinkTypeInstantView : InternalLinkType {

    /**
     * URL to be passed to {@link Client.get_web_page_instant_view}
     */
    public string url { get; construct set; }

    /**
     * An URL to open if {@link Client.get_web_page_instant_view} fails
     */
    public string fallback_url { get; construct set; }

    public InternalLinkTypeInstantView (
        string url,
        string fallback_url
    ) {
        Object (
            url: url,
            fallback_url: fallback_url,
            tdlib_type: "internalLinkTypeInstantView",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an invoice. Call {@link Client.get_payment_form}
 * with the given invoice name to process the link
 */
public class TDLib.InternalLinkTypeInvoice : InternalLinkType {

    /**
     * Name of the invoice
     */
    public string invoice_name { get; construct set; }

    public InternalLinkTypeInvoice (
        string invoice_name
    ) {
        Object (
            invoice_name: invoice_name,
            tdlib_type: "internalLinkTypeInvoice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a language pack. Call
 * {@link Client.get_language_pack_info} with the given language pack
 * identifier to process the link.
 * If the language pack is found and the user wants to apply it, then
 * call {@link Client.set_option} for the option "language_pack_id"
 */
public class TDLib.InternalLinkTypeLanguagePack : InternalLinkType {

    /**
     * Language pack identifier
     */
    public string language_pack_id { get; construct set; }

    public InternalLinkTypeLanguagePack (
        string language_pack_id
    ) {
        Object (
            language_pack_id: language_pack_id,
            tdlib_type: "internalLinkTypeLanguagePack",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the language section of the application settings
 */
public class TDLib.InternalLinkTypeLanguageSettings : InternalLinkType {

    public InternalLinkTypeLanguageSettings () {
        Object (
            tdlib_type: "internalLinkTypeLanguageSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the main Web App of a bot. Call
 * {@link Client.search_public_chat} with the given bot username, check
 * that the user is a bot and has the main Web App.
 * If the bot can be added to attachment menu, then use
 * {@link Client.get_attachment_menu_bot} to receive information about
 * the bot, then if the bot isn't added to side menu,
 * show a disclaimer about Mini Apps being third-party applications, ask
 * the user to accept their Terms of service and confirm adding the bot
 * to side and attachment menu,
 * then if the user accepts the terms and confirms adding, use
 * {@link Client.toggle_bot_is_added_to_attachment_menu} to add the bot.
 * Then, use {@link Client.get_main_web_app} with the given start
 * parameter and mode and open the returned URL as a Web App
 */
public class TDLib.InternalLinkTypeMainWebApp : InternalLinkType {

    /**
     * Username of the bot
     */
    public string bot_username { get; construct set; }

    /**
     * Start parameter to be passed to {@link Client.get_main_web_app}
     */
    public string start_parameter { get; construct set; }

    /**
     * The mode to be passed to {@link Client.get_main_web_app}
     */
    public WebAppOpenMode mode { get; construct set; }

    public InternalLinkTypeMainWebApp (
        string bot_username,
        string start_parameter,
        WebAppOpenMode mode
    ) {
        Object (
            bot_username: bot_username,
            start_parameter: start_parameter,
            mode: mode,
            tdlib_type: "internalLinkTypeMainWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a Telegram message or a forum topic. Call
 * {@link Client.get_message_link_info} with the given URL to process the
 * link,
 * and then open received forum topic or chat and show the message there
 */
public class TDLib.InternalLinkTypeMessage : InternalLinkType {

    /**
     * URL to be passed to {@link Client.get_message_link_info}
     */
    public string url { get; construct set; }

    public InternalLinkTypeMessage (
        string url
    ) {
        Object (
            url: url,
            tdlib_type: "internalLinkTypeMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link contains a message draft text. A share screen needs to be
 * shown to the user, then the chosen chat must be opened and the text is
 * added to the input field
 */
public class TDLib.InternalLinkTypeMessageDraft : InternalLinkType {

    /**
     * Message draft text
     */
    public FormattedText text { get; construct set; }

    /**
     * True, if the first line of the text contains a link. If true, the
     * input field needs to be focused and the text after the link must be
     * selected
     */
    public bool contains_link { get; construct set; }

    public InternalLinkTypeMessageDraft (
        FormattedText text,
        bool contains_link
    ) {
        Object (
            text: text,
            contains_link: contains_link,
            tdlib_type: "internalLinkTypeMessageDraft",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the screen with information about Telegram Star
 * balance and transactions of the current user
 */
public class TDLib.InternalLinkTypeMyStars : InternalLinkType {

    public InternalLinkTypeMyStars () {
        Object (
            tdlib_type: "internalLinkTypeMyStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link contains a request of Telegram passport data. Call
 * {@link Client.get_passport_authorization_form} with the given
 * parameters to process the link if the link was received from outside
 * of the application; otherwise, ignore it
 */
public class TDLib.InternalLinkTypePassportDataRequest : InternalLinkType {

    /**
     * User identifier of the service's bot; the corresponding user may be
     * unknown yet
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Telegram Passport element types requested by the service
     */
    public string scope { get; construct set; }

    /**
     * Service's public key
     */
    public string public_key { get; construct set; }

    /**
     * Unique request identifier provided by the service
     */
    public string nonce { get; construct set; }

    /**
     * An HTTP URL to open once the request is finished, canceled, or failed
     * with the parameters tg_passport=success, tg_passport=cancel, or
     * tg_passport=error&error=... respectively.
     * If empty, then onActivityResult method must be used to return response
     * on Android, or the link [[tgbot(bot_user_id)://passport/success]] or
     * [[tgbot(bot_user_id)://passport/cancel]] must be opened otherwise
     */
    public string callback_url { get; construct set; }

    public InternalLinkTypePassportDataRequest (
        int64 bot_user_id,
        string scope,
        string public_key,
        string nonce,
        string callback_url
    ) {
        Object (
            bot_user_id: bot_user_id,
            scope: scope,
            public_key: public_key,
            nonce: nonce,
            callback_url: callback_url,
            tdlib_type: "internalLinkTypePassportDataRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link can be used to confirm ownership of a phone number to prevent
 * account deletion. Call {@link Client.send_phone_number_code} with the
 * given phone number and with phoneNumberCodeTypeConfirmOwnership with
 * the given hash to process the link.
 * If succeeded, call {@link Client.check_phone_number_code} to check
 * entered by the user code, or {@link Client.resend_phone_number_code}
 * to resend it
 */
public class TDLib.InternalLinkTypePhoneNumberConfirmation : InternalLinkType {

    /**
     * Hash value from the link
     */
    public string hash { get; construct set; }

    /**
     * Phone number value from the link
     */
    public string phone_number { get; construct set; }

    public InternalLinkTypePhoneNumberConfirmation (
        string hash,
        string phone_number
    ) {
        Object (
            hash: hash,
            phone_number: phone_number,
            tdlib_type: "internalLinkTypePhoneNumberConfirmation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the Premium features screen of the application
 * from which the user can subscribe to Telegram Premium. Call
 * {@link Client.get_premium_features} with the given referrer to process
 * the link
 */
public class TDLib.InternalLinkTypePremiumFeatures : InternalLinkType {

    /**
     * Referrer specified in the link
     */
    public string referrer { get; construct set; }

    public InternalLinkTypePremiumFeatures (
        string referrer
    ) {
        Object (
            referrer: referrer,
            tdlib_type: "internalLinkTypePremiumFeatures",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the screen for gifting Telegram Premium
 * subscriptions to friends via inputInvoiceTelegram with
 * telegramPaymentPurposePremiumGift payments or in-store purchases
 */
public class TDLib.InternalLinkTypePremiumGift : InternalLinkType {

    /**
     * Referrer specified in the link
     */
    public string referrer { get; construct set; }

    public InternalLinkTypePremiumGift (
        string referrer
    ) {
        Object (
            referrer: referrer,
            tdlib_type: "internalLinkTypePremiumGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link with a Telegram Premium gift code. Call
 * {@link Client.check_premium_gift_code} with the given code to process
 * the link.
 * If the code is valid and the user wants to apply it, then call
 * {@link Client.apply_premium_gift_code}
 */
public class TDLib.InternalLinkTypePremiumGiftCode : InternalLinkType {

    /**
     * The Telegram Premium gift code
     */
    public new string code { get; construct set; }

    public InternalLinkTypePremiumGiftCode (
        string code
    ) {
        Object (
            code: code,
            tdlib_type: "internalLinkTypePremiumGiftCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the privacy and security section of the
 * application settings
 */
public class TDLib.InternalLinkTypePrivacyAndSecuritySettings : InternalLinkType {

    public InternalLinkTypePrivacyAndSecuritySettings () {
        Object (
            tdlib_type: "internalLinkTypePrivacyAndSecuritySettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a proxy. Call {@link Client.add_proxy} with the
 * given parameters to process the link and add the proxy
 */
public class TDLib.InternalLinkTypeProxy : InternalLinkType {

    /**
     * Proxy server domain or IP address
     */
    public string server { get; construct set; }

    /**
     * Proxy server port
     */
    public int32 port { get; construct set; }

    /**
     * Type of the proxy
     */
    public ProxyType type_ { get; construct set; }

    public InternalLinkTypeProxy (
        string server,
        int32 port,
        ProxyType type_
    ) {
        Object (
            server: server,
            port: port,
            type_: type_,
            tdlib_type: "internalLinkTypeProxy",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a chat by its username. Call
 * {@link Client.search_public_chat} with the given chat username to
 * process the link.
 * If the chat is found, open its profile information screen or the chat
 * itself.
 * If draft text isn't empty and the chat is a private chat with a
 * regular user, then put the draft text in the input field
 */
public class TDLib.InternalLinkTypePublicChat : InternalLinkType {

    /**
     * Username of the chat
     */
    public string chat_username { get; construct set; }

    /**
     * Draft text for message to send in the chat
     */
    public string draft_text { get; construct set; }

    /**
     * True, if chat profile information screen must be opened; otherwise,
     * the chat itself must be opened
     */
    public bool open_profile { get; construct set; }

    public InternalLinkTypePublicChat (
        string chat_username,
        string draft_text,
        bool open_profile
    ) {
        Object (
            chat_username: chat_username,
            draft_text: draft_text,
            open_profile: open_profile,
            tdlib_type: "internalLinkTypePublicChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link can be used to login the current user on another device, but
 * it must be scanned from QR-code using in-app camera. An alert similar
 * to
 * "This code can be used to allow someone to log in to your Telegram
 * account. To confirm Telegram login, please go to Settings > Devices >
 * Scan QR and scan the code" needs to be shown
 */
public class TDLib.InternalLinkTypeQrCodeAuthentication : InternalLinkType {

    public InternalLinkTypeQrCodeAuthentication () {
        Object (
            tdlib_type: "internalLinkTypeQrCodeAuthentication",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link forces restore of App Store purchases when opened. For
 * official iOS application only
 */
public class TDLib.InternalLinkTypeRestorePurchases : InternalLinkType {

    public InternalLinkTypeRestorePurchases () {
        Object (
            tdlib_type: "internalLinkTypeRestorePurchases",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to application settings
 */
public class TDLib.InternalLinkTypeSettings : InternalLinkType {

    public InternalLinkTypeSettings () {
        Object (
            tdlib_type: "internalLinkTypeSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a sticker set. Call
 * {@link Client.search_sticker_set} with the given sticker set name to
 * process the link and show the sticker set.
 * If the sticker set is found and the user wants to add it, then call
 * {@link Client.change_sticker_set}
 */
public class TDLib.InternalLinkTypeStickerSet : InternalLinkType {

    /**
     * Name of the sticker set
     */
    public string sticker_set_name { get; construct set; }

    /**
     * True, if the sticker set is expected to contain custom emoji
     */
    public bool expect_custom_emoji { get; construct set; }

    public InternalLinkTypeStickerSet (
        string sticker_set_name,
        bool expect_custom_emoji
    ) {
        Object (
            sticker_set_name: sticker_set_name,
            expect_custom_emoji: expect_custom_emoji,
            tdlib_type: "internalLinkTypeStickerSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a story. Call {@link Client.search_public_chat}
 * with the given poster username, then call {@link Client.get_story}
 * with the received chat identifier and the given story identifier, then
 * show the story if received
 */
public class TDLib.InternalLinkTypeStory : InternalLinkType {

    /**
     * Username of the poster of the story
     */
    public string story_poster_username { get; construct set; }

    /**
     * Story identifier
     */
    public int32 story_id { get; construct set; }

    public InternalLinkTypeStory (
        string story_poster_username,
        int32 story_id
    ) {
        Object (
            story_poster_username: story_poster_username,
            story_id: story_id,
            tdlib_type: "internalLinkTypeStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a cloud theme. TDLib has no theme support yet
 */
public class TDLib.InternalLinkTypeTheme : InternalLinkType {

    /**
     * Name of the theme
     */
    public string theme_name { get; construct set; }

    public InternalLinkTypeTheme (
        string theme_name
    ) {
        Object (
            theme_name: theme_name,
            tdlib_type: "internalLinkTypeTheme",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to the theme section of the application settings
 */
public class TDLib.InternalLinkTypeThemeSettings : InternalLinkType {

    public InternalLinkTypeThemeSettings () {
        Object (
            tdlib_type: "internalLinkTypeThemeSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is an unknown tg: link. Call
 * {@link Client.get_deep_link_info} to process the link
 */
public class TDLib.InternalLinkTypeUnknownDeepLink : InternalLinkType {

    /**
     * Link to be passed to {@link Client.get_deep_link_info}
     */
    public string link { get; construct set; }

    public InternalLinkTypeUnknownDeepLink (
        string link
    ) {
        Object (
            link: link,
            tdlib_type: "internalLinkTypeUnknownDeepLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an unsupported proxy. An alert can be shown to
 * the user
 */
public class TDLib.InternalLinkTypeUnsupportedProxy : InternalLinkType {

    public InternalLinkTypeUnsupportedProxy () {
        Object (
            tdlib_type: "internalLinkTypeUnsupportedProxy",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an upgraded gift. Call
 * {@link Client.get_upgraded_gift} with the given name to process the
 * link
 */
public class TDLib.InternalLinkTypeUpgradedGift : InternalLinkType {

    /**
     * Name of the unique gift
     */
    public string name { get; construct set; }

    public InternalLinkTypeUpgradedGift (
        string name
    ) {
        Object (
            name: name,
            tdlib_type: "internalLinkTypeUpgradedGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a user by its phone number. Call
 * {@link Client.search_user_by_phone_number} with the given phone number
 * to process the link.
 * If the user is found, then call {@link Client.create_private_chat} and
 * open user's profile information screen or the chat itself. If draft
 * text isn't empty, then put the draft text in the input field
 */
public class TDLib.InternalLinkTypeUserPhoneNumber : InternalLinkType {

    /**
     * Phone number of the user
     */
    public string phone_number { get; construct set; }

    /**
     * Draft text for message to send in the chat
     */
    public string draft_text { get; construct set; }

    /**
     * True, if user's profile information screen must be opened; otherwise,
     * the chat itself must be opened
     */
    public bool open_profile { get; construct set; }

    public InternalLinkTypeUserPhoneNumber (
        string phone_number,
        string draft_text,
        bool open_profile
    ) {
        Object (
            phone_number: phone_number,
            draft_text: draft_text,
            open_profile: open_profile,
            tdlib_type: "internalLinkTypeUserPhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a user by a temporary token. Call
 * {@link Client.search_user_by_token} with the given token to process
 * the link.
 * If the user is found, then call {@link Client.create_private_chat} and
 * open the chat
 */
public class TDLib.InternalLinkTypeUserToken : InternalLinkType {

    /**
     * The token
     */
    public string token { get; construct set; }

    public InternalLinkTypeUserToken (
        string token
    ) {
        Object (
            token: token,
            tdlib_type: "internalLinkTypeUserToken",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a video chat. Call
 * {@link Client.search_public_chat} with the given chat username, and
 * then {@link Client.join_video_chat} with the given invite hash to
 * process the link
 */
public class TDLib.InternalLinkTypeVideoChat : InternalLinkType {

    /**
     * Username of the chat with the video chat
     */
    public string chat_username { get; construct set; }

    /**
     * If non-empty, invite hash to be used to join the video chat without
     * being muted by administrators
     */
    public string invite_hash { get; construct set; }

    /**
     * True, if the video chat is expected to be a live stream in a channel
     * or a broadcast group
     */
    public bool is_live_stream { get; construct set; }

    public InternalLinkTypeVideoChat (
        string chat_username,
        string invite_hash,
        bool is_live_stream
    ) {
        Object (
            chat_username: chat_username,
            invite_hash: invite_hash,
            is_live_stream: is_live_stream,
            tdlib_type: "internalLinkTypeVideoChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a Web App. Call
 * {@link Client.search_public_chat} with the given bot username, check
 * that the user is a bot. If the bot is restricted for the current user,
 * then show an error message.
 * Otherwise, call {@link Client.search_web_app} with the received bot
 * and the given web_app_short_name. Process received foundWebApp by
 * showing a confirmation dialog if needed.
 * If the bot can be added to attachment or side menu, but isn't added
 * yet, then show a disclaimer about Mini Apps being third-party
 * applications instead of the dialog
 * and ask the user to accept their Terms of service. If the user accept
 * the terms and confirms adding, then use
 * {@link Client.toggle_bot_is_added_to_attachment_menu} to add the bot.
 * Then, call {@link Client.get_web_app_link_url} and open the returned
 * URL as a Web App
 */
public class TDLib.InternalLinkTypeWebApp : InternalLinkType {

    /**
     * Username of the bot that owns the Web App
     */
    public string bot_username { get; construct set; }

    /**
     * Short name of the Web App
     */
    public string web_app_short_name { get; construct set; }

    /**
     * Start parameter to be passed to {@link Client.get_web_app_link_url}
     */
    public string start_parameter { get; construct set; }

    /**
     * The mode in which the Web App must be opened
     */
    public WebAppOpenMode mode { get; construct set; }

    public InternalLinkTypeWebApp (
        string bot_username,
        string web_app_short_name,
        string start_parameter,
        WebAppOpenMode mode
    ) {
        Object (
            bot_username: bot_username,
            web_app_short_name: web_app_short_name,
            start_parameter: start_parameter,
            mode: mode,
            tdlib_type: "internalLinkTypeWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
