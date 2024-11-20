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
 * Represents a folder for user chats
 */
public class TDLib.ChatFolder : Error {

    /**
     * The title of the folder; 1-12 characters without line feeds
     */
    public string title { get; construct set; }

    /**
     * The chosen icon for the chat folder; may be null. If null, use
     * getChatFolderDefaultIconName to get default icon name for the folder
     */
    public ChatFolderIcon? icon { get; construct set; }

    /**
     * The identifier of the chosen color for the chat folder icon; from -1
     * to 6. If -1, then color is disabled. Can't be changed if folder tags
     * are disabled or the current user doesn't have Telegram Premium
     * subscription
     */
    public int32 color_id { get; construct set; }

    /**
     * True, if at least one link has been created for the folder
     */
    public bool is_shareable { get; construct set; }

    /**
     * The chat identifiers of pinned chats in the folder. There can be up to
     * getOption("chat_folder_chosen_chat_count_max") pinned and always
     * included non-secret chats and the same number of secret chats, but the
     * limit can be increased with Telegram Premium
     */
    public Gee.ArrayList<int64?> pinned_chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * The chat identifiers of always included chats in the folder. There can
     * be up to getOption("chat_folder_chosen_chat_count_max") pinned and
     * always included non-secret chats and the same number of secret chats,
     * but the limit can be increased with Telegram Premium
     */
    public Gee.ArrayList<int64?> included_chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * The chat identifiers of always excluded chats in the folder. There can
     * be up to getOption("chat_folder_chosen_chat_count_max") always
     * excluded non-secret chats and the same number of secret chats, but the
     * limit can be increased with Telegram Premium
     */
    public Gee.ArrayList<int64?> excluded_chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * True, if muted chats need to be excluded
     */
    public bool exclude_muted { get; construct set; }

    /**
     * True, if read chats need to be excluded
     */
    public bool exclude_read { get; construct set; }

    /**
     * True, if archived chats need to be excluded
     */
    public bool exclude_archived { get; construct set; }

    /**
     * True, if contacts need to be included
     */
    public bool include_contacts { get; construct set; }

    /**
     * True, if non-contact users need to be included
     */
    public bool include_non_contacts { get; construct set; }

    /**
     * True, if bots need to be included
     */
    public bool include_bots { get; construct set; }

    /**
     * True, if basic groups and supergroups need to be included
     */
    public bool include_groups { get; construct set; }

    /**
     * True, if channels need to be included
     */
    public bool include_channels { get; construct set; }

    public ChatFolder (
        string title,
        ChatFolderIcon? icon,
        int32 color_id,
        bool is_shareable,
        Gee.ArrayList<int64?> pinned_chat_ids,
        Gee.ArrayList<int64?> included_chat_ids,
        Gee.ArrayList<int64?> excluded_chat_ids,
        bool exclude_muted,
        bool exclude_read,
        bool exclude_archived,
        bool include_contacts,
        bool include_non_contacts,
        bool include_bots,
        bool include_groups,
        bool include_channels
    ) {
        Object (
            title: title,
            icon: icon,
            color_id: color_id,
            is_shareable: is_shareable,
            pinned_chat_ids: pinned_chat_ids,
            included_chat_ids: included_chat_ids,
            excluded_chat_ids: excluded_chat_ids,
            exclude_muted: exclude_muted,
            exclude_read: exclude_read,
            exclude_archived: exclude_archived,
            include_contacts: include_contacts,
            include_non_contacts: include_non_contacts,
            include_bots: include_bots,
            include_groups: include_groups,
            include_channels: include_channels,
            tdlib_type: "chatFolder",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
