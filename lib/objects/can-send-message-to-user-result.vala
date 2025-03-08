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
 * Describes result of {@link Client.can_send_message_to_user}
 */
public abstract class TDLib.CanSendMessageToUserResult : Error {}

/**
 * The user can be messaged
 */
public class TDLib.CanSendMessageToUserResultOk : CanSendMessageToUserResult {

    public CanSendMessageToUserResultOk () {
        Object (
            tdlib_type: "canSendMessageToUserResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user can be messaged, but the messages are paid
 */
public class TDLib.CanSendMessageToUserResultUserHasPaidMessages : CanSendMessageToUserResult {

    /**
     * Number of Telegram Stars that must be paid by the current user for
     * each sent message to the user
     */
    public int64 outgoing_paid_message_star_count { get; construct set; }

    public CanSendMessageToUserResultUserHasPaidMessages (
        int64 outgoing_paid_message_star_count
    ) {
        Object (
            outgoing_paid_message_star_count: outgoing_paid_message_star_count,
            tdlib_type: "canSendMessageToUserResultUserHasPaidMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user can't be messaged, because they are deleted or unknown
 */
public class TDLib.CanSendMessageToUserResultUserIsDeleted : CanSendMessageToUserResult {

    public CanSendMessageToUserResultUserIsDeleted () {
        Object (
            tdlib_type: "canSendMessageToUserResultUserIsDeleted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user can't be messaged, because they restrict new chats with
 * non-contacts
 */
public class TDLib.CanSendMessageToUserResultUserRestrictsNewChats : CanSendMessageToUserResult {

    public CanSendMessageToUserResultUserRestrictsNewChats () {
        Object (
            tdlib_type: "canSendMessageToUserResultUserRestrictsNewChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
