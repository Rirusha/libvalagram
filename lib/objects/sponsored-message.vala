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
 * Describes a sponsored message
 */
public class TDLib.SponsoredMessage : Error {

    /**
     * Message identifier; unique for the chat to which the sponsored message
     * belongs among both ordinary and sponsored messages
     */
    public int64 message_id { get; construct set; }

    /**
     * True, if the message needs to be labeled as "recommended" instead of
     * "sponsored"
     */
    public bool is_recommended { get; construct set; }

    /**
     * True, if the message can be reported to Telegram moderators through
     * {@link Client.report_chat_sponsored_message}
     */
    public bool can_be_reported { get; construct set; }

    /**
     * Content of the message. Currently, can be only of the types
     * messageText, messageAnimation, messagePhoto, or messageVideo. Video
     * messages can be viewed fullscreen
     */
    public MessageContent content { get; construct set; }

    /**
     * Information about the sponsor of the message
     */
    public MessageSponsor sponsor { get; construct set; }

    /**
     * Title of the sponsored message
     */
    public string title { get; construct set; }

    /**
     * Text for the message action button
     */
    public string button_text { get; construct set; }

    /**
     * Identifier of the accent color for title, button text and message
     * background
     */
    public int32 accent_color_id { get; construct set; }

    /**
     * Identifier of a custom emoji to be shown on the message background; 0
     * if none
     */
    public int64 background_custom_emoji_id { get; construct set; }

    /**
     * If non-empty, additional information about the sponsored message to be
     * shown along with the message
     */
    public string additional_info { get; construct set; }

    public SponsoredMessage (
        int64 message_id,
        bool is_recommended,
        bool can_be_reported,
        MessageContent content,
        MessageSponsor sponsor,
        string title,
        string button_text,
        int32 accent_color_id,
        int64 background_custom_emoji_id,
        string additional_info
    ) {
        Object (
            message_id: message_id,
            is_recommended: is_recommended,
            can_be_reported: can_be_reported,
            content: content,
            sponsor: sponsor,
            title: title,
            button_text: button_text,
            accent_color_id: accent_color_id,
            background_custom_emoji_id: background_custom_emoji_id,
            additional_info: additional_info,
            tdlib_type: "sponsoredMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
