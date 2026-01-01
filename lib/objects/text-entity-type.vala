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
 * Represents a part of the text which must be formatted differently
 */
public abstract class TDLib.TextEntityType : Error {}

/**
 * A mention of a user, a supergroup, or a channel by their username
 */
public class TDLib.TextEntityTypeMention : TextEntityType {

    public TextEntityTypeMention () {
        Object (
            tdlib_type: "textEntityTypeMention",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A hashtag text, beginning with "#" and optionally containing a chat
 * username at the end
 */
public class TDLib.TextEntityTypeHashtag : TextEntityType {

    public TextEntityTypeHashtag () {
        Object (
            tdlib_type: "textEntityTypeHashtag",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A cashtag text, beginning with "$", consisting of capital English
 * letters (e.g., "$USD"), and optionally containing a chat username at
 * the end
 */
public class TDLib.TextEntityTypeCashtag : TextEntityType {

    public TextEntityTypeCashtag () {
        Object (
            tdlib_type: "textEntityTypeCashtag",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A bot command, beginning with "/"
 */
public class TDLib.TextEntityTypeBotCommand : TextEntityType {

    public TextEntityTypeBotCommand () {
        Object (
            tdlib_type: "textEntityTypeBotCommand",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An HTTP URL
 */
public class TDLib.TextEntityTypeUrl : TextEntityType {

    public TextEntityTypeUrl () {
        Object (
            tdlib_type: "textEntityTypeUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An email address
 */
public class TDLib.TextEntityTypeEmailAddress : TextEntityType {

    public TextEntityTypeEmailAddress () {
        Object (
            tdlib_type: "textEntityTypeEmailAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A phone number
 */
public class TDLib.TextEntityTypePhoneNumber : TextEntityType {

    public TextEntityTypePhoneNumber () {
        Object (
            tdlib_type: "textEntityTypePhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A bank card number. The {@link Client.get_bank_card_info} method can
 * be used to get information about the bank card
 */
public class TDLib.TextEntityTypeBankCardNumber : TextEntityType {

    public TextEntityTypeBankCardNumber () {
        Object (
            tdlib_type: "textEntityTypeBankCardNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A bold text
 */
public class TDLib.TextEntityTypeBold : TextEntityType {

    public TextEntityTypeBold () {
        Object (
            tdlib_type: "textEntityTypeBold",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An italic text
 */
public class TDLib.TextEntityTypeItalic : TextEntityType {

    public TextEntityTypeItalic () {
        Object (
            tdlib_type: "textEntityTypeItalic",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An underlined text
 */
public class TDLib.TextEntityTypeUnderline : TextEntityType {

    public TextEntityTypeUnderline () {
        Object (
            tdlib_type: "textEntityTypeUnderline",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A strikethrough text
 */
public class TDLib.TextEntityTypeStrikethrough : TextEntityType {

    public TextEntityTypeStrikethrough () {
        Object (
            tdlib_type: "textEntityTypeStrikethrough",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A spoiler text
 */
public class TDLib.TextEntityTypeSpoiler : TextEntityType {

    public TextEntityTypeSpoiler () {
        Object (
            tdlib_type: "textEntityTypeSpoiler",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Text that must be formatted as if inside a code HTML tag
 */
public class TDLib.TextEntityTypeCode : TextEntityType {

    public TextEntityTypeCode () {
        Object (
            tdlib_type: "textEntityTypeCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Text that must be formatted as if inside a pre HTML tag
 */
public class TDLib.TextEntityTypePre : TextEntityType {

    public TextEntityTypePre () {
        Object (
            tdlib_type: "textEntityTypePre",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Text that must be formatted as if inside pre, and code HTML tags
 */
public class TDLib.TextEntityTypePreCode : TextEntityType {

    /**
     * Programming language of the code; as defined by the sender
     */
    public string language { get; construct set; }

    public TextEntityTypePreCode (
        string language
    ) {
        Object (
            language: language,
            tdlib_type: "textEntityTypePreCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Text that must be formatted as if inside a blockquote HTML tag; not
 * supported in secret chats
 */
public class TDLib.TextEntityTypeBlockQuote : TextEntityType {

    public TextEntityTypeBlockQuote () {
        Object (
            tdlib_type: "textEntityTypeBlockQuote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Text that must be formatted as if inside a blockquote HTML tag and
 * collapsed by default to 3 lines with the ability to show full text;
 * not supported in secret chats
 */
public class TDLib.TextEntityTypeExpandableBlockQuote : TextEntityType {

    public TextEntityTypeExpandableBlockQuote () {
        Object (
            tdlib_type: "textEntityTypeExpandableBlockQuote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A text  shown instead of a raw URL
 */
public class TDLib.TextEntityTypeTextUrl : TextEntityType {

    /**
     * HTTP or [[tg://]] URL to be opened when the link is clicked
     */
    public string url { get; construct set; }

    public TextEntityTypeTextUrl (
        string url
    ) {
        Object (
            url: url,
            tdlib_type: "textEntityTypeTextUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A text shows instead of a raw mention of the user (e.g., when the user
 * has no username)
 */
public class TDLib.TextEntityTypeMentionName : TextEntityType {

    /**
     * Identifier of the mentioned user
     */
    public int64 user_id { get; construct set; }

    public TextEntityTypeMentionName (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "textEntityTypeMentionName",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A custom emoji. The text behind a custom emoji must be an emoji. Only
 * premium users can use premium custom emoji
 */
public class TDLib.TextEntityTypeCustomEmoji : TextEntityType {

    /**
     * Unique identifier of the custom emoji
     */
    public int64 custom_emoji_id { get; construct set; }

    public TextEntityTypeCustomEmoji (
        int64 custom_emoji_id
    ) {
        Object (
            custom_emoji_id: custom_emoji_id,
            tdlib_type: "textEntityTypeCustomEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A media timestamp
 */
public class TDLib.TextEntityTypeMediaTimestamp : TextEntityType {

    /**
     * Timestamp from which a video/audio/video note/voice note/story playing
     * must start, in seconds. The media can be in the content or the link
     * preview of the current message, or in the same places in the replied
     * message
     */
    public int32 media_timestamp { get; construct set; }

    public TextEntityTypeMediaTimestamp (
        int32 media_timestamp
    ) {
        Object (
            media_timestamp: media_timestamp,
            tdlib_type: "textEntityTypeMediaTimestamp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
