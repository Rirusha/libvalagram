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
 * Represents a single result of an inline query
 */
public abstract class TDLib.InlineQueryResult : Error {}

/**
 * Represents a link to an article or web page
 */
public class TDLib.InlineQueryResultArticle : InlineQueryResult {

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
     * Result thumbnail in JPEG format; may be null
     */
    public Thumbnail? thumbnail { get; construct set; }

    public InlineQueryResultArticle (
        string id_,
        string url,
        string title,
        string description,
        Thumbnail? thumbnail
    ) {
        Object (
            id_: id_,
            url: url,
            title: title,
            description: description,
            thumbnail: thumbnail,
            tdlib_type: "inlineQueryResultArticle",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a user contact
 */
public class TDLib.InlineQueryResultContact : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * A user contact
     */
    public Contact contact { get; construct set; }

    /**
     * Result thumbnail in JPEG format; may be null
     */
    public Thumbnail? thumbnail { get; construct set; }

    public InlineQueryResultContact (
        string id_,
        Contact contact,
        Thumbnail? thumbnail
    ) {
        Object (
            id_: id_,
            contact: contact,
            thumbnail: thumbnail,
            tdlib_type: "inlineQueryResultContact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a point on the map
 */
public class TDLib.InlineQueryResultLocation : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Location result
     */
    public Location location { get; construct set; }

    /**
     * Title of the result
     */
    public string title { get; construct set; }

    /**
     * Result thumbnail in JPEG format; may be null
     */
    public Thumbnail? thumbnail { get; construct set; }

    public InlineQueryResultLocation (
        string id_,
        Location location,
        string title,
        Thumbnail? thumbnail
    ) {
        Object (
            id_: id_,
            location: location,
            title: title,
            thumbnail: thumbnail,
            tdlib_type: "inlineQueryResultLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents information about a venue
 */
public class TDLib.InlineQueryResultVenue : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Venue result
     */
    public Venue venue { get; construct set; }

    /**
     * Result thumbnail in JPEG format; may be null
     */
    public Thumbnail? thumbnail { get; construct set; }

    public InlineQueryResultVenue (
        string id_,
        Venue venue,
        Thumbnail? thumbnail
    ) {
        Object (
            id_: id_,
            venue: venue,
            thumbnail: thumbnail,
            tdlib_type: "inlineQueryResultVenue",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents information about a game
 */
public class TDLib.InlineQueryResultGame : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Game result
     */
    public Game game { get; construct set; }

    public InlineQueryResultGame (
        string id_,
        Game game
    ) {
        Object (
            id_: id_,
            game: game,
            tdlib_type: "inlineQueryResultGame",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents an animation file
 */
public class TDLib.InlineQueryResultAnimation : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Animation file
     */
    public Animation animation { get; construct set; }

    /**
     * Animation title
     */
    public string title { get; construct set; }

    public InlineQueryResultAnimation (
        string id_,
        Animation animation,
        string title
    ) {
        Object (
            id_: id_,
            animation: animation,
            title: title,
            tdlib_type: "inlineQueryResultAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents an audio file
 */
public class TDLib.InlineQueryResultAudio : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Audio file
     */
    public Audio audio { get; construct set; }

    public InlineQueryResultAudio (
        string id_,
        Audio audio
    ) {
        Object (
            id_: id_,
            audio: audio,
            tdlib_type: "inlineQueryResultAudio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a document
 */
public class TDLib.InlineQueryResultDocument : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Document
     */
    public Document document { get; construct set; }

    /**
     * Document title
     */
    public string title { get; construct set; }

    /**
     * Document description
     */
    public string description { get; construct set; }

    public InlineQueryResultDocument (
        string id_,
        Document document,
        string title,
        string description
    ) {
        Object (
            id_: id_,
            document: document,
            title: title,
            description: description,
            tdlib_type: "inlineQueryResultDocument",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a photo
 */
public class TDLib.InlineQueryResultPhoto : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Photo
     */
    public Photo photo { get; construct set; }

    /**
     * Title of the result, if known
     */
    public string title { get; construct set; }

    /**
     * A short description of the result, if known
     */
    public string description { get; construct set; }

    public InlineQueryResultPhoto (
        string id_,
        Photo photo,
        string title,
        string description
    ) {
        Object (
            id_: id_,
            photo: photo,
            title: title,
            description: description,
            tdlib_type: "inlineQueryResultPhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a sticker
 */
public class TDLib.InlineQueryResultSticker : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Sticker
     */
    public Sticker sticker { get; construct set; }

    public InlineQueryResultSticker (
        string id_,
        Sticker sticker
    ) {
        Object (
            id_: id_,
            sticker: sticker,
            tdlib_type: "inlineQueryResultSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a video
 */
public class TDLib.InlineQueryResultVideo : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Video
     */
    public Video video { get; construct set; }

    /**
     * Title of the video
     */
    public string title { get; construct set; }

    /**
     * Description of the video
     */
    public string description { get; construct set; }

    public InlineQueryResultVideo (
        string id_,
        Video video,
        string title,
        string description
    ) {
        Object (
            id_: id_,
            video: video,
            title: title,
            description: description,
            tdlib_type: "inlineQueryResultVideo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a voice note
 */
public class TDLib.InlineQueryResultVoiceNote : InlineQueryResult {

    /**
     * Unique identifier of the query result
     */
    public string id_ { get; construct set; }

    /**
     * Voice note
     */
    public VoiceNote voice_note { get; construct set; }

    /**
     * Title of the voice note
     */
    public string title { get; construct set; }

    public InlineQueryResultVoiceNote (
        string id_,
        VoiceNote voice_note,
        string title
    ) {
        Object (
            id_: id_,
            voice_note: voice_note,
            title: title,
            tdlib_type: "inlineQueryResultVoiceNote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
