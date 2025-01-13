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
 * Contains basic information about a chat folder
 */
public class TDLib.ChatFolderInfo : Error {

    /**
     * Unique chat folder identifier
     */
    public int32 id_ { get; construct set; }

    /**
     * The name of the folder
     */
    public ChatFolderName name { get; construct set; }

    /**
     * The chosen or default icon for the chat folder
     */
    public ChatFolderIcon icon { get; construct set; }

    /**
     * The identifier of the chosen color for the chat folder icon; from -1
     * to 6. If -1, then color is disabled
     */
    public int32 color_id { get; construct set; }

    /**
     * True, if at least one link has been created for the folder
     */
    public bool is_shareable { get; construct set; }

    /**
     * True, if the chat folder has invite links created by the current user
     */
    public bool has_my_invite_links { get; construct set; }

    public ChatFolderInfo (
        int32 id_,
        ChatFolderName name,
        ChatFolderIcon icon,
        int32 color_id,
        bool is_shareable,
        bool has_my_invite_links
    ) {
        Object (
            id_: id_,
            name: name,
            icon: icon,
            color_id: color_id,
            is_shareable: is_shareable,
            has_my_invite_links: has_my_invite_links,
            tdlib_type: "chatFolderInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
