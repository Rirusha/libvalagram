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
 * Describes type of clickable area on a story media
 */
public abstract class TDLib.StoryAreaType : Error {}

/**
 * An area pointing to a location
 */
public class TDLib.StoryAreaTypeLocation : StoryAreaType {

    /**
     * The location
     */
    public Location location { get; construct set; }

    /**
     * Address of the location; may be null if unknown
     */
    public LocationAddress? address { get; construct set; }

    public StoryAreaTypeLocation (
        Location location,
        LocationAddress? address
    ) {
        Object (
            location: location,
            address: address,
            tdlib_type: "storyAreaTypeLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area pointing to a venue
 */
public class TDLib.StoryAreaTypeVenue : StoryAreaType {

    /**
     * Information about the venue
     */
    public Venue venue { get; construct set; }

    public StoryAreaTypeVenue (
        Venue venue
    ) {
        Object (
            venue: venue,
            tdlib_type: "storyAreaTypeVenue",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area pointing to a suggested reaction. App needs to show a
 * clickable reaction on the area and call setStoryReaction when the are
 * is clicked
 */
public class TDLib.StoryAreaTypeSuggestedReaction : StoryAreaType {

    /**
     * Type of the reaction
     */
    public ReactionType reaction_type { get; construct set; }

    /**
     * Number of times the reaction was added
     */
    public int32 total_count { get; construct set; }

    /**
     * True, if reaction has a dark background
     */
    public bool is_dark { get; construct set; }

    /**
     * True, if reaction corner is flipped
     */
    public bool is_flipped { get; construct set; }

    public StoryAreaTypeSuggestedReaction (
        ReactionType reaction_type,
        int32 total_count,
        bool is_dark,
        bool is_flipped
    ) {
        Object (
            reaction_type: reaction_type,
            total_count: total_count,
            is_dark: is_dark,
            is_flipped: is_flipped,
            tdlib_type: "storyAreaTypeSuggestedReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area pointing to a message
 */
public class TDLib.StoryAreaTypeMessage : StoryAreaType {

    /**
     * Identifier of the chat with the message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    public StoryAreaTypeMessage (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "storyAreaTypeMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area pointing to a HTTP or tg:// link
 */
public class TDLib.StoryAreaTypeLink : StoryAreaType {

    /**
     * HTTP or tg:// URL to be opened when the area is clicked
     */
    public string url { get; construct set; }

    public StoryAreaTypeLink (
        string url
    ) {
        Object (
            url: url,
            tdlib_type: "storyAreaTypeLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area with information about weather
 */
public class TDLib.StoryAreaTypeWeather : StoryAreaType {

    /**
     * Temperature, in degree Celsius
     */
    public double temperature { get; construct set; }

    /**
     * Emoji representing the weather
     */
    public string emoji { get; construct set; }

    /**
     * A color of the area background in the ARGB format
     */
    public int32 background_color { get; construct set; }

    public StoryAreaTypeWeather (
        double temperature,
        string emoji,
        int32 background_color
    ) {
        Object (
            temperature: temperature,
            emoji: emoji,
            background_color: background_color,
            tdlib_type: "storyAreaTypeWeather",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
