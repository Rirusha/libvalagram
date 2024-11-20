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
 * Describes the type of inline keyboard button
 */
public abstract class TDLib.InlineKeyboardButtonType : Error {}

/**
 * A button that opens a specified URL
 */
public class TDLib.InlineKeyboardButtonTypeUrl : InlineKeyboardButtonType {

    /**
     * HTTP or tg:// URL to open. If the link is of the type
     * internalLinkTypeWebApp, then the button must be marked as a Web App
     * button
     */
    public string url { get; construct set; }

    public InlineKeyboardButtonTypeUrl (
        string url
    ) {
        Object (
            url: url,
            tdlib_type: "inlineKeyboardButtonTypeUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that opens a specified URL and automatically authorize the
 * current user by calling getLoginUrlInfo
 */
public class TDLib.InlineKeyboardButtonTypeLoginUrl : InlineKeyboardButtonType {

    /**
     * An HTTP URL to pass to getLoginUrlInfo
     */
    public string url { get; construct set; }

    /**
     * Unique button identifier
     */
    public int64 id_ { get; construct set; }

    /**
     * If non-empty, new text of the button in forwarded messages
     */
    public string forward_text { get; construct set; }

    public InlineKeyboardButtonTypeLoginUrl (
        string url,
        int64 id_,
        string forward_text
    ) {
        Object (
            url: url,
            id_: id_,
            forward_text: forward_text,
            tdlib_type: "inlineKeyboardButtonTypeLoginUrl",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that opens a Web App by calling openWebApp
 */
public class TDLib.InlineKeyboardButtonTypeWebApp : InlineKeyboardButtonType {

    /**
     * An HTTP URL to pass to openWebApp
     */
    public string url { get; construct set; }

    public InlineKeyboardButtonTypeWebApp (
        string url
    ) {
        Object (
            url: url,
            tdlib_type: "inlineKeyboardButtonTypeWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that sends a callback query to a bot
 */
public class TDLib.InlineKeyboardButtonTypeCallback : InlineKeyboardButtonType {

    /**
     * Data to be sent to the bot via a callback query
     */
    public Bytes data { get; construct set; }

    public InlineKeyboardButtonTypeCallback (
        Bytes data
    ) {
        Object (
            data: data,
            tdlib_type: "inlineKeyboardButtonTypeCallback",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that asks for the 2-step verification password of the current
 * user and then sends a callback query to a bot
 */
public class TDLib.InlineKeyboardButtonTypeCallbackWithPassword : InlineKeyboardButtonType {

    /**
     * Data to be sent to the bot via a callback query
     */
    public Bytes data { get; construct set; }

    public InlineKeyboardButtonTypeCallbackWithPassword (
        Bytes data
    ) {
        Object (
            data: data,
            tdlib_type: "inlineKeyboardButtonTypeCallbackWithPassword",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button with a game that sends a callback query to a bot. This button
 * must be in the first column and row of the keyboard and can be
 * attached only to a message with content of the type messageGame
 */
public class TDLib.InlineKeyboardButtonTypeCallbackGame : InlineKeyboardButtonType {

    public InlineKeyboardButtonTypeCallbackGame () {
        Object (
            tdlib_type: "inlineKeyboardButtonTypeCallbackGame",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that forces an inline query to the bot to be inserted in the
 * input field
 */
public class TDLib.InlineKeyboardButtonTypeSwitchInline : InlineKeyboardButtonType {

    /**
     * Inline query to be sent to the bot
     */
    public string query { get; construct set; }

    /**
     * Target chat from which to send the inline query
     */
    public TargetChat target_chat { get; construct set; }

    public InlineKeyboardButtonTypeSwitchInline (
        string query,
        TargetChat target_chat
    ) {
        Object (
            query: query,
            target_chat: target_chat,
            tdlib_type: "inlineKeyboardButtonTypeSwitchInline",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button to buy something. This button must be in the first column and
 * row of the keyboard and can be attached only to a message with content
 * of the type messageInvoice
 */
public class TDLib.InlineKeyboardButtonTypeBuy : InlineKeyboardButtonType {

    public InlineKeyboardButtonTypeBuy () {
        Object (
            tdlib_type: "inlineKeyboardButtonTypeBuy",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button with a user reference to be handled in the same way as
 * textEntityTypeMentionName entities
 */
public class TDLib.InlineKeyboardButtonTypeUser : InlineKeyboardButtonType {

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    public InlineKeyboardButtonTypeUser (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "inlineKeyboardButtonTypeUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A button that copies specified text to clipboard
 */
public class TDLib.InlineKeyboardButtonTypeCopyText : InlineKeyboardButtonType {

    /**
     * The text to copy to clipboard
     */
    public string text { get; construct set; }

    public InlineKeyboardButtonTypeCopyText (
        string text
    ) {
        Object (
            text: text,
            tdlib_type: "inlineKeyboardButtonTypeCopyText",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
