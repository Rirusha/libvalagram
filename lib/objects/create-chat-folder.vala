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
 * Creates new chat folder. Returns information about the created chat
 * folder. There can be up to getOption("chat_folder_count_max") chat
 * folders, but the limit can be increased with Telegram Premium
 */
public class TDLib.CreateChatFolder : TDObject {

    /**
     * The new chat folder
     */
    public ChatFolder folder { get; construct set; }

    public CreateChatFolder (
        ChatFolder folder
    ) {
        Object (
            folder: folder,
            tdlib_type: "createChatFolder",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
