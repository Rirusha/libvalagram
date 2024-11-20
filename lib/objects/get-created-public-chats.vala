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
 * Returns a list of public chats of the specified type, owned by the
 * user
 */
internal class TDLib.GetCreatedPublicChats : TDObject {

    /**
     * Type of the public chats to return
     */
    public PublicChatType type_ { get; construct set; }

    public GetCreatedPublicChats (
        PublicChatType type_
    ) {
        Object (
            type_: type_,
            tdlib_type: "getCreatedPublicChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
