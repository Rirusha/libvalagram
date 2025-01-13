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
 * Informs TDLib that the user opened the sponsored chat via the button,
 * the name, the chat photo, a mention in the sponsored message text, or
 * the media in the sponsored message
 */
public class TDLib.ClickChatSponsoredMessage : TDObject {

    /**
     * Chat identifier of the sponsored message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the sponsored message
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass true if the media was clicked in the sponsored message
     */
    public bool is_media_click { get; construct set; }

    /**
     * Pass true if the user expanded the video from the sponsored message
     * fullscreen before the click
     */
    public bool from_fullscreen { get; construct set; }

    public ClickChatSponsoredMessage (
        int64 chat_id,
        int64 message_id,
        bool is_media_click,
        bool from_fullscreen
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            is_media_click: is_media_click,
            from_fullscreen: from_fullscreen,
            tdlib_type: "clickChatSponsoredMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
