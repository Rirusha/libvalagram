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
 * Represents result of checking whether a username can be set for a chat
 */
public abstract class TDLib.CheckChatUsernameResult : Error {}

/**
 * The username can be set
 */
public class TDLib.CheckChatUsernameResultOk : CheckChatUsernameResult {

    public CheckChatUsernameResultOk () {
        Object (
            tdlib_type: "checkChatUsernameResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The username is invalid
 */
public class TDLib.CheckChatUsernameResultUsernameInvalid : CheckChatUsernameResult {

    public CheckChatUsernameResultUsernameInvalid () {
        Object (
            tdlib_type: "checkChatUsernameResultUsernameInvalid",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The username is occupied
 */
public class TDLib.CheckChatUsernameResultUsernameOccupied : CheckChatUsernameResult {

    public CheckChatUsernameResultUsernameOccupied () {
        Object (
            tdlib_type: "checkChatUsernameResultUsernameOccupied",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The username can be purchased at [[https://fragment.com]]. Information
 * about the username can be received using
 * {@link Client.get_collectible_item_info}
 */
public class TDLib.CheckChatUsernameResultUsernamePurchasable : CheckChatUsernameResult {

    public CheckChatUsernameResultUsernamePurchasable () {
        Object (
            tdlib_type: "checkChatUsernameResultUsernamePurchasable",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user has too many chats with username, one of them must be made
 * private first
 */
public class TDLib.CheckChatUsernameResultPublicChatsTooMany : CheckChatUsernameResult {

    public CheckChatUsernameResultPublicChatsTooMany () {
        Object (
            tdlib_type: "checkChatUsernameResultPublicChatsTooMany",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user can't be a member of a public supergroup
 */
public class TDLib.CheckChatUsernameResultPublicGroupsUnavailable : CheckChatUsernameResult {

    public CheckChatUsernameResultPublicGroupsUnavailable () {
        Object (
            tdlib_type: "checkChatUsernameResultPublicGroupsUnavailable",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
