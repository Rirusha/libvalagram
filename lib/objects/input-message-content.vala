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
 * The content of a message to send
 */
public abstract class TDLib.InputMessageContent : Error {}

/**
 * A text message
 */
public class TDLib.InputMessageText : InputMessageContent {

    /**
     * Formatted text to be sent; 0-getOption("message_text_length_max")
     * characters. Only Bold, Italic, Underline, Strikethrough, Spoiler,
     * CustomEmoji, BlockQuote, ExpandableBlockQuote,
     * Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be
     * specified manually
     */
    public FormattedText text { get; construct set; }

    /**
     * Options to be used for generation of a link preview; may be null if
     * none; pass null to use default link preview options
     */
    public LinkPreviewOptions? link_preview_options { get; construct set; }

    /**
     * True, if a chat message draft must be deleted
     */
    public bool clear_draft { get; construct set; }

    public InputMessageText (
        FormattedText text,
        LinkPreviewOptions? link_preview_options,
        bool clear_draft
    ) {
        Object (
            text: text,
            link_preview_options: link_preview_options,
            clear_draft: clear_draft,
            tdlib_type: "inputMessageText",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An animation message (GIF-style).
 */
public class TDLib.InputMessageAnimation : InputMessageContent {

    /**
     * Animation file to be sent
     */
    public InputFile animation { get; construct set; }

    /**
     * Animation thumbnail; pass null to skip thumbnail uploading
     */
    public InputThumbnail thumbnail { get; construct set; }

    /**
     * File identifiers of the stickers added to the animation, if applicable
     */
    public Gee.ArrayList<int32?> added_sticker_file_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * Duration of the animation, in seconds
     */
    public int32 duration { get; construct set; }

    /**
     * Width of the animation; may be replaced by the server
     */
    public int32 width { get; construct set; }

    /**
     * Height of the animation; may be replaced by the server
     */
    public int32 height { get; construct set; }

    /**
     * Animation caption; pass null to use an empty caption;
     * 0-getOption("message_caption_length_max") characters
     */
    public FormattedText caption { get; construct set; }

    /**
     * True, if the caption must be shown above the animation; otherwise, the
     * caption must be shown below the animation; not supported in secret
     * chats
     */
    public bool show_caption_above_media { get; construct set; }

    /**
     * True, if the animation preview must be covered by a spoiler animation;
     * not supported in secret chats
     */
    public bool has_spoiler { get; construct set; }

    public InputMessageAnimation (
        InputFile animation,
        InputThumbnail thumbnail,
        Gee.ArrayList<int32?> added_sticker_file_ids,
        int32 duration,
        int32 width,
        int32 height,
        FormattedText caption,
        bool show_caption_above_media,
        bool has_spoiler
    ) {
        Object (
            animation: animation,
            thumbnail: thumbnail,
            added_sticker_file_ids: added_sticker_file_ids,
            duration: duration,
            width: width,
            height: height,
            caption: caption,
            show_caption_above_media: show_caption_above_media,
            has_spoiler: has_spoiler,
            tdlib_type: "inputMessageAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An audio message
 */
public class TDLib.InputMessageAudio : InputMessageContent {

    /**
     * Audio file to be sent
     */
    public InputFile audio { get; construct set; }

    /**
     * Thumbnail of the cover for the album; pass null to skip thumbnail
     * uploading
     */
    public InputThumbnail album_cover_thumbnail { get; construct set; }

    /**
     * Duration of the audio, in seconds; may be replaced by the server
     */
    public int32 duration { get; construct set; }

    /**
     * Title of the audio; 0-64 characters; may be replaced by the server
     */
    public string title { get; construct set; }

    /**
     * Performer of the audio; 0-64 characters, may be replaced by the server
     */
    public string performer { get; construct set; }

    /**
     * Audio caption; pass null to use an empty caption;
     * 0-getOption("message_caption_length_max") characters
     */
    public FormattedText caption { get; construct set; }

    public InputMessageAudio (
        InputFile audio,
        InputThumbnail album_cover_thumbnail,
        int32 duration,
        string title,
        string performer,
        FormattedText caption
    ) {
        Object (
            audio: audio,
            album_cover_thumbnail: album_cover_thumbnail,
            duration: duration,
            title: title,
            performer: performer,
            caption: caption,
            tdlib_type: "inputMessageAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A document message (general file)
 */
public class TDLib.InputMessageDocument : InputMessageContent {

    /**
     * Document to be sent
     */
    public InputFile document { get; construct set; }

    /**
     * Document thumbnail; pass null to skip thumbnail uploading
     */
    public InputThumbnail thumbnail { get; construct set; }

    /**
     * Pass true to disable automatic file type detection and send the
     * document as a file. Always true for files sent to secret chats
     */
    public bool disable_content_type_detection { get; construct set; }

    /**
     * Document caption; pass null to use an empty caption;
     * 0-getOption("message_caption_length_max") characters
     */
    public FormattedText caption { get; construct set; }

    public InputMessageDocument (
        InputFile document,
        InputThumbnail thumbnail,
        bool disable_content_type_detection,
        FormattedText caption
    ) {
        Object (
            document: document,
            thumbnail: thumbnail,
            disable_content_type_detection: disable_content_type_detection,
            caption: caption,
            tdlib_type: "inputMessageDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with paid media; can be used only in channel chats with
 * supergroupFullInfo.has_paid_media_allowed
 */
public class TDLib.InputMessagePaidMedia : InputMessageContent {

    /**
     * The number of Telegram Stars that must be paid to see the media;
     * 1-getOption("paid_media_message_star_count_max")
     */
    public int64 star_count { get; construct set; }

    /**
     * The content of the paid media
     */
    public Gee.ArrayList<InputPaidMedia?> paid_media { get; construct set; default = new Gee.ArrayList<InputPaidMedia?> (); }

    /**
     * Message caption; pass null to use an empty caption;
     * 0-getOption("message_caption_length_max") characters
     */
    public FormattedText caption { get; construct set; }

    /**
     * True, if the caption must be shown above the media; otherwise, the
     * caption must be shown below the media; not supported in secret chats
     */
    public bool show_caption_above_media { get; construct set; }

    /**
     * Bot-provided data for the paid media; bots only
     */
    public string payload { get; construct set; }

    public InputMessagePaidMedia (
        int64 star_count,
        Gee.ArrayList<InputPaidMedia?> paid_media,
        FormattedText caption,
        bool show_caption_above_media,
        string payload
    ) {
        Object (
            star_count: star_count,
            paid_media: paid_media,
            caption: caption,
            show_caption_above_media: show_caption_above_media,
            payload: payload,
            tdlib_type: "inputMessagePaidMedia",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A photo message
 */
public class TDLib.InputMessagePhoto : InputMessageContent {

    /**
     * Photo to send. The photo must be at most 10 MB in size. The photo's
     * width and height must not exceed 10000 in total. Width and height
     * ratio must be at most 20
     */
    public InputFile photo { get; construct set; }

    /**
     * Photo thumbnail to be sent; pass null to skip thumbnail uploading. The
     * thumbnail is sent to the other party only in secret chats
     */
    public InputThumbnail thumbnail { get; construct set; }

    /**
     * File identifiers of the stickers added to the photo, if applicable
     */
    public Gee.ArrayList<int32?> added_sticker_file_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * Photo width
     */
    public int32 width { get; construct set; }

    /**
     * Photo height
     */
    public int32 height { get; construct set; }

    /**
     * Photo caption; pass null to use an empty caption;
     * 0-getOption("message_caption_length_max") characters
     */
    public FormattedText caption { get; construct set; }

    /**
     * True, if the caption must be shown above the photo; otherwise, the
     * caption must be shown below the photo; not supported in secret chats
     */
    public bool show_caption_above_media { get; construct set; }

    /**
     * Photo self-destruct type; pass null if none; private chats only
     */
    public MessageSelfDestructType self_destruct_type { get; construct set; }

    /**
     * True, if the photo preview must be covered by a spoiler animation; not
     * supported in secret chats
     */
    public bool has_spoiler { get; construct set; }

    public InputMessagePhoto (
        InputFile photo,
        InputThumbnail thumbnail,
        Gee.ArrayList<int32?> added_sticker_file_ids,
        int32 width,
        int32 height,
        FormattedText caption,
        bool show_caption_above_media,
        MessageSelfDestructType self_destruct_type,
        bool has_spoiler
    ) {
        Object (
            photo: photo,
            thumbnail: thumbnail,
            added_sticker_file_ids: added_sticker_file_ids,
            width: width,
            height: height,
            caption: caption,
            show_caption_above_media: show_caption_above_media,
            self_destruct_type: self_destruct_type,
            has_spoiler: has_spoiler,
            tdlib_type: "inputMessagePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A sticker message
 */
public class TDLib.InputMessageSticker : InputMessageContent {

    /**
     * Sticker to be sent
     */
    public InputFile sticker { get; construct set; }

    /**
     * Sticker thumbnail; pass null to skip thumbnail uploading
     */
    public InputThumbnail thumbnail { get; construct set; }

    /**
     * Sticker width
     */
    public int32 width { get; construct set; }

    /**
     * Sticker height
     */
    public int32 height { get; construct set; }

    /**
     * Emoji used to choose the sticker
     */
    public string emoji { get; construct set; }

    public InputMessageSticker (
        InputFile sticker,
        InputThumbnail thumbnail,
        int32 width,
        int32 height,
        string emoji
    ) {
        Object (
            sticker: sticker,
            thumbnail: thumbnail,
            width: width,
            height: height,
            emoji: emoji,
            tdlib_type: "inputMessageSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video message
 */
public class TDLib.InputMessageVideo : InputMessageContent {

    /**
     * Video to be sent. The video is expected to be re-encoded to MPEG4
     * format with H.264 codec by the sender
     */
    public InputFile video { get; construct set; }

    /**
     * Video thumbnail; pass null to skip thumbnail uploading
     */
    public InputThumbnail thumbnail { get; construct set; }

    /**
     * Cover of the video; pass null to skip cover uploading; not supported
     * in secret chats and for self-destructing messages
     */
    public InputFile cover { get; construct set; }

    /**
     * Timestamp from which the video playing must start, in seconds
     */
    public int32 start_timestamp { get; construct set; }

    /**
     * File identifiers of the stickers added to the video, if applicable
     */
    public Gee.ArrayList<int32?> added_sticker_file_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * Duration of the video, in seconds
     */
    public int32 duration { get; construct set; }

    /**
     * Video width
     */
    public int32 width { get; construct set; }

    /**
     * Video height
     */
    public int32 height { get; construct set; }

    /**
     * True, if the video is expected to be streamed
     */
    public bool supports_streaming { get; construct set; }

    /**
     * Video caption; pass null to use an empty caption;
     * 0-getOption("message_caption_length_max") characters
     */
    public FormattedText caption { get; construct set; }

    /**
     * True, if the caption must be shown above the video; otherwise, the
     * caption must be shown below the video; not supported in secret chats
     */
    public bool show_caption_above_media { get; construct set; }

    /**
     * Video self-destruct type; pass null if none; private chats only
     */
    public MessageSelfDestructType self_destruct_type { get; construct set; }

    /**
     * True, if the video preview must be covered by a spoiler animation; not
     * supported in secret chats
     */
    public bool has_spoiler { get; construct set; }

    public InputMessageVideo (
        InputFile video,
        InputThumbnail thumbnail,
        InputFile cover,
        int32 start_timestamp,
        Gee.ArrayList<int32?> added_sticker_file_ids,
        int32 duration,
        int32 width,
        int32 height,
        bool supports_streaming,
        FormattedText caption,
        bool show_caption_above_media,
        MessageSelfDestructType self_destruct_type,
        bool has_spoiler
    ) {
        Object (
            video: video,
            thumbnail: thumbnail,
            cover: cover,
            start_timestamp: start_timestamp,
            added_sticker_file_ids: added_sticker_file_ids,
            duration: duration,
            width: width,
            height: height,
            supports_streaming: supports_streaming,
            caption: caption,
            show_caption_above_media: show_caption_above_media,
            self_destruct_type: self_destruct_type,
            has_spoiler: has_spoiler,
            tdlib_type: "inputMessageVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A video note message
 */
public class TDLib.InputMessageVideoNote : InputMessageContent {

    /**
     * Video note to be sent. The video is expected to be encoded to MPEG4
     * format with H.264 codec and have no data outside of the visible circle
     */
    public InputFile video_note { get; construct set; }

    /**
     * Video thumbnail; may be null if empty; pass null to skip thumbnail
     * uploading
     */
    public InputThumbnail? thumbnail { get; construct set; }

    /**
     * Duration of the video, in seconds; 0-60
     */
    public int32 duration { get; construct set; }

    /**
     * Video width and height; must be positive and not greater than 640
     */
    public int32 length { get; construct set; }

    /**
     * Video note self-destruct type; may be null if none; pass null if none;
     * private chats only
     */
    public MessageSelfDestructType? self_destruct_type { get; construct set; }

    public InputMessageVideoNote (
        InputFile video_note,
        InputThumbnail? thumbnail,
        int32 duration,
        int32 length,
        MessageSelfDestructType? self_destruct_type
    ) {
        Object (
            video_note: video_note,
            thumbnail: thumbnail,
            duration: duration,
            length: length,
            self_destruct_type: self_destruct_type,
            tdlib_type: "inputMessageVideoNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A voice note message
 */
public class TDLib.InputMessageVoiceNote : InputMessageContent {

    /**
     * Voice note to be sent. The voice note must be encoded with the Opus
     * codec and stored inside an OGG container with a single audio channel,
     * or be in MP3 or M4A format as regular audio
     */
    public InputFile voice_note { get; construct set; }

    /**
     * Duration of the voice note, in seconds
     */
    public int32 duration { get; construct set; }

    /**
     * Waveform representation of the voice note in 5-bit format
     */
    public Bytes waveform { get; construct set; }

    /**
     * Voice note caption; may be null if empty; pass null to use an empty
     * caption; 0-getOption("message_caption_length_max") characters
     */
    public FormattedText? caption { get; construct set; }

    /**
     * Voice note self-destruct type; may be null if none; pass null if none;
     * private chats only
     */
    public MessageSelfDestructType? self_destruct_type { get; construct set; }

    public InputMessageVoiceNote (
        InputFile voice_note,
        int32 duration,
        Bytes waveform,
        FormattedText? caption,
        MessageSelfDestructType? self_destruct_type
    ) {
        Object (
            voice_note: voice_note,
            duration: duration,
            waveform: waveform,
            caption: caption,
            self_destruct_type: self_destruct_type,
            tdlib_type: "inputMessageVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a location
 */
public class TDLib.InputMessageLocation : InputMessageContent {

    /**
     * Location to be sent
     */
    public Location location { get; construct set; }

    /**
     * Period for which the location can be updated, in seconds; must be
     * between 60 and 86400 for a temporary live location, 0x7FFFFFFF for
     * permanent live location, and 0 otherwise
     */
    public int32 live_period { get; construct set; }

    /**
     * For live locations, a direction in which the location moves, in
     * degrees; 1-360. Pass 0 if unknown
     */
    public int32 heading { get; construct set; }

    /**
     * For live locations, a maximum distance to another chat member for
     * proximity alerts, in meters (0-100000). Pass 0 if the notification is
     * disabled. Can't be enabled in channels and Saved Messages
     */
    public int32 proximity_alert_radius { get; construct set; }

    public InputMessageLocation (
        Location location,
        int32 live_period,
        int32 heading,
        int32 proximity_alert_radius
    ) {
        Object (
            location: location,
            live_period: live_period,
            heading: heading,
            proximity_alert_radius: proximity_alert_radius,
            tdlib_type: "inputMessageLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with information about a venue
 */
public class TDLib.InputMessageVenue : InputMessageContent {

    /**
     * Venue to send
     */
    public Venue venue { get; construct set; }

    public InputMessageVenue (
        Venue venue
    ) {
        Object (
            venue: venue,
            tdlib_type: "inputMessageVenue",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message containing a user contact
 */
public class TDLib.InputMessageContact : InputMessageContent {

    /**
     * Contact to send
     */
    public Contact contact { get; construct set; }

    public InputMessageContact (
        Contact contact
    ) {
        Object (
            contact: contact,
            tdlib_type: "inputMessageContact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A dice message
 */
public class TDLib.InputMessageDice : InputMessageContent {

    /**
     * Emoji on which the dice throw animation is based
     */
    public string emoji { get; construct set; }

    /**
     * True, if the chat message draft must be deleted
     */
    public bool clear_draft { get; construct set; }

    public InputMessageDice (
        string emoji,
        bool clear_draft
    ) {
        Object (
            emoji: emoji,
            clear_draft: clear_draft,
            tdlib_type: "inputMessageDice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a game; not supported for channels or secret chats
 */
public class TDLib.InputMessageGame : InputMessageContent {

    /**
     * User identifier of the bot that owns the game
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Short name of the game
     */
    public string game_short_name { get; construct set; }

    public InputMessageGame (
        int64 bot_user_id,
        string game_short_name
    ) {
        Object (
            bot_user_id: bot_user_id,
            game_short_name: game_short_name,
            tdlib_type: "inputMessageGame",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with an invoice; can be used only by bots
 */
public class TDLib.InputMessageInvoice : InputMessageContent {

    /**
     * Invoice
     */
    public Invoice invoice { get; construct set; }

    /**
     * Product title; 1-32 characters
     */
    public string title { get; construct set; }

    /**
     * Product description; 0-255 characters
     */
    public string description { get; construct set; }

    /**
     * Product photo URL; optional
     */
    public string photo_url { get; construct set; }

    /**
     * Product photo size
     */
    public int32 photo_size { get; construct set; }

    /**
     * Product photo width
     */
    public int32 photo_width { get; construct set; }

    /**
     * Product photo height
     */
    public int32 photo_height { get; construct set; }

    /**
     * The invoice payload
     */
    public Bytes payload { get; construct set; }

    /**
     * Payment provider token; may be empty for payments in Telegram Stars
     */
    public string provider_token { get; construct set; }

    /**
     * JSON-encoded data about the invoice, which will be shared with the
     * payment provider
     */
    public string provider_data { get; construct set; }

    /**
     * Unique invoice bot deep link parameter for the generation of this
     * invoice. If empty, it would be possible to pay directly from forwards
     * of the invoice message
     */
    public string start_parameter { get; construct set; }

    /**
     * The content of paid media attached to the invoice; pass null if none
     */
    public InputPaidMedia paid_media { get; construct set; }

    /**
     * Paid media caption; pass null to use an empty caption;
     * 0-getOption("message_caption_length_max") characters
     */
    public FormattedText paid_media_caption { get; construct set; }

    public InputMessageInvoice (
        Invoice invoice,
        string title,
        string description,
        string photo_url,
        int32 photo_size,
        int32 photo_width,
        int32 photo_height,
        Bytes payload,
        string provider_token,
        string provider_data,
        string start_parameter,
        InputPaidMedia paid_media,
        FormattedText paid_media_caption
    ) {
        Object (
            invoice: invoice,
            title: title,
            description: description,
            photo_url: photo_url,
            photo_size: photo_size,
            photo_width: photo_width,
            photo_height: photo_height,
            payload: payload,
            provider_token: provider_token,
            provider_data: provider_data,
            start_parameter: start_parameter,
            paid_media: paid_media,
            paid_media_caption: paid_media_caption,
            tdlib_type: "inputMessageInvoice",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a poll. Polls can't be sent to secret chats. Polls can
 * be sent only to a private chat with a bot
 */
public class TDLib.InputMessagePoll : InputMessageContent {

    /**
     * Poll question; 1-255 characters (up to 300 characters for bots). Only
     * custom emoji entities are allowed to be added and only by Premium
     * users
     */
    public FormattedText question { get; construct set; }

    /**
     * List of poll answer options, 2-10 strings 1-100 characters each. Only
     * custom emoji entities are allowed to be added and only by Premium
     * users
     */
    public Gee.ArrayList<FormattedText?> options { get; construct set; default = new Gee.ArrayList<FormattedText?> (); }

    /**
     * True, if the poll voters are anonymous. Non-anonymous polls can't be
     * sent or forwarded to channels
     */
    public bool is_anonymous { get; construct set; }

    /**
     * Type of the poll
     */
    public PollType type_ { get; construct set; }

    /**
     * Amount of time the poll will be active after creation, in seconds; for
     * bots only
     */
    public int32 open_period { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the poll will automatically be
     * closed; for bots only
     */
    public int32 close_date { get; construct set; }

    /**
     * True, if the poll needs to be sent already closed; for bots only
     */
    public bool is_closed { get; construct set; }

    public InputMessagePoll (
        FormattedText question,
        Gee.ArrayList<FormattedText?> options,
        bool is_anonymous,
        PollType type_,
        int32 open_period,
        int32 close_date,
        bool is_closed
    ) {
        Object (
            question: question,
            options: options,
            is_anonymous: is_anonymous,
            type_: type_,
            open_period: open_period,
            close_date: close_date,
            is_closed: is_closed,
            tdlib_type: "inputMessagePoll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A message with a forwarded story. Stories can't be forwarded to secret
 * chats. A story can be forwarded only if story.can_be_forwarded
 */
public class TDLib.InputMessageStory : InputMessageContent {

    /**
     * Identifier of the chat that posted the story
     */
    public int64 story_poster_chat_id { get; construct set; }

    /**
     * Story identifier
     */
    public int32 story_id { get; construct set; }

    public InputMessageStory (
        int64 story_poster_chat_id,
        int32 story_id
    ) {
        Object (
            story_poster_chat_id: story_poster_chat_id,
            story_id: story_id,
            tdlib_type: "inputMessageStory",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A forwarded message
 */
public class TDLib.InputMessageForwarded : InputMessageContent {

    /**
     * Identifier for the chat this forwarded message came from
     */
    public int64 from_chat_id { get; construct set; }

    /**
     * Identifier of the message to forward. A message can be forwarded only
     * if messageProperties.can_be_forwarded
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass true if a game message is being shared from a launched game;
     * applies only to game messages
     */
    public bool in_game_share { get; construct set; }

    /**
     * Pass true to replace video start timestamp in the forwarded message
     */
    public bool replace_video_start_timestamp { get; construct set; }

    /**
     * The new video start timestamp; ignored if
     * replace_video_start_timestamp == false
     */
    public int32 new_video_start_timestamp { get; construct set; }

    /**
     * Options to be used to copy content of the message without reference to
     * the original sender; pass null to forward the message as usual
     */
    public MessageCopyOptions copy_options { get; construct set; }

    public InputMessageForwarded (
        int64 from_chat_id,
        int64 message_id,
        bool in_game_share,
        bool replace_video_start_timestamp,
        int32 new_video_start_timestamp,
        MessageCopyOptions copy_options
    ) {
        Object (
            from_chat_id: from_chat_id,
            message_id: message_id,
            in_game_share: in_game_share,
            replace_video_start_timestamp: replace_video_start_timestamp,
            new_video_start_timestamp: new_video_start_timestamp,
            copy_options: copy_options,
            tdlib_type: "inputMessageForwarded",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
