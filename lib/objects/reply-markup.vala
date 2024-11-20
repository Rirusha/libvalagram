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
 * Contains a description of a custom keyboard and actions that can be
 * done with it to quickly reply to bots
 */
public abstract class TDLib.ReplyMarkup : Error {}

/**
 * Instructs application to remove the keyboard once this message has
 * been received. This kind of keyboard can't be received in an incoming
 * message; instead, updateChatReplyMarkup with message_id == 0 will be
 * sent
 */
public class TDLib.ReplyMarkupRemoveKeyboard : ReplyMarkup {

    /**
     * True, if the keyboard is removed only for the mentioned users or the
     * target user of a reply
     */
    public bool is_personal { get; construct set; }

    public ReplyMarkupRemoveKeyboard (
        bool is_personal
    ) {
        Object (
            is_personal: is_personal,
            tdlib_type: "replyMarkupRemoveKeyboard",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Instructs application to force a reply to this message
 */
public class TDLib.ReplyMarkupForceReply : ReplyMarkup {

    /**
     * True, if a forced reply must automatically be shown to the current
     * user. For outgoing messages, specify true to show the forced reply
     * only for the mentioned users and for the target user of a reply
     */
    public bool is_personal { get; construct set; }

    /**
     * If non-empty, the placeholder to be shown in the input field when the
     * reply is active; 0-64 characters
     */
    public string input_field_placeholder { get; construct set; }

    public ReplyMarkupForceReply (
        bool is_personal,
        string input_field_placeholder
    ) {
        Object (
            is_personal: is_personal,
            input_field_placeholder: input_field_placeholder,
            tdlib_type: "replyMarkupForceReply",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Contains a custom keyboard layout to quickly reply to bots
 */
public class TDLib.ReplyMarkupShowKeyboard : ReplyMarkup {

    /**
     * A list of rows of bot keyboard buttons
     */
    public Gee.ArrayList<KeyboardButton?> rows { get; construct set; default = new Gee.ArrayList<KeyboardButton?> (); }

    /**
     * True, if the keyboard is expected to always be shown when the ordinary
     * keyboard is hidden
     */
    public bool is_persistent { get; construct set; }

    /**
     * True, if the application needs to resize the keyboard vertically
     */
    public bool resize_keyboard { get; construct set; }

    /**
     * True, if the application needs to hide the keyboard after use
     */
    public bool one_time { get; construct set; }

    /**
     * True, if the keyboard must automatically be shown to the current user.
     * For outgoing messages, specify true to show the keyboard only for the
     * mentioned users and for the target user of a reply
     */
    public bool is_personal { get; construct set; }

    /**
     * If non-empty, the placeholder to be shown in the input field when the
     * keyboard is active; 0-64 characters
     */
    public string input_field_placeholder { get; construct set; }

    public ReplyMarkupShowKeyboard (
        Gee.ArrayList<KeyboardButton?> rows,
        bool is_persistent,
        bool resize_keyboard,
        bool one_time,
        bool is_personal,
        string input_field_placeholder
    ) {
        Object (
            rows: rows,
            is_persistent: is_persistent,
            resize_keyboard: resize_keyboard,
            one_time: one_time,
            is_personal: is_personal,
            input_field_placeholder: input_field_placeholder,
            tdlib_type: "replyMarkupShowKeyboard",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Contains an inline keyboard layout
 */
public class TDLib.ReplyMarkupInlineKeyboard : ReplyMarkup {

    /**
     * A list of rows of inline keyboard buttons
     */
    public Gee.ArrayList<InlineKeyboardButton?> rows { get; construct set; default = new Gee.ArrayList<InlineKeyboardButton?> (); }

    public ReplyMarkupInlineKeyboard (
        Gee.ArrayList<InlineKeyboardButton?> rows
    ) {
        Object (
            rows: rows,
            tdlib_type: "replyMarkupInlineKeyboard",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
