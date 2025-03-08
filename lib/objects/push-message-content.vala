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
 * Contains content of a push message notification
 */
public abstract class TDLib.PushMessageContent : Error {}

/**
 * A general message with hidden content
 */
public class TDLib.PushMessageContentHidden : PushMessageContent {

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentHidden (
        bool is_pinned
    ) {
        Object (
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentHidden",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An animation message (GIF-style).
 */
public class TDLib.PushMessageContentAnimation : PushMessageContent {

    /**
     * Message content; may be null
     */
    public Animation? animation { get; construct set; }

    /**
     * Animation caption
     */
    public string caption { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentAnimation (
        Animation? animation,
        string caption,
        bool is_pinned
    ) {
        Object (
            animation: animation,
            caption: caption,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An audio message
 */
public class TDLib.PushMessageContentAudio : PushMessageContent {

    /**
     * Message content; may be null
     */
    public Audio? audio { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentAudio (
        Audio? audio,
        bool is_pinned
    ) {
        Object (
            audio: audio,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a user contact
 */
public class TDLib.PushMessageContentContact : PushMessageContent {

    /**
     * Contact's name
     */
    public string name { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentContact (
        string name,
        bool is_pinned
    ) {
        Object (
            name: name,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentContact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A contact has registered with Telegram
 */
public class TDLib.PushMessageContentContactRegistered : PushMessageContent {

    public PushMessageContentContactRegistered () {
        Object (
            tdlib_type: "pushMessageContentContactRegistered",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A document message (a general file)
 */
public class TDLib.PushMessageContentDocument : PushMessageContent {

    /**
     * Message content; may be null
     */
    public Document? document { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentDocument (
        Document? document,
        bool is_pinned
    ) {
        Object (
            document: document,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a game
 */
public class TDLib.PushMessageContentGame : PushMessageContent {

    /**
     * Game title, empty for pinned game message
     */
    public string title { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentGame (
        string title,
        bool is_pinned
    ) {
        Object (
            title: title,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentGame",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new high score was achieved in a game
 */
public class TDLib.PushMessageContentGameScore : PushMessageContent {

    /**
     * Game title, empty for pinned message
     */
    public string title { get; construct set; }

    /**
     * New score, 0 for pinned message
     */
    public int32 score { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentGameScore (
        string title,
        int32 score,
        bool is_pinned
    ) {
        Object (
            title: title,
            score: score,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentGameScore",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with an invoice from a bot
 */
public class TDLib.PushMessageContentInvoice : PushMessageContent {

    /**
     * Product price
     */
    public string price { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentInvoice (
        string price,
        bool is_pinned
    ) {
        Object (
            price: price,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentInvoice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a location
 */
public class TDLib.PushMessageContentLocation : PushMessageContent {

    /**
     * True, if the location is live
     */
    public bool is_live { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentLocation (
        bool is_live,
        bool is_pinned
    ) {
        Object (
            is_live: is_live,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with paid media
 */
public class TDLib.PushMessageContentPaidMedia : PushMessageContent {

    /**
     * Number of Telegram Stars needed to buy access to the media in the
     * message; 0 for pinned message
     */
    public int64 star_count { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentPaidMedia (
        int64 star_count,
        bool is_pinned
    ) {
        Object (
            star_count: star_count,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentPaidMedia",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A photo message
 */
public class TDLib.PushMessageContentPhoto : PushMessageContent {

    /**
     * Message content; may be null
     */
    public Photo? photo { get; construct set; }

    /**
     * Photo caption
     */
    public string caption { get; construct set; }

    /**
     * True, if the photo is secret
     */
    public bool is_secret { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentPhoto (
        Photo? photo,
        string caption,
        bool is_secret,
        bool is_pinned
    ) {
        Object (
            photo: photo,
            caption: caption,
            is_secret: is_secret,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a poll
 */
public class TDLib.PushMessageContentPoll : PushMessageContent {

    /**
     * Poll question
     */
    public string question { get; construct set; }

    /**
     * True, if the poll is regular and not in quiz mode
     */
    public bool is_regular { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentPoll (
        string question,
        bool is_regular,
        bool is_pinned
    ) {
        Object (
            question: question,
            is_regular: is_regular,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentPoll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a Telegram Premium gift code created for the user
 */
public class TDLib.PushMessageContentPremiumGiftCode : PushMessageContent {

    /**
     * Number of months the Telegram Premium subscription will be active
     * after code activation
     */
    public int32 month_count { get; construct set; }

    public PushMessageContentPremiumGiftCode (
        int32 month_count
    ) {
        Object (
            month_count: month_count,
            tdlib_type: "pushMessageContentPremiumGiftCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a giveaway
 */
public class TDLib.PushMessageContentGiveaway : PushMessageContent {

    /**
     * Number of users which will receive giveaway prizes; 0 for pinned
     * message
     */
    public int32 winner_count { get; construct set; }

    /**
     * Prize of the giveaway; may be null for pinned message
     */
    public GiveawayPrize? prize { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentGiveaway (
        int32 winner_count,
        GiveawayPrize? prize,
        bool is_pinned
    ) {
        Object (
            winner_count: winner_count,
            prize: prize,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentGiveaway",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a gift
 */
public class TDLib.PushMessageContentGift : PushMessageContent {

    /**
     * Number of Telegram Stars that sender paid for the gift
     */
    public int64 star_count { get; construct set; }

    public PushMessageContentGift (
        int64 star_count
    ) {
        Object (
            star_count: star_count,
            tdlib_type: "pushMessageContentGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with an upgraded gift
 */
public class TDLib.PushMessageContentUpgradedGift : PushMessageContent {

    /**
     * True, if the gift was obtained by upgrading of a previously received
     * gift; otherwise, this is a transferred gift
     */
    public bool is_upgrade { get; construct set; }

    public PushMessageContentUpgradedGift (
        bool is_upgrade
    ) {
        Object (
            is_upgrade: is_upgrade,
            tdlib_type: "pushMessageContentUpgradedGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A screenshot of a message in the chat has been taken
 */
public class TDLib.PushMessageContentScreenshotTaken : PushMessageContent {

    public PushMessageContentScreenshotTaken () {
        Object (
            tdlib_type: "pushMessageContentScreenshotTaken",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a sticker
 */
public class TDLib.PushMessageContentSticker : PushMessageContent {

    /**
     * Message content; may be null
     */
    public Sticker? sticker { get; construct set; }

    /**
     * Emoji corresponding to the sticker; may be empty
     */
    public string emoji { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentSticker (
        Sticker? sticker,
        string emoji,
        bool is_pinned
    ) {
        Object (
            sticker: sticker,
            emoji: emoji,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a story
 */
public class TDLib.PushMessageContentStory : PushMessageContent {

    /**
     * True, if the user was mentioned in the story
     */
    public bool is_mention { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentStory (
        bool is_mention,
        bool is_pinned
    ) {
        Object (
            is_mention: is_mention,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A text message
 */
public class TDLib.PushMessageContentText : PushMessageContent {

    /**
     * Message text
     */
    public string text { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentText (
        string text,
        bool is_pinned
    ) {
        Object (
            text: text,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentText",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video message
 */
public class TDLib.PushMessageContentVideo : PushMessageContent {

    /**
     * Message content; may be null
     */
    public Video? video { get; construct set; }

    /**
     * Video caption
     */
    public string caption { get; construct set; }

    /**
     * True, if the video is secret
     */
    public bool is_secret { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentVideo (
        Video? video,
        string caption,
        bool is_secret,
        bool is_pinned
    ) {
        Object (
            video: video,
            caption: caption,
            is_secret: is_secret,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video note message
 */
public class TDLib.PushMessageContentVideoNote : PushMessageContent {

    /**
     * Message content; may be null
     */
    public VideoNote? video_note { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentVideoNote (
        VideoNote? video_note,
        bool is_pinned
    ) {
        Object (
            video_note: video_note,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A voice note message
 */
public class TDLib.PushMessageContentVoiceNote : PushMessageContent {

    /**
     * Message content; may be null
     */
    public VoiceNote? voice_note { get; construct set; }

    /**
     * True, if the message is a pinned message with the specified content
     */
    public bool is_pinned { get; construct set; }

    public PushMessageContentVoiceNote (
        VoiceNote? voice_note,
        bool is_pinned
    ) {
        Object (
            voice_note: voice_note,
            is_pinned: is_pinned,
            tdlib_type: "pushMessageContentVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A newly created basic group
 */
public class TDLib.PushMessageContentBasicGroupChatCreate : PushMessageContent {

    public PushMessageContentBasicGroupChatCreate () {
        Object (
            tdlib_type: "pushMessageContentBasicGroupChatCreate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video chat or live stream was started
 */
public class TDLib.PushMessageContentVideoChatStarted : PushMessageContent {

    public PushMessageContentVideoChatStarted () {
        Object (
            tdlib_type: "pushMessageContentVideoChatStarted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video chat or live stream has ended
 */
public class TDLib.PushMessageContentVideoChatEnded : PushMessageContent {

    public PushMessageContentVideoChatEnded () {
        Object (
            tdlib_type: "pushMessageContentVideoChatEnded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An invitation of participants to a video chat or live stream
 */
public class TDLib.PushMessageContentInviteVideoChatParticipants : PushMessageContent {

    /**
     * True, if the current user was invited to the video chat or the live
     * stream
     */
    public bool is_current_user { get; construct set; }

    public PushMessageContentInviteVideoChatParticipants (
        bool is_current_user
    ) {
        Object (
            is_current_user: is_current_user,
            tdlib_type: "pushMessageContentInviteVideoChatParticipants",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * New chat members were invited to a group
 */
public class TDLib.PushMessageContentChatAddMembers : PushMessageContent {

    /**
     * Name of the added member
     */
    public string member_name { get; construct set; }

    /**
     * True, if the current user was added to the group
     */
    public bool is_current_user { get; construct set; }

    /**
     * True, if the user has returned to the group themselves
     */
    public bool is_returned { get; construct set; }

    public PushMessageContentChatAddMembers (
        string member_name,
        bool is_current_user,
        bool is_returned
    ) {
        Object (
            member_name: member_name,
            is_current_user: is_current_user,
            is_returned: is_returned,
            tdlib_type: "pushMessageContentChatAddMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat photo was edited
 */
public class TDLib.PushMessageContentChatChangePhoto : PushMessageContent {

    public PushMessageContentChatChangePhoto () {
        Object (
            tdlib_type: "pushMessageContentChatChangePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat title was edited
 */
public class TDLib.PushMessageContentChatChangeTitle : PushMessageContent {

    /**
     * New chat title
     */
    public string title { get; construct set; }

    public PushMessageContentChatChangeTitle (
        string title
    ) {
        Object (
            title: title,
            tdlib_type: "pushMessageContentChatChangeTitle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat background was edited
 */
public class TDLib.PushMessageContentChatSetBackground : PushMessageContent {

    /**
     * True, if the set background is the same as the background of the
     * current user
     */
    public bool is_same { get; construct set; }

    public PushMessageContentChatSetBackground (
        bool is_same
    ) {
        Object (
            is_same: is_same,
            tdlib_type: "pushMessageContentChatSetBackground",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat theme was edited
 */
public class TDLib.PushMessageContentChatSetTheme : PushMessageContent {

    /**
     * If non-empty, name of a new theme, set for the chat. Otherwise, the
     * chat theme was reset to the default one
     */
    public string theme_name { get; construct set; }

    public PushMessageContentChatSetTheme (
        string theme_name
    ) {
        Object (
            theme_name: theme_name,
            tdlib_type: "pushMessageContentChatSetTheme",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat member was deleted
 */
public class TDLib.PushMessageContentChatDeleteMember : PushMessageContent {

    /**
     * Name of the deleted member
     */
    public string member_name { get; construct set; }

    /**
     * True, if the current user was deleted from the group
     */
    public bool is_current_user { get; construct set; }

    /**
     * True, if the user has left the group themselves
     */
    public bool is_left { get; construct set; }

    public PushMessageContentChatDeleteMember (
        string member_name,
        bool is_current_user,
        bool is_left
    ) {
        Object (
            member_name: member_name,
            is_current_user: is_current_user,
            is_left: is_left,
            tdlib_type: "pushMessageContentChatDeleteMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new member joined the chat via an invite link
 */
public class TDLib.PushMessageContentChatJoinByLink : PushMessageContent {

    public PushMessageContentChatJoinByLink () {
        Object (
            tdlib_type: "pushMessageContentChatJoinByLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new member was accepted to the chat by an administrator
 */
public class TDLib.PushMessageContentChatJoinByRequest : PushMessageContent {

    public PushMessageContentChatJoinByRequest () {
        Object (
            tdlib_type: "pushMessageContentChatJoinByRequest",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A new recurring payment was made by the current user
 */
public class TDLib.PushMessageContentRecurringPayment : PushMessageContent {

    /**
     * The paid amount
     */
    public string amount { get; construct set; }

    public PushMessageContentRecurringPayment (
        string amount
    ) {
        Object (
            amount: amount,
            tdlib_type: "pushMessageContentRecurringPayment",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A profile photo was suggested to the user
 */
public class TDLib.PushMessageContentSuggestProfilePhoto : PushMessageContent {

    public PushMessageContentSuggestProfilePhoto () {
        Object (
            tdlib_type: "pushMessageContentSuggestProfilePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A user in the chat came within proximity alert range from the current
 * user
 */
public class TDLib.PushMessageContentProximityAlertTriggered : PushMessageContent {

    /**
     * The distance to the user
     */
    public int32 distance { get; construct set; }

    public PushMessageContentProximityAlertTriggered (
        int32 distance
    ) {
        Object (
            distance: distance,
            tdlib_type: "pushMessageContentProximityAlertTriggered",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A forwarded messages
 */
public class TDLib.PushMessageContentMessageForwards : PushMessageContent {

    /**
     * Number of forwarded messages
     */
    public int32 total_count { get; construct set; }

    public PushMessageContentMessageForwards (
        int32 total_count
    ) {
        Object (
            total_count: total_count,
            tdlib_type: "pushMessageContentMessageForwards",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A media album
 */
public class TDLib.PushMessageContentMediaAlbum : PushMessageContent {

    /**
     * Number of messages in the album
     */
    public int32 total_count { get; construct set; }

    /**
     * True, if the album has at least one photo
     */
    public bool has_photos { get; construct set; }

    /**
     * True, if the album has at least one video file
     */
    public bool has_videos { get; construct set; }

    /**
     * True, if the album has at least one audio file
     */
    public bool has_audios { get; construct set; }

    /**
     * True, if the album has at least one document
     */
    public bool has_documents { get; construct set; }

    public PushMessageContentMediaAlbum (
        int32 total_count,
        bool has_photos,
        bool has_videos,
        bool has_audios,
        bool has_documents
    ) {
        Object (
            total_count: total_count,
            has_photos: has_photos,
            has_videos: has_videos,
            has_audios: has_audios,
            has_documents: has_documents,
            tdlib_type: "pushMessageContentMediaAlbum",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
