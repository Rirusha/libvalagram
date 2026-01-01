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
 * Saves an inline message to be sent by the given user; for bots only
 */
public class TDLib.SavePreparedInlineMessage : TDObject {

    /**
     * Identifier of the user
     */
    public int64 user_id { get; construct set; }

    /**
     * The description of the message
     */
    public InputInlineQueryResult result { get; construct set; }

    /**
     * Types of the chats to which the message can be sent
     */
    public TargetChatTypes chat_types { get; construct set; }

    public SavePreparedInlineMessage (
        int64 user_id,
        InputInlineQueryResult result,
        TargetChatTypes chat_types
    ) {
        Object (
            user_id: user_id,
            result: result,
            chat_types: chat_types,
            tdlib_type: "savePreparedInlineMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
