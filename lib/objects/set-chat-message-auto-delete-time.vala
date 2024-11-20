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
 * Changes the message auto-delete or self-destruct (for secret chats)
 * time in a chat. Requires change_info administrator right in basic
 * groups, supergroups and channels.
 * Message auto-delete time can't be changed in a chat with the current
 * user (Saved Messages) and the chat 777000 (Telegram).
 */
internal class TDLib.SetChatMessageAutoDeleteTime : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New time value, in seconds; unless the chat is secret, it must be from
     * 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages
     * aren't deleted automatically
     */
    public int32 message_auto_delete_time { get; construct set; }

    public SetChatMessageAutoDeleteTime (
        int64 chat_id,
        int32 message_auto_delete_time
    ) {
        Object (
            chat_id: chat_id,
            message_auto_delete_time: message_auto_delete_time,
            tdlib_type: "setChatMessageAutoDeleteTime",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
