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
 * Describes a feature available to Premium users
 */
public abstract class TDLib.PremiumFeature : Error {}

/**
 * Increased limits
 */
public class TDLib.PremiumFeatureIncreasedLimits : PremiumFeature {

    public PremiumFeatureIncreasedLimits () {
        Object (
            tdlib_type: "premiumFeatureIncreasedLimits",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Increased maximum upload file size
 */
public class TDLib.PremiumFeatureIncreasedUploadFileSize : PremiumFeature {

    public PremiumFeatureIncreasedUploadFileSize () {
        Object (
            tdlib_type: "premiumFeatureIncreasedUploadFileSize",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Improved download speed
 */
public class TDLib.PremiumFeatureImprovedDownloadSpeed : PremiumFeature {

    public PremiumFeatureImprovedDownloadSpeed () {
        Object (
            tdlib_type: "premiumFeatureImprovedDownloadSpeed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to convert voice notes to text
 */
public class TDLib.PremiumFeatureVoiceRecognition : PremiumFeature {

    public PremiumFeatureVoiceRecognition () {
        Object (
            tdlib_type: "premiumFeatureVoiceRecognition",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Disabled ads
 */
public class TDLib.PremiumFeatureDisabledAds : PremiumFeature {

    public PremiumFeatureDisabledAds () {
        Object (
            tdlib_type: "premiumFeatureDisabledAds",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Allowed to use more reactions
 */
public class TDLib.PremiumFeatureUniqueReactions : PremiumFeature {

    public PremiumFeatureUniqueReactions () {
        Object (
            tdlib_type: "premiumFeatureUniqueReactions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Allowed to use premium stickers with unique effects
 */
public class TDLib.PremiumFeatureUniqueStickers : PremiumFeature {

    public PremiumFeatureUniqueStickers () {
        Object (
            tdlib_type: "premiumFeatureUniqueStickers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Allowed to use custom emoji stickers in message texts and captions
 */
public class TDLib.PremiumFeatureCustomEmoji : PremiumFeature {

    public PremiumFeatureCustomEmoji () {
        Object (
            tdlib_type: "premiumFeatureCustomEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Ability to change position of the main chat list, archive and mute all
 * new chats from non-contacts, and completely disable notifications
 * about the user's contacts joined Telegram
 */
public class TDLib.PremiumFeatureAdvancedChatManagement : PremiumFeature {

    public PremiumFeatureAdvancedChatManagement () {
        Object (
            tdlib_type: "premiumFeatureAdvancedChatManagement",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A badge in the user's profile
 */
public class TDLib.PremiumFeatureProfileBadge : PremiumFeature {

    public PremiumFeatureProfileBadge () {
        Object (
            tdlib_type: "premiumFeatureProfileBadge",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to show an emoji status along with the user's name
 */
public class TDLib.PremiumFeatureEmojiStatus : PremiumFeature {

    public PremiumFeatureEmojiStatus () {
        Object (
            tdlib_type: "premiumFeatureEmojiStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Profile photo animation on message and chat screens
 */
public class TDLib.PremiumFeatureAnimatedProfilePhoto : PremiumFeature {

    public PremiumFeatureAnimatedProfilePhoto () {
        Object (
            tdlib_type: "premiumFeatureAnimatedProfilePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to set a custom emoji as a forum topic icon
 */
public class TDLib.PremiumFeatureForumTopicIcon : PremiumFeature {

    public PremiumFeatureForumTopicIcon () {
        Object (
            tdlib_type: "premiumFeatureForumTopicIcon",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Allowed to set a premium application icons
 */
public class TDLib.PremiumFeatureAppIcons : PremiumFeature {

    public PremiumFeatureAppIcons () {
        Object (
            tdlib_type: "premiumFeatureAppIcons",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Allowed to translate chat messages real-time
 */
public class TDLib.PremiumFeatureRealTimeChatTranslation : PremiumFeature {

    public PremiumFeatureRealTimeChatTranslation () {
        Object (
            tdlib_type: "premiumFeatureRealTimeChatTranslation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Allowed to use many additional features for stories
 */
public class TDLib.PremiumFeatureUpgradedStories : PremiumFeature {

    public PremiumFeatureUpgradedStories () {
        Object (
            tdlib_type: "premiumFeatureUpgradedStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to boost chats
 */
public class TDLib.PremiumFeatureChatBoost : PremiumFeature {

    public PremiumFeatureChatBoost () {
        Object (
            tdlib_type: "premiumFeatureChatBoost",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to choose accent color for replies and user profile
 */
public class TDLib.PremiumFeatureAccentColor : PremiumFeature {

    public PremiumFeatureAccentColor () {
        Object (
            tdlib_type: "premiumFeatureAccentColor",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to set private chat background for both users
 */
public class TDLib.PremiumFeatureBackgroundForBoth : PremiumFeature {

    public PremiumFeatureBackgroundForBoth () {
        Object (
            tdlib_type: "premiumFeatureBackgroundForBoth",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to use tags in Saved Messages
 */
public class TDLib.PremiumFeatureSavedMessagesTags : PremiumFeature {

    public PremiumFeatureSavedMessagesTags () {
        Object (
            tdlib_type: "premiumFeatureSavedMessagesTags",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to disallow incoming voice and video note messages in
 * private chats using {@link Client.set_user_privacy_setting_rules} with
 * userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages
 * and to restrict incoming messages from non-contacts using
 * {@link Client.set_new_chat_privacy_settings}
 */
public class TDLib.PremiumFeatureMessagePrivacy : PremiumFeature {

    public PremiumFeatureMessagePrivacy () {
        Object (
            tdlib_type: "premiumFeatureMessagePrivacy",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to view last seen and read times of other users even they
 * can't view last seen or read time for the current user
 */
public class TDLib.PremiumFeatureLastSeenTimes : PremiumFeature {

    public PremiumFeatureLastSeenTimes () {
        Object (
            tdlib_type: "premiumFeatureLastSeenTimes",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to use Business features
 */
public class TDLib.PremiumFeatureBusiness : PremiumFeature {

    public PremiumFeatureBusiness () {
        Object (
            tdlib_type: "premiumFeatureBusiness",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to use all available message effects
 */
public class TDLib.PremiumFeatureMessageEffects : PremiumFeature {

    public PremiumFeatureMessageEffects () {
        Object (
            tdlib_type: "premiumFeatureMessageEffects",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
