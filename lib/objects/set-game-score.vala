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
 * Updates the game score of the specified user in the game; for bots
 * only
 */
public class TDLib.SetGameScore : TDObject {

    /**
     * The chat to which the message with the game belongs
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * Pass true to edit the game message to include the current scoreboard
     */
    public bool edit_message { get; construct set; }

    /**
     * User identifier
     */
    public int64 user_id { get; construct set; }

    /**
     * The new score
     */
    public int32 score { get; construct set; }

    /**
     * Pass true to update the score even if it decreases. If the score is 0,
     * the user will be deleted from the high score table
     */
    public bool force { get; construct set; }

    public SetGameScore (
        int64 chat_id,
        int64 message_id,
        bool edit_message,
        int64 user_id,
        int32 score,
        bool force
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            edit_message: edit_message,
            user_id: user_id,
            score: score,
            force: force,
            tdlib_type: "setGameScore",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
