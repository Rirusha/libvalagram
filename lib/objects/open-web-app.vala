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
 * Informs TDLib that a Web App is being opened from the attachment menu,
 * a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or
 * an inlineKeyboardButtonTypeWebApp button.
 * For each bot, a confirmation alert about data sent to the bot must be
 * shown once
 */
public class TDLib.OpenWebApp : TDObject {

    /**
     * Identifier of the chat in which the Web App is opened. The Web App
     * can't be opened in secret chats
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the bot, providing the Web App. If the bot is restricted
     * for the current user, then show an error instead of calling the method
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton
     * button, an internalLinkTypeAttachmentMenuBot link, or an empty string
     * otherwise
     */
    public string url { get; construct set; }

    /**
     * Topic in which the message will be sent; pass null if none
     */
    public MessageTopic topic_id { get; construct set; }

    /**
     * Information about the message or story to be replied in the message
     * sent by the Web App; pass null if none
     */
    public InputMessageReplyTo reply_to { get; construct set; }

    /**
     * Parameters to use to open the Web App
     */
    public WebAppOpenParameters parameters { get; construct set; }

    public OpenWebApp (
        int64 chat_id,
        int64 bot_user_id,
        string url,
        MessageTopic topic_id,
        InputMessageReplyTo reply_to,
        WebAppOpenParameters parameters
    ) {
        Object (
            chat_id: chat_id,
            bot_user_id: bot_user_id,
            url: url,
            topic_id: topic_id,
            reply_to: reply_to,
            parameters: parameters,
            tdlib_type: "openWebApp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
