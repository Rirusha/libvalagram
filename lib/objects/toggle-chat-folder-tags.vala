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
 * Toggles whether chat folder tags are enabled
 */
internal class TDLib.ToggleChatFolderTags : TDObject {

    /**
     * Pass true to enable folder tags; pass false to disable them
     */
    public bool are_tags_enabled { get; construct set; }

    public ToggleChatFolderTags (
        bool are_tags_enabled
    ) {
        Object (
            are_tags_enabled: are_tags_enabled,
            tdlib_type: "toggleChatFolderTags",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
