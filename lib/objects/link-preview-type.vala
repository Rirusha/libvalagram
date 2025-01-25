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
 * Describes type of link preview
 */
public abstract class TDLib.LinkPreviewType : Error {}

/**
 * The link is a link to a media album consisting of photos and videos
 */
public class TDLib.LinkPreviewTypeAlbum : LinkPreviewType {

    /**
     * The list of album media
     */
    public Gee.ArrayList<LinkPreviewAlbumMedia?> media { get; construct set; default = new Gee.ArrayList<LinkPreviewAlbumMedia?> (); }

    /**
     * Album caption
     */
    public string caption { get; construct set; }

    public LinkPreviewTypeAlbum (
        Gee.ArrayList<LinkPreviewAlbumMedia?> media,
        string caption
    ) {
        Object (
            media: media,
            caption: caption,
            tdlib_type: "linkPreviewTypeAlbum",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an animation
 */
public class TDLib.LinkPreviewTypeAnimation : LinkPreviewType {

    /**
     * The animation
     */
    public Animation animation { get; construct set; }

    public LinkPreviewTypeAnimation (
        Animation animation
    ) {
        Object (
            animation: animation,
            tdlib_type: "linkPreviewTypeAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an app at App Store or Google Play
 */
public class TDLib.LinkPreviewTypeApp : LinkPreviewType {

    /**
     * Photo for the app
     */
    public Photo photo { get; construct set; }

    public LinkPreviewTypeApp (
        Photo photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "linkPreviewTypeApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a web site
 */
public class TDLib.LinkPreviewTypeArticle : LinkPreviewType {

    /**
     * Article's main photo; may be null
     */
    public Photo? photo { get; construct set; }

    public LinkPreviewTypeArticle (
        Photo? photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "linkPreviewTypeArticle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an audio
 */
public class TDLib.LinkPreviewTypeAudio : LinkPreviewType {

    /**
     * The audio description
     */
    public Audio audio { get; construct set; }

    public LinkPreviewTypeAudio (
        Audio audio
    ) {
        Object (
            audio: audio,
            tdlib_type: "linkPreviewTypeAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a background. Link preview title and  are
 * available only for filled backgrounds
 */
public class TDLib.LinkPreviewTypeBackground : LinkPreviewType {

    /**
     * Document with the background; may be null for filled backgrounds
     */
    public Document? document { get; construct set; }

    /**
     * Type of the background; may be null if unknown
     */
    public BackgroundType? background_type { get; construct set; }

    public LinkPreviewTypeBackground (
        Document? document,
        BackgroundType? background_type
    ) {
        Object (
            document: document,
            background_type: background_type,
            tdlib_type: "linkPreviewTypeBackground",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to boost a channel chat
 */
public class TDLib.LinkPreviewTypeChannelBoost : LinkPreviewType {

    /**
     * Photo of the chat; may be null
     */
    public ChatPhoto? photo { get; construct set; }

    public LinkPreviewTypeChannelBoost (
        ChatPhoto? photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "linkPreviewTypeChannelBoost",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a chat
 */
public class TDLib.LinkPreviewTypeChat : LinkPreviewType {

    /**
     * Type of the chat
     */
    public InviteLinkChatType type_ { get; construct set; }

    /**
     * Photo of the chat; may be null
     */
    public ChatPhoto? photo { get; construct set; }

    /**
     * True, if the link only creates join request
     */
    public bool creates_join_request { get; construct set; }

    public LinkPreviewTypeChat (
        InviteLinkChatType type_,
        ChatPhoto? photo,
        bool creates_join_request
    ) {
        Object (
            type_: type_,
            photo: photo,
            creates_join_request: creates_join_request,
            tdlib_type: "linkPreviewTypeChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a general file
 */
public class TDLib.LinkPreviewTypeDocument : LinkPreviewType {

    /**
     * The document description
     */
    public Document document { get; construct set; }

    public LinkPreviewTypeDocument (
        Document document
    ) {
        Object (
            document: document,
            tdlib_type: "linkPreviewTypeDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an animation player
 */
public class TDLib.LinkPreviewTypeEmbeddedAnimationPlayer : LinkPreviewType {

    /**
     * URL of the external animation player
     */
    public string url { get; construct set; }

    /**
     * Thumbnail of the animation; may be null if unknown
     */
    public Photo? thumbnail { get; construct set; }

    /**
     * Duration of the animation, in seconds
     */
    public int32 duration { get; construct set; }

    /**
     * Expected width of the embedded player
     */
    public int32 width { get; construct set; }

    /**
     * Expected height of the embedded player
     */
    public int32 height { get; construct set; }

    public LinkPreviewTypeEmbeddedAnimationPlayer (
        string url,
        Photo? thumbnail,
        int32 duration,
        int32 width,
        int32 height
    ) {
        Object (
            url: url,
            thumbnail: thumbnail,
            duration: duration,
            width: width,
            height: height,
            tdlib_type: "linkPreviewTypeEmbeddedAnimationPlayer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an audio player
 */
public class TDLib.LinkPreviewTypeEmbeddedAudioPlayer : LinkPreviewType {

    /**
     * URL of the external audio player
     */
    public string url { get; construct set; }

    /**
     * Thumbnail of the audio; may be null if unknown
     */
    public Photo? thumbnail { get; construct set; }

    /**
     * Duration of the audio, in seconds
     */
    public int32 duration { get; construct set; }

    /**
     * Expected width of the embedded player
     */
    public int32 width { get; construct set; }

    /**
     * Expected height of the embedded player
     */
    public int32 height { get; construct set; }

    public LinkPreviewTypeEmbeddedAudioPlayer (
        string url,
        Photo? thumbnail,
        int32 duration,
        int32 width,
        int32 height
    ) {
        Object (
            url: url,
            thumbnail: thumbnail,
            duration: duration,
            width: width,
            height: height,
            tdlib_type: "linkPreviewTypeEmbeddedAudioPlayer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a video player
 */
public class TDLib.LinkPreviewTypeEmbeddedVideoPlayer : LinkPreviewType {

    /**
     * URL of the external video player
     */
    public string url { get; construct set; }

    /**
     * Thumbnail of the video; may be null if unknown
     */
    public Photo? thumbnail { get; construct set; }

    /**
     * Duration of the video, in seconds
     */
    public int32 duration { get; construct set; }

    /**
     * Expected width of the embedded player
     */
    public int32 width { get; construct set; }

    /**
     * Expected height of the embedded player
     */
    public int32 height { get; construct set; }

    public LinkPreviewTypeEmbeddedVideoPlayer (
        string url,
        Photo? thumbnail,
        int32 duration,
        int32 width,
        int32 height
    ) {
        Object (
            url: url,
            thumbnail: thumbnail,
            duration: duration,
            width: width,
            height: height,
            tdlib_type: "linkPreviewTypeEmbeddedVideoPlayer",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an audio file
 */
public class TDLib.LinkPreviewTypeExternalAudio : LinkPreviewType {

    /**
     * URL of the audio file
     */
    public string url { get; construct set; }

    /**
     * MIME type of the audio file
     */
    public string mime_type { get; construct set; }

    /**
     * Duration of the audio, in seconds; 0 if unknown
     */
    public int32 duration { get; construct set; }

    public LinkPreviewTypeExternalAudio (
        string url,
        string mime_type,
        int32 duration
    ) {
        Object (
            url: url,
            mime_type: mime_type,
            duration: duration,
            tdlib_type: "linkPreviewTypeExternalAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a video file
 */
public class TDLib.LinkPreviewTypeExternalVideo : LinkPreviewType {

    /**
     * URL of the video file
     */
    public string url { get; construct set; }

    /**
     * MIME type of the video file
     */
    public string mime_type { get; construct set; }

    /**
     * Expected width of the video preview; 0 if unknown
     */
    public int32 width { get; construct set; }

    /**
     * Expected height of the video preview; 0 if unknown
     */
    public int32 height { get; construct set; }

    /**
     * Duration of the video, in seconds; 0 if unknown
     */
    public int32 duration { get; construct set; }

    public LinkPreviewTypeExternalVideo (
        string url,
        string mime_type,
        int32 width,
        int32 height,
        int32 duration
    ) {
        Object (
            url: url,
            mime_type: mime_type,
            width: width,
            height: height,
            duration: duration,
            tdlib_type: "linkPreviewTypeExternalVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an invoice
 */
public class TDLib.LinkPreviewTypeInvoice : LinkPreviewType {

    public LinkPreviewTypeInvoice () {
        Object (
            tdlib_type: "linkPreviewTypeInvoice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a text or a poll Telegram message
 */
public class TDLib.LinkPreviewTypeMessage : LinkPreviewType {

    public LinkPreviewTypeMessage () {
        Object (
            tdlib_type: "linkPreviewTypeMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a photo
 */
public class TDLib.LinkPreviewTypePhoto : LinkPreviewType {

    /**
     * The photo
     */
    public Photo photo { get; construct set; }

    public LinkPreviewTypePhoto (
        Photo photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "linkPreviewTypePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a Telegram Premium gift code
 */
public class TDLib.LinkPreviewTypePremiumGiftCode : LinkPreviewType {

    public LinkPreviewTypePremiumGiftCode () {
        Object (
            tdlib_type: "linkPreviewTypePremiumGiftCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a shareable chat folder
 */
public class TDLib.LinkPreviewTypeShareableChatFolder : LinkPreviewType {

    public LinkPreviewTypeShareableChatFolder () {
        Object (
            tdlib_type: "linkPreviewTypeShareableChatFolder",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a sticker
 */
public class TDLib.LinkPreviewTypeSticker : LinkPreviewType {

    /**
     * The sticker. It can be an arbitrary WEBP image and can have dimensions
     * bigger than 512
     */
    public Sticker sticker { get; construct set; }

    public LinkPreviewTypeSticker (
        Sticker sticker
    ) {
        Object (
            sticker: sticker,
            tdlib_type: "linkPreviewTypeSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a sticker set
 */
public class TDLib.LinkPreviewTypeStickerSet : LinkPreviewType {

    /**
     * Up to 4 stickers from the sticker set
     */
    public Gee.ArrayList<Sticker?> stickers { get; construct set; default = new Gee.ArrayList<Sticker?> (); }

    public LinkPreviewTypeStickerSet (
        Gee.ArrayList<Sticker?> stickers
    ) {
        Object (
            stickers: stickers,
            tdlib_type: "linkPreviewTypeStickerSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a story. Link preview  is unavailable
 */
public class TDLib.LinkPreviewTypeStory : LinkPreviewType {

    /**
     * The identifier of the chat that posted the story
     */
    public int64 story_sender_chat_id { get; construct set; }

    /**
     * Story identifier
     */
    public int32 story_id { get; construct set; }

    public LinkPreviewTypeStory (
        int64 story_sender_chat_id,
        int32 story_id
    ) {
        Object (
            story_sender_chat_id: story_sender_chat_id,
            story_id: story_id,
            tdlib_type: "linkPreviewTypeStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to boost a supergroup chat
 */
public class TDLib.LinkPreviewTypeSupergroupBoost : LinkPreviewType {

    /**
     * Photo of the chat; may be null
     */
    public ChatPhoto? photo { get; construct set; }

    public LinkPreviewTypeSupergroupBoost (
        ChatPhoto? photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "linkPreviewTypeSupergroupBoost",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a cloud theme. TDLib has no theme support yet
 */
public class TDLib.LinkPreviewTypeTheme : LinkPreviewType {

    /**
     * The list of files with theme description
     */
    public Gee.ArrayList<Document?> documents { get; construct set; default = new Gee.ArrayList<Document?> (); }

    /**
     * Settings for the cloud theme; may be null if unknown
     */
    public ThemeSettings? settings { get; construct set; }

    public LinkPreviewTypeTheme (
        Gee.ArrayList<Document?> documents,
        ThemeSettings? settings
    ) {
        Object (
            documents: documents,
            settings: settings,
            tdlib_type: "linkPreviewTypeTheme",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link preview type is unsupported yet
 */
public class TDLib.LinkPreviewTypeUnsupported : LinkPreviewType {

    public LinkPreviewTypeUnsupported () {
        Object (
            tdlib_type: "linkPreviewTypeUnsupported",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to an upgraded gift
 */
public class TDLib.LinkPreviewTypeUpgradedGift : LinkPreviewType {

    /**
     * The gift
     */
    public UpgradedGift gift { get; construct set; }

    public LinkPreviewTypeUpgradedGift (
        UpgradedGift gift
    ) {
        Object (
            gift: gift,
            tdlib_type: "linkPreviewTypeUpgradedGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a user
 */
public class TDLib.LinkPreviewTypeUser : LinkPreviewType {

    /**
     * Photo of the user; may be null if none
     */
    public ChatPhoto? photo { get; construct set; }

    /**
     * True, if the user is a bot
     */
    public bool is_bot { get; construct set; }

    public LinkPreviewTypeUser (
        ChatPhoto? photo,
        bool is_bot
    ) {
        Object (
            photo: photo,
            is_bot: is_bot,
            tdlib_type: "linkPreviewTypeUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a video
 */
public class TDLib.LinkPreviewTypeVideo : LinkPreviewType {

    /**
     * The video description
     */
    public Video video { get; construct set; }

    public LinkPreviewTypeVideo (
        Video video
    ) {
        Object (
            video: video,
            tdlib_type: "linkPreviewTypeVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a video chat
 */
public class TDLib.LinkPreviewTypeVideoChat : LinkPreviewType {

    /**
     * Photo of the chat with the video chat; may be null if none
     */
    public ChatPhoto? photo { get; construct set; }

    /**
     * True, if the video chat is expected to be a live stream in a channel
     * or a broadcast group
     */
    public bool is_live_stream { get; construct set; }

    public LinkPreviewTypeVideoChat (
        ChatPhoto? photo,
        bool is_live_stream
    ) {
        Object (
            photo: photo,
            is_live_stream: is_live_stream,
            tdlib_type: "linkPreviewTypeVideoChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a video note message
 */
public class TDLib.LinkPreviewTypeVideoNote : LinkPreviewType {

    /**
     * The video note
     */
    public VideoNote video_note { get; construct set; }

    public LinkPreviewTypeVideoNote (
        VideoNote video_note
    ) {
        Object (
            video_note: video_note,
            tdlib_type: "linkPreviewTypeVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a voice note message
 */
public class TDLib.LinkPreviewTypeVoiceNote : LinkPreviewType {

    /**
     * The voice note
     */
    public VoiceNote voice_note { get; construct set; }

    public LinkPreviewTypeVoiceNote (
        VoiceNote voice_note
    ) {
        Object (
            voice_note: voice_note,
            tdlib_type: "linkPreviewTypeVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The link is a link to a Web App
 */
public class TDLib.LinkPreviewTypeWebApp : LinkPreviewType {

    /**
     * Web App photo; may be null if none
     */
    public Photo? photo { get; construct set; }

    public LinkPreviewTypeWebApp (
        Photo? photo
    ) {
        Object (
            photo: photo,
            tdlib_type: "linkPreviewTypeWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
