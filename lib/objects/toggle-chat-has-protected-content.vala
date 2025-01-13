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
 * Changes the ability of users to save, forward, or copy chat content.
 * Supported only for basic groups, supergroups and channels. Requires
 * owner privileges
 */
public class TDLib.ToggleChatHasProtectedContent : TDObject {

    /**
     * Chat identifier
     */
    public int64 chat_id { get; construct set; }

    /**
     * New value of has_protected_content
     */
    public bool has_protected_content { get; construct set; }

    public ToggleChatHasProtectedContent (
        int64 chat_id,
        bool has_protected_content
    ) {
        Object (
            chat_id: chat_id,
            has_protected_content: has_protected_content,
            tdlib_type: "toggleChatHasProtectedContent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
