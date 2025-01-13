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
 * Represents the categories of chats for which a list of frequently used
 * chats can be retrieved
 */
public abstract class TDLib.TopChatCategory : Error {}

/**
 * A category containing frequently used private chats with non-bot users
 */
public class TDLib.TopChatCategoryUsers : TopChatCategory {

    public TopChatCategoryUsers () {
        Object (
            tdlib_type: "topChatCategoryUsers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A category containing frequently used private chats with bot users
 */
public class TDLib.TopChatCategoryBots : TopChatCategory {

    public TopChatCategoryBots () {
        Object (
            tdlib_type: "topChatCategoryBots",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A category containing frequently used basic groups and supergroups
 */
public class TDLib.TopChatCategoryGroups : TopChatCategory {

    public TopChatCategoryGroups () {
        Object (
            tdlib_type: "topChatCategoryGroups",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A category containing frequently used channels
 */
public class TDLib.TopChatCategoryChannels : TopChatCategory {

    public TopChatCategoryChannels () {
        Object (
            tdlib_type: "topChatCategoryChannels",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A category containing frequently used chats with inline bots sorted by
 * their usage in inline mode
 */
public class TDLib.TopChatCategoryInlineBots : TopChatCategory {

    public TopChatCategoryInlineBots () {
        Object (
            tdlib_type: "topChatCategoryInlineBots",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A category containing frequently used chats with bots, which Web Apps
 * were opened
 */
public class TDLib.TopChatCategoryWebAppBots : TopChatCategory {

    public TopChatCategoryWebAppBots () {
        Object (
            tdlib_type: "topChatCategoryWebAppBots",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A category containing frequently used chats used for calls
 */
public class TDLib.TopChatCategoryCalls : TopChatCategory {

    public TopChatCategoryCalls () {
        Object (
            tdlib_type: "topChatCategoryCalls",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A category containing frequently used chats used to forward messages
 */
public class TDLib.TopChatCategoryForwardChats : TopChatCategory {

    public TopChatCategoryForwardChats () {
        Object (
            tdlib_type: "topChatCategoryForwardChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
