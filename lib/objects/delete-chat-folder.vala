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
 * Deletes existing chat folder
 */
public class TDLib.DeleteChatFolder : TDObject {

    /**
     * Chat folder identifier
     */
    public int32 chat_folder_id { get; construct set; }

    /**
     * Identifiers of the chats to leave. The chats must be pinned or always
     * included in the folder
     */
    public Gee.ArrayList<int64?> leave_chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public DeleteChatFolder (
        int32 chat_folder_id,
        Gee.ArrayList<int64?> leave_chat_ids
    ) {
        Object (
            chat_folder_id: chat_folder_id,
            leave_chat_ids: leave_chat_ids,
            tdlib_type: "deleteChatFolder",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
