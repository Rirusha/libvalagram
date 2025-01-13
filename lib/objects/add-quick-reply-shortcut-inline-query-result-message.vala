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
 * Adds a message to a quick reply shortcut via inline bot. If shortcut
 * doesn't exist and there are less than
 * getOption("quick_reply_shortcut_count_max") shortcuts, then a new
 * shortcut is created.
 * The shortcut must not contain more than
 * getOption("quick_reply_shortcut_message_count_max") messages after
 * adding the new message. Returns the added message
 */
internal class TDLib.AddQuickReplyShortcutInlineQueryResultMessage : TDObject {

    /**
     * Name of the target shortcut
     */
    public string shortcut_name { get; construct set; }

    /**
     * Identifier of a quick reply message in the same shortcut to be
     * replied; pass 0 if none
     */
    public int64 reply_to_message_id { get; construct set; }

    /**
     * Identifier of the inline query
     */
    public int64 query_id { get; construct set; }

    /**
     * Identifier of the inline query result
     */
    public string result_id { get; construct set; }

    /**
     * Pass true to hide the bot, via which the message is sent. Can be used
     * only for bots getOption("animation_search_bot_username"),
     * getOption("photo_search_bot_username"), and
     * getOption("venue_search_bot_username")
     */
    public bool hide_via_bot { get; construct set; }

    public AddQuickReplyShortcutInlineQueryResultMessage (
        string shortcut_name,
        int64 reply_to_message_id,
        int64 query_id,
        string result_id,
        bool hide_via_bot
    ) {
        Object (
            shortcut_name: shortcut_name,
            reply_to_message_id: reply_to_message_id,
            query_id: query_id,
            result_id: result_id,
            hide_via_bot: hide_via_bot,
            tdlib_type: "addQuickReplyShortcutInlineQueryResultMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
