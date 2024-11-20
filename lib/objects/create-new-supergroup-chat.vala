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
 * Creates a new supergroup or channel and sends a corresponding
 * messageSupergroupChatCreate. Returns the newly created chat
 */
internal class TDLib.CreateNewSupergroupChat : TDObject {

    /**
     * Title of the new chat; 1-128 characters
     */
    public string title { get; construct set; }

    /**
     * Pass true to create a forum supergroup chat
     */
    public bool is_forum { get; construct set; }

    /**
     * Pass true to create a channel chat; ignored if a forum is created
     */
    public bool is_channel { get; construct set; }

    /**
     * Chat description; 0-255 characters
     */
    public string description { get; construct set; }

    /**
     * Chat location if a location-based supergroup is being created; pass
     * null to create an ordinary supergroup chat
     */
    public ChatLocation location { get; construct set; }

    /**
     * Message auto-delete time value, in seconds; must be from 0 up to 365 *
     * 86400 and be divisible by 86400. If 0, then messages aren't deleted
     * automatically
     */
    public int32 message_auto_delete_time { get; construct set; }

    /**
     * Pass true to create a supergroup for importing messages using
     * importMessages
     */
    public bool for_import { get; construct set; }

    public CreateNewSupergroupChat (
        string title,
        bool is_forum,
        bool is_channel,
        string description,
        ChatLocation location,
        int32 message_auto_delete_time,
        bool for_import
    ) {
        Object (
            title: title,
            is_forum: is_forum,
            is_channel: is_channel,
            description: description,
            location: location,
            message_auto_delete_time: message_auto_delete_time,
            for_import: for_import,
            tdlib_type: "createNewSupergroupChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
