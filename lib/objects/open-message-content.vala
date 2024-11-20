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
 * Informs TDLib that the message content has been opened (e.g., the user
 * has opened a photo, video, document, location or venue, or has
 * listened to an audio file or voice note message).
 * An updateMessageContentOpened update will be generated if something
 * has changed
 */
internal class TDLib.OpenMessageContent : TDObject {

    /**
     * Chat identifier of the message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message with the opened content
     */
    public int64 message_id { get; construct set; }

    public OpenMessageContent (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "openMessageContent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
