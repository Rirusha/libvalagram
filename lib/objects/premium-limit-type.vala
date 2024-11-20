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
 * Describes type of limit, increased for Premium users
 */
public abstract class TDLib.PremiumLimitType : Error {}

/**
 * The maximum number of joined supergroups and channels
 */
public class TDLib.PremiumLimitTypeSupergroupCount : PremiumLimitType {

    public PremiumLimitTypeSupergroupCount () {
        Object (
            tdlib_type: "premiumLimitTypeSupergroupCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of pinned chats in the main chat list
 */
public class TDLib.PremiumLimitTypePinnedChatCount : PremiumLimitType {

    public PremiumLimitTypePinnedChatCount () {
        Object (
            tdlib_type: "premiumLimitTypePinnedChatCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of created public chats
 */
public class TDLib.PremiumLimitTypeCreatedPublicChatCount : PremiumLimitType {

    public PremiumLimitTypeCreatedPublicChatCount () {
        Object (
            tdlib_type: "premiumLimitTypeCreatedPublicChatCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of saved animations
 */
public class TDLib.PremiumLimitTypeSavedAnimationCount : PremiumLimitType {

    public PremiumLimitTypeSavedAnimationCount () {
        Object (
            tdlib_type: "premiumLimitTypeSavedAnimationCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of favorite stickers
 */
public class TDLib.PremiumLimitTypeFavoriteStickerCount : PremiumLimitType {

    public PremiumLimitTypeFavoriteStickerCount () {
        Object (
            tdlib_type: "premiumLimitTypeFavoriteStickerCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of chat folders
 */
public class TDLib.PremiumLimitTypeChatFolderCount : PremiumLimitType {

    public PremiumLimitTypeChatFolderCount () {
        Object (
            tdlib_type: "premiumLimitTypeChatFolderCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of pinned and always included, or always excluded
 * chats in a chat folder
 */
public class TDLib.PremiumLimitTypeChatFolderChosenChatCount : PremiumLimitType {

    public PremiumLimitTypeChatFolderChosenChatCount () {
        Object (
            tdlib_type: "premiumLimitTypeChatFolderChosenChatCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of pinned chats in the archive chat list
 */
public class TDLib.PremiumLimitTypePinnedArchivedChatCount : PremiumLimitType {

    public PremiumLimitTypePinnedArchivedChatCount () {
        Object (
            tdlib_type: "premiumLimitTypePinnedArchivedChatCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of pinned Saved Messages topics
 */
public class TDLib.PremiumLimitTypePinnedSavedMessagesTopicCount : PremiumLimitType {

    public PremiumLimitTypePinnedSavedMessagesTopicCount () {
        Object (
            tdlib_type: "premiumLimitTypePinnedSavedMessagesTopicCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum length of sent media caption
 */
public class TDLib.PremiumLimitTypeCaptionLength : PremiumLimitType {

    public PremiumLimitTypeCaptionLength () {
        Object (
            tdlib_type: "premiumLimitTypeCaptionLength",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum length of the user's bio
 */
public class TDLib.PremiumLimitTypeBioLength : PremiumLimitType {

    public PremiumLimitTypeBioLength () {
        Object (
            tdlib_type: "premiumLimitTypeBioLength",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of invite links for a chat folder
 */
public class TDLib.PremiumLimitTypeChatFolderInviteLinkCount : PremiumLimitType {

    public PremiumLimitTypeChatFolderInviteLinkCount () {
        Object (
            tdlib_type: "premiumLimitTypeChatFolderInviteLinkCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of added shareable chat folders
 */
public class TDLib.PremiumLimitTypeShareableChatFolderCount : PremiumLimitType {

    public PremiumLimitTypeShareableChatFolderCount () {
        Object (
            tdlib_type: "premiumLimitTypeShareableChatFolderCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of active stories
 */
public class TDLib.PremiumLimitTypeActiveStoryCount : PremiumLimitType {

    public PremiumLimitTypeActiveStoryCount () {
        Object (
            tdlib_type: "premiumLimitTypeActiveStoryCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of stories sent per week
 */
public class TDLib.PremiumLimitTypeWeeklySentStoryCount : PremiumLimitType {

    public PremiumLimitTypeWeeklySentStoryCount () {
        Object (
            tdlib_type: "premiumLimitTypeWeeklySentStoryCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of stories sent per month
 */
public class TDLib.PremiumLimitTypeMonthlySentStoryCount : PremiumLimitType {

    public PremiumLimitTypeMonthlySentStoryCount () {
        Object (
            tdlib_type: "premiumLimitTypeMonthlySentStoryCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum length of captions of sent stories
 */
public class TDLib.PremiumLimitTypeStoryCaptionLength : PremiumLimitType {

    public PremiumLimitTypeStoryCaptionLength () {
        Object (
            tdlib_type: "premiumLimitTypeStoryCaptionLength",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of suggested reaction areas on a story
 */
public class TDLib.PremiumLimitTypeStorySuggestedReactionAreaCount : PremiumLimitType {

    public PremiumLimitTypeStorySuggestedReactionAreaCount () {
        Object (
            tdlib_type: "premiumLimitTypeStorySuggestedReactionAreaCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The maximum number of received similar chats
 */
public class TDLib.PremiumLimitTypeSimilarChatCount : PremiumLimitType {

    public PremiumLimitTypeSimilarChatCount () {
        Object (
            tdlib_type: "premiumLimitTypeSimilarChatCount",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
