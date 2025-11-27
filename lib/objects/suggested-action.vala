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
 * Describes an action suggested to the current user
 */
public abstract class TDLib.SuggestedAction : Error {}

/**
 * Suggests the user to enable
 * archive_and_mute_new_chats_from_unknown_users setting in
 * archiveChatListSettings
 */
public class TDLib.SuggestedActionEnableArchiveAndMuteNewChats : SuggestedAction {

    public SuggestedActionEnableArchiveAndMuteNewChats () {
        Object (
            tdlib_type: "suggestedActionEnableArchiveAndMuteNewChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to check whether they still remember their 2-step
 * verification password
 */
public class TDLib.SuggestedActionCheckPassword : SuggestedAction {

    public SuggestedActionCheckPassword () {
        Object (
            tdlib_type: "suggestedActionCheckPassword",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to check whether authorization phone number is
 * correct and change the phone number if it is inaccessible
 */
public class TDLib.SuggestedActionCheckPhoneNumber : SuggestedAction {

    public SuggestedActionCheckPhoneNumber () {
        Object (
            tdlib_type: "suggestedActionCheckPhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to view a hint about the meaning of one and two
 * check marks on sent messages
 */
public class TDLib.SuggestedActionViewChecksHint : SuggestedAction {

    public SuggestedActionViewChecksHint () {
        Object (
            tdlib_type: "suggestedActionViewChecksHint",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to convert specified supergroup to a broadcast group
 */
public class TDLib.SuggestedActionConvertToBroadcastGroup : SuggestedAction {

    /**
     * Supergroup identifier
     */
    public int64 supergroup_id { get; construct set; }

    public SuggestedActionConvertToBroadcastGroup (
        int64 supergroup_id
    ) {
        Object (
            supergroup_id: supergroup_id,
            tdlib_type: "suggestedActionConvertToBroadcastGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to set a 2-step verification password to be able to
 * log in again
 */
public class TDLib.SuggestedActionSetPassword : SuggestedAction {

    /**
     * The number of days to pass between consecutive authorizations if the
     * user declines to set password; if 0, then the user is advised to set
     * the password for security reasons
     */
    public int32 authorization_delay { get; construct set; }

    public SuggestedActionSetPassword (
        int32 authorization_delay
    ) {
        Object (
            authorization_delay: authorization_delay,
            tdlib_type: "suggestedActionSetPassword",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to upgrade the Premium subscription from monthly
 * payments to annual payments
 */
public class TDLib.SuggestedActionUpgradePremium : SuggestedAction {

    public SuggestedActionUpgradePremium () {
        Object (
            tdlib_type: "suggestedActionUpgradePremium",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to restore a recently expired Premium subscription
 */
public class TDLib.SuggestedActionRestorePremium : SuggestedAction {

    public SuggestedActionRestorePremium () {
        Object (
            tdlib_type: "suggestedActionRestorePremium",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to subscribe to the Premium subscription with annual
 * payments
 */
public class TDLib.SuggestedActionSubscribeToAnnualPremium : SuggestedAction {

    public SuggestedActionSubscribeToAnnualPremium () {
        Object (
            tdlib_type: "suggestedActionSubscribeToAnnualPremium",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to gift Telegram Premium to friends for Christmas
 */
public class TDLib.SuggestedActionGiftPremiumForChristmas : SuggestedAction {

    public SuggestedActionGiftPremiumForChristmas () {
        Object (
            tdlib_type: "suggestedActionGiftPremiumForChristmas",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to set birthdate
 */
public class TDLib.SuggestedActionSetBirthdate : SuggestedAction {

    public SuggestedActionSetBirthdate () {
        Object (
            tdlib_type: "suggestedActionSetBirthdate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to set profile photo
 */
public class TDLib.SuggestedActionSetProfilePhoto : SuggestedAction {

    public SuggestedActionSetProfilePhoto () {
        Object (
            tdlib_type: "suggestedActionSetProfilePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to extend their expiring Telegram Premium
 * subscription
 */
public class TDLib.SuggestedActionExtendPremium : SuggestedAction {

    /**
     * A URL for managing Telegram Premium subscription
     */
    public string manage_premium_subscription_url { get; construct set; }

    public SuggestedActionExtendPremium (
        string manage_premium_subscription_url
    ) {
        Object (
            manage_premium_subscription_url: manage_premium_subscription_url,
            tdlib_type: "suggestedActionExtendPremium",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to extend their expiring Telegram Star
 * subscriptions. Call {@link Client.get_star_subscriptions} with
 * only_expiring == true
 * to get the number of expiring subscriptions and the number of required
 * to buy Telegram Stars
 */
public class TDLib.SuggestedActionExtendStarSubscriptions : SuggestedAction {

    public SuggestedActionExtendStarSubscriptions () {
        Object (
            tdlib_type: "suggestedActionExtendStarSubscriptions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A custom suggestion to be shown at the top of the chat list
 */
public class TDLib.SuggestedActionCustom : SuggestedAction {

    /**
     * Unique name of the suggestion
     */
    public string name { get; construct set; }

    /**
     * Title of the suggestion
     */
    public FormattedText title { get; construct set; }

    /**
     * Description of the suggestion
     */
    public FormattedText description { get; construct set; }

    /**
     * The link to open when the suggestion is clicked
     */
    public string url { get; construct set; }

    public SuggestedActionCustom (
        string name,
        FormattedText title,
        FormattedText description,
        string url
    ) {
        Object (
            name: name,
            title: title,
            description: description,
            url: url,
            tdlib_type: "suggestedActionCustom",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Suggests the user to add login email address. Call
 * {@link Client.is_login_email_address_required} and then
 * {@link Client.set_login_email_address} or
 * {@link Client.check_login_email_address_code} to change the login
 * email address
 */
public class TDLib.SuggestedActionSetLoginEmailAddress : SuggestedAction {

    /**
     * True, if the suggested action can be hidden using
     * {@link Client.hide_suggested_action} Otherwise, the user must not be
     * able to use the app without setting up the email address
     */
    public bool can_be_hidden { get; construct set; }

    public SuggestedActionSetLoginEmailAddress (
        bool can_be_hidden
    ) {
        Object (
            can_be_hidden: can_be_hidden,
            tdlib_type: "suggestedActionSetLoginEmailAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
