/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Describes a feature available to Business user accounts
 */
public abstract class TDLib.BusinessFeature : Error {}

/**
 * The ability to set location
 */
public class TDLib.BusinessFeatureLocation : BusinessFeature {

    public BusinessFeatureLocation () {
        Object (
            tdlib_type: "businessFeatureLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to set opening hours
 */
public class TDLib.BusinessFeatureOpeningHours : BusinessFeature {

    public BusinessFeatureOpeningHours () {
        Object (
            tdlib_type: "businessFeatureOpeningHours",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to use quick replies
 */
public class TDLib.BusinessFeatureQuickReplies : BusinessFeature {

    public BusinessFeatureQuickReplies () {
        Object (
            tdlib_type: "businessFeatureQuickReplies",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to set up a greeting message
 */
public class TDLib.BusinessFeatureGreetingMessage : BusinessFeature {

    public BusinessFeatureGreetingMessage () {
        Object (
            tdlib_type: "businessFeatureGreetingMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to set up an away message
 */
public class TDLib.BusinessFeatureAwayMessage : BusinessFeature {

    public BusinessFeatureAwayMessage () {
        Object (
            tdlib_type: "businessFeatureAwayMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to create links to the business account with predefined
 * message text
 */
public class TDLib.BusinessFeatureAccountLinks : BusinessFeature {

    public BusinessFeatureAccountLinks () {
        Object (
            tdlib_type: "businessFeatureAccountLinks",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to customize start page
 */
public class TDLib.BusinessFeatureStartPage : BusinessFeature {

    public BusinessFeatureStartPage () {
        Object (
            tdlib_type: "businessFeatureStartPage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to connect a bot to the account
 */
public class TDLib.BusinessFeatureBots : BusinessFeature {

    public BusinessFeatureBots () {
        Object (
            tdlib_type: "businessFeatureBots",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to show an emoji status along with the business name
 */
public class TDLib.BusinessFeatureEmojiStatus : BusinessFeature {

    public BusinessFeatureEmojiStatus () {
        Object (
            tdlib_type: "businessFeatureEmojiStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The ability to display folder names for each chat in the chat list
 */
public class TDLib.BusinessFeatureChatFolderTags : BusinessFeature {

    public BusinessFeatureChatFolderTags () {
        Object (
            tdlib_type: "businessFeatureChatFolderTags",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Allowed to use many additional features for stories
 */
public class TDLib.BusinessFeatureUpgradedStories : BusinessFeature {

    public BusinessFeatureUpgradedStories () {
        Object (
            tdlib_type: "businessFeatureUpgradedStories",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
