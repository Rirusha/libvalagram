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
 * Represents a single result of an inline query; for bots only
 */
public abstract class TDLib.InputInlineQueryResult : Error {}

/**
 * Represents a link to an animated GIF or an animated (i.e., without
 * sound) H.264/MPEG-4 AVC video
 */
public class TDLib.InputInlineQueryResultAnimation : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Title of the query result
     */
    public string title { get; construct set; }

    /**
     * URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists
     */
    public string thumbnail_url { get; construct set; }

    /**
     * MIME type of the video thumbnail. If non-empty, must be one of
     * "image/jpeg", "image/gif" and "video/mp4"
     */
    public string thumbnail_mime_type { get; construct set; }

    /**
     * The URL of the video file (file size must not exceed 1MB)
     */
    public string video_url { get; construct set; }

    /**
     * MIME type of the video file. Must be one of "image/gif" and
     * "video/mp4"
     */
    public string video_mime_type { get; construct set; }

    /**
     * Duration of the video, in seconds
     */
    public int32 video_duration { get; construct set; }

    /**
     * Width of the video
     */
    public int32 video_width { get; construct set; }

    /**
     * Height of the video
     */
    public int32 video_height { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessageAnimation, inputMessageInvoice,
     * inputMessageLocation, inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultAnimation (
        string id_,
        string title,
        string thumbnail_url,
        string thumbnail_mime_type,
        string video_url,
        string video_mime_type,
        int32 video_duration,
        int32 video_width,
        int32 video_height,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            title: title,
            thumbnail_url: thumbnail_url,
            thumbnail_mime_type: thumbnail_mime_type,
            video_url: video_url,
            video_mime_type: video_mime_type,
            video_duration: video_duration,
            video_width: video_width,
            video_height: video_height,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a link to an article or web page
 */
public class TDLib.InputInlineQueryResultArticle : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * URL of the result, if it exists
     */
    public string url { get; construct set; }

    /**
     * Title of the result
     */
    public string title { get; construct set; }

    /**
     * A short description of the result
     */
    public string description { get; construct set; }

    /**
     * URL of the result thumbnail, if it exists
     */
    public string thumbnail_url { get; construct set; }

    /**
     * Thumbnail width, if known
     */
    public int32 thumbnail_width { get; construct set; }

    /**
     * Thumbnail height, if known
     */
    public int32 thumbnail_height { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessageInvoice, inputMessageLocation,
     * inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultArticle (
        string id_,
        string url,
        string title,
        string description,
        string thumbnail_url,
        int32 thumbnail_width,
        int32 thumbnail_height,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            url: url,
            title: title,
            description: description,
            thumbnail_url: thumbnail_url,
            thumbnail_width: thumbnail_width,
            thumbnail_height: thumbnail_height,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultArticle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a link to an MP3 audio file
 */
public class TDLib.InputInlineQueryResultAudio : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Title of the audio file
     */
    public string title { get; construct set; }

    /**
     * Performer of the audio file
     */
    public string performer { get; construct set; }

    /**
     * The URL of the audio file
     */
    public string audio_url { get; construct set; }

    /**
     * Audio file duration, in seconds
     */
    public int32 audio_duration { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessageAudio, inputMessageInvoice,
     * inputMessageLocation, inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultAudio (
        string id_,
        string title,
        string performer,
        string audio_url,
        int32 audio_duration,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            title: title,
            performer: performer,
            audio_url: audio_url,
            audio_duration: audio_duration,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a user contact
 */
public class TDLib.InputInlineQueryResultContact : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * User contact
     */
    public Contact contact { get; construct set; }

    /**
     * URL of the result thumbnail, if it exists
     */
    public string thumbnail_url { get; construct set; }

    /**
     * Thumbnail width, if known
     */
    public int32 thumbnail_width { get; construct set; }

    /**
     * Thumbnail height, if known
     */
    public int32 thumbnail_height { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessageInvoice, inputMessageLocation,
     * inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultContact (
        string id_,
        Contact contact,
        string thumbnail_url,
        int32 thumbnail_width,
        int32 thumbnail_height,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            contact: contact,
            thumbnail_url: thumbnail_url,
            thumbnail_width: thumbnail_width,
            thumbnail_height: thumbnail_height,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultContact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a link to a file
 */
public class TDLib.InputInlineQueryResultDocument : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Title of the resulting file
     */
    public string title { get; construct set; }

    /**
     * Short description of the result, if known
     */
    public string description { get; construct set; }

    /**
     * URL of the file
     */
    public string document_url { get; construct set; }

    /**
     * MIME type of the file content; only "application/pdf" and
     * "application/zip" are currently allowed
     */
    public string mime_type { get; construct set; }

    /**
     * The URL of the file thumbnail, if it exists
     */
    public string thumbnail_url { get; construct set; }

    /**
     * Width of the thumbnail
     */
    public int32 thumbnail_width { get; construct set; }

    /**
     * Height of the thumbnail
     */
    public int32 thumbnail_height { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessageDocument, inputMessageInvoice,
     * inputMessageLocation, inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultDocument (
        string id_,
        string title,
        string description,
        string document_url,
        string mime_type,
        string thumbnail_url,
        int32 thumbnail_width,
        int32 thumbnail_height,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            title: title,
            description: description,
            document_url: document_url,
            mime_type: mime_type,
            thumbnail_url: thumbnail_url,
            thumbnail_width: thumbnail_width,
            thumbnail_height: thumbnail_height,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a game
 */
public class TDLib.InputInlineQueryResultGame : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Short name of the game
     */
    public string game_short_name { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    public InputInlineQueryResultGame (
        string id_,
        string game_short_name,
        ReplyMarkup reply_markup
    ) {
        Object (
            id_: id_,
            game_short_name: game_short_name,
            reply_markup: reply_markup,
            tdlib_type: "inputInlineQueryResultGame",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a point on the map
 */
public class TDLib.InputInlineQueryResultLocation : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Location result
     */
    public Location location { get; construct set; }

    /**
     * Amount of time relative to the message sent time until the location
     * can be updated, in seconds
     */
    public int32 live_period { get; construct set; }

    /**
     * Title of the result
     */
    public string title { get; construct set; }

    /**
     * URL of the result thumbnail, if it exists
     */
    public string thumbnail_url { get; construct set; }

    /**
     * Thumbnail width, if known
     */
    public int32 thumbnail_width { get; construct set; }

    /**
     * Thumbnail height, if known
     */
    public int32 thumbnail_height { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessageInvoice, inputMessageLocation,
     * inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultLocation (
        string id_,
        Location location,
        int32 live_period,
        string title,
        string thumbnail_url,
        int32 thumbnail_width,
        int32 thumbnail_height,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            location: location,
            live_period: live_period,
            title: title,
            thumbnail_url: thumbnail_url,
            thumbnail_width: thumbnail_width,
            thumbnail_height: thumbnail_height,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents link to a JPEG image
 */
public class TDLib.InputInlineQueryResultPhoto : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Title of the result, if known
     */
    public string title { get; construct set; }

    /**
     * A short description of the result, if known
     */
    public string description { get; construct set; }

    /**
     * URL of the photo thumbnail, if it exists
     */
    public string thumbnail_url { get; construct set; }

    /**
     * The URL of the JPEG photo (photo size must not exceed 5MB)
     */
    public string photo_url { get; construct set; }

    /**
     * Width of the photo
     */
    public int32 photo_width { get; construct set; }

    /**
     * Height of the photo
     */
    public int32 photo_height { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessagePhoto, inputMessageInvoice,
     * inputMessageLocation, inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultPhoto (
        string id_,
        string title,
        string description,
        string thumbnail_url,
        string photo_url,
        int32 photo_width,
        int32 photo_height,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            title: title,
            description: description,
            thumbnail_url: thumbnail_url,
            photo_url: photo_url,
            photo_width: photo_width,
            photo_height: photo_height,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a link to a WEBP, TGS, or WEBM sticker
 */
public class TDLib.InputInlineQueryResultSticker : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * URL of the sticker thumbnail, if it exists
     */
    public string thumbnail_url { get; construct set; }

    /**
     * The URL of the WEBP, TGS, or WEBM sticker (sticker file size must not
     * exceed 5MB)
     */
    public string sticker_url { get; construct set; }

    /**
     * Width of the sticker
     */
    public int32 sticker_width { get; construct set; }

    /**
     * Height of the sticker
     */
    public int32 sticker_height { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessageSticker, inputMessageInvoice,
     * inputMessageLocation, inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultSticker (
        string id_,
        string thumbnail_url,
        string sticker_url,
        int32 sticker_width,
        int32 sticker_height,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            thumbnail_url: thumbnail_url,
            sticker_url: sticker_url,
            sticker_width: sticker_width,
            sticker_height: sticker_height,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents information about a venue
 */
public class TDLib.InputInlineQueryResultVenue : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Venue result
     */
    public Venue venue { get; construct set; }

    /**
     * URL of the result thumbnail, if it exists
     */
    public string thumbnail_url { get; construct set; }

    /**
     * Thumbnail width, if known
     */
    public int32 thumbnail_width { get; construct set; }

    /**
     * Thumbnail height, if known
     */
    public int32 thumbnail_height { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessageInvoice, inputMessageLocation,
     * inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultVenue (
        string id_,
        Venue venue,
        string thumbnail_url,
        int32 thumbnail_width,
        int32 thumbnail_height,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            venue: venue,
            thumbnail_url: thumbnail_url,
            thumbnail_width: thumbnail_width,
            thumbnail_height: thumbnail_height,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultVenue",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a link to a page containing an embedded video player or a
 * video file
 */
public class TDLib.InputInlineQueryResultVideo : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Title of the result
     */
    public string title { get; construct set; }

    /**
     * A short description of the result, if known
     */
    public string description { get; construct set; }

    /**
     * The URL of the video thumbnail (JPEG), if it exists
     */
    public string thumbnail_url { get; construct set; }

    /**
     * URL of the embedded video player or video file
     */
    public string video_url { get; construct set; }

    /**
     * MIME type of the content of the video URL, only "text/html" or
     * "video/mp4" are currently supported
     */
    public string mime_type { get; construct set; }

    /**
     * Width of the video
     */
    public int32 video_width { get; construct set; }

    /**
     * Height of the video
     */
    public int32 video_height { get; construct set; }

    /**
     * Video duration, in seconds
     */
    public int32 video_duration { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessageVideo, inputMessageInvoice,
     * inputMessageLocation, inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultVideo (
        string id_,
        string title,
        string description,
        string thumbnail_url,
        string video_url,
        string mime_type,
        int32 video_width,
        int32 video_height,
        int32 video_duration,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            title: title,
            description: description,
            thumbnail_url: thumbnail_url,
            video_url: video_url,
            mime_type: mime_type,
            video_width: video_width,
            video_height: video_height,
            video_duration: video_duration,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a link to an opus-encoded audio file within an OGG
 * container, single channel audio
 */
public class TDLib.InputInlineQueryResultVoiceNote : InputInlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Title of the voice note
     */
    public string title { get; construct set; }

    /**
     * The URL of the voice note file
     */
    public string voice_note_url { get; construct set; }

    /**
     * Duration of the voice note, in seconds
     */
    public int32 voice_note_duration { get; construct set; }

    /**
     * The message reply markup; pass null if none. Must be of type
     * replyMarkupInlineKeyboard or null
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * The content of the message to be sent. Must be one of the following
     * types: inputMessageText, inputMessageVoiceNote, inputMessageInvoice,
     * inputMessageLocation, inputMessageVenue or inputMessageContact
     */
    public InputMessageContent input_message_content { get; construct set; }

    public InputInlineQueryResultVoiceNote (
        string id_,
        string title,
        string voice_note_url,
        int32 voice_note_duration,
        ReplyMarkup reply_markup,
        InputMessageContent input_message_content
    ) {
        Object (
            id_: id_,
            title: title,
            voice_note_url: voice_note_url,
            voice_note_duration: voice_note_duration,
            reply_markup: reply_markup,
            input_message_content: input_message_content,
            tdlib_type: "inputInlineQueryResultVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
