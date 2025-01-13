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
 * Changes the emoji status of a chat. Use
 * chatBoostLevelFeatures.can_set_emoji_status to check whether an emoji
 * status can be set. Requires can_change_info administrator right
 */
public class TDLib.SetChatEmojiStatus : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New emoji status; pass null to remove emoji status
     */
    public EmojiStatus emoji_status { get; construct set; }

    public SetChatEmojiStatus (
        int64 chat_id,
        EmojiStatus emoji_status
    ) {
        Object (
            chat_id: chat_id,
            emoji_status: emoji_status,
            tdlib_type: "setChatEmojiStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
