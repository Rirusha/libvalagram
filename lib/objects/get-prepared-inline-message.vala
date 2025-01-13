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
 * Saves an inline message to be sent by the given user
 */
internal class TDLib.GetPreparedInlineMessage : TDObject {

    /**
     * Identifier of the bot that created the message
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Identifier of the prepared message
     */
    public string prepared_message_id { get; construct set; }

    public GetPreparedInlineMessage (
        int64 bot_user_id,
        string prepared_message_id
    ) {
        Object (
            bot_user_id: bot_user_id,
            prepared_message_id: prepared_message_id,
            tdlib_type: "getPreparedInlineMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
