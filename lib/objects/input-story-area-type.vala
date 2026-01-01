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
 * Describes type of clickable area on a story media to be added
 */
public abstract class TDLib.InputStoryAreaType : Error {}

/**
 * An area pointing to a location
 */
public class TDLib.InputStoryAreaTypeLocation : InputStoryAreaType {

    /**
     * The location
     */
    public Location location { get; construct set; }

    /**
     * Address of the location; pass null if unknown
     */
    public LocationAddress address { get; construct set; }

    public InputStoryAreaTypeLocation (
        Location location,
        LocationAddress address
    ) {
        Object (
            location: location,
            address: address,
            tdlib_type: "inputStoryAreaTypeLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area pointing to a venue found by the bot
 * getOption("venue_search_bot_username")
 */
public class TDLib.InputStoryAreaTypeFoundVenue : InputStoryAreaType {

    /**
     * Identifier of the inline query, used to found the venue
     */
    public int64 query_id { get; construct set; }

    /**
     * Identifier of the inline query result
     */
    public string result_id { get; construct set; }

    public InputStoryAreaTypeFoundVenue (
        int64 query_id,
        string result_id
    ) {
        Object (
            query_id: query_id,
            result_id: result_id,
            tdlib_type: "inputStoryAreaTypeFoundVenue",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area pointing to a venue already added to the story
 */
public class TDLib.InputStoryAreaTypePreviousVenue : InputStoryAreaType {

    /**
     * Provider of the venue
     */
    public string venue_provider { get; construct set; }

    /**
     * Identifier of the venue in the provider database
     */
    public string venue_id { get; construct set; }

    public InputStoryAreaTypePreviousVenue (
        string venue_provider,
        string venue_id
    ) {
        Object (
            venue_provider: venue_provider,
            venue_id: venue_id,
            tdlib_type: "inputStoryAreaTypePreviousVenue",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area pointing to a suggested reaction
 */
public class TDLib.InputStoryAreaTypeSuggestedReaction : InputStoryAreaType {

    /**
     * Type of the reaction
     */
    public ReactionType reaction_type { get; construct set; }

    /**
     * True, if reaction has a dark background
     */
    public bool is_dark { get; construct set; }

    /**
     * True, if reaction corner is flipped
     */
    public bool is_flipped { get; construct set; }

    public InputStoryAreaTypeSuggestedReaction (
        ReactionType reaction_type,
        bool is_dark,
        bool is_flipped
    ) {
        Object (
            reaction_type: reaction_type,
            is_dark: is_dark,
            is_flipped: is_flipped,
            tdlib_type: "inputStoryAreaTypeSuggestedReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area pointing to a message
 */
public class TDLib.InputStoryAreaTypeMessage : InputStoryAreaType {

    /**
     * Identifier of the chat with the message. Currently, the chat must be a
     * supergroup or a channel chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message. Use
     * messageProperties.can_be_shared_in_story to check whether the message
     * is suitable
     */
    public int64 message_id { get; construct set; }

    public InputStoryAreaTypeMessage (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "inputStoryAreaTypeMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area pointing to a HTTP or [[tg://]] link
 */
public class TDLib.InputStoryAreaTypeLink : InputStoryAreaType {

    /**
     * HTTP or [[tg://]] URL to be opened when the area is clicked
     */
    public string url { get; construct set; }

    public InputStoryAreaTypeLink (
        string url
    ) {
        Object (
            url: url,
            tdlib_type: "inputStoryAreaTypeLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area with information about weather
 */
public class TDLib.InputStoryAreaTypeWeather : InputStoryAreaType {

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

    public InputStoryAreaTypeWeather (
        double temperature,
        string emoji,
        int32 background_color
    ) {
        Object (
            temperature: temperature,
            emoji: emoji,
            background_color: background_color,
            tdlib_type: "inputStoryAreaTypeWeather",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An area with an upgraded gift
 */
public class TDLib.InputStoryAreaTypeUpgradedGift : InputStoryAreaType {

    /**
     * Unique name of the upgraded gift
     */
    public string gift_name { get; construct set; }

    public InputStoryAreaTypeUpgradedGift (
        string gift_name
    ) {
        Object (
            gift_name: gift_name,
            tdlib_type: "inputStoryAreaTypeUpgradedGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
