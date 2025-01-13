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
 * Contains settings for automatic moving of chats to and from the
 * Archive chat lists
 */
public class TDLib.ArchiveChatListSettings : Error {

    /**
     * True, if new chats from non-contacts will be automatically archived
     * and muted. Can be set to true only if the option
     * "can_archive_and_mute_new_chats_from_unknown_users" is true
     */
    public bool archive_and_mute_new_chats_from_unknown_users { get; construct set; }

    /**
     * True, if unmuted chats will be kept in the Archive chat list when they
     * get a new message
     */
    public bool keep_unmuted_chats_archived { get; construct set; }

    /**
     * True, if unmuted chats, that are always included or pinned in a
     * folder, will be kept in the Archive chat list when they get a new
     * message. Ignored if keep_unmuted_chats_archived == true
     */
    public bool keep_chats_from_folders_archived { get; construct set; }

    public ArchiveChatListSettings (
        bool archive_and_mute_new_chats_from_unknown_users,
        bool keep_unmuted_chats_archived,
        bool keep_chats_from_folders_archived
    ) {
        Object (
            archive_and_mute_new_chats_from_unknown_users: archive_and_mute_new_chats_from_unknown_users,
            keep_unmuted_chats_archived: keep_unmuted_chats_archived,
            keep_chats_from_folders_archived: keep_chats_from_folders_archived,
            tdlib_type: "archiveChatListSettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
