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
 * Represents a filter for type of the chats in which to search messages
 */
public abstract class TDLib.SearchMessagesChatTypeFilter : Error {}

/**
 * Returns only messages in private chats
 */
public class TDLib.SearchMessagesChatTypeFilterPrivate : SearchMessagesChatTypeFilter {

    public SearchMessagesChatTypeFilterPrivate () {
        Object (
            tdlib_type: "searchMessagesChatTypeFilterPrivate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only messages in basic group and supergroup chats
 */
public class TDLib.SearchMessagesChatTypeFilterGroup : SearchMessagesChatTypeFilter {

    public SearchMessagesChatTypeFilterGroup () {
        Object (
            tdlib_type: "searchMessagesChatTypeFilterGroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns only messages in channel chats
 */
public class TDLib.SearchMessagesChatTypeFilterChannel : SearchMessagesChatTypeFilter {

    public SearchMessagesChatTypeFilterChannel () {
        Object (
            tdlib_type: "searchMessagesChatTypeFilterChannel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
