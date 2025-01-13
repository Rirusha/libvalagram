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
 * Returns a list of basic group and supergroup chats, which can be used
 * as a discussion group for a channel. Returned basic group chats must
 * be first upgraded to supergroups before they can be set as a
 * discussion group.
 * To set a returned supergroup as a discussion group, access to its old
 * messages must be enabled using
 * {@link Client.toggle_supergroup_is_all_history_available} first
 */
public class TDLib.GetSuitableDiscussionChats : TDObject {

    public GetSuitableDiscussionChats () {
        Object (
            tdlib_type: "getSuitableDiscussionChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
