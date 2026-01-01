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
 * Describes the type of notifications in a notification group
 */
public abstract class TDLib.NotificationGroupType : Error {}

/**
 * A group containing notifications of type notificationTypeNewMessage
 * and notificationTypeNewPushMessage with ordinary unread messages
 */
public class TDLib.NotificationGroupTypeMessages : NotificationGroupType {

    public NotificationGroupTypeMessages () {
        Object (
            tdlib_type: "notificationGroupTypeMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A group containing notifications of type notificationTypeNewMessage
 * and notificationTypeNewPushMessage with unread mentions of the current
 * user, replies to their messages, or a pinned message
 */
public class TDLib.NotificationGroupTypeMentions : NotificationGroupType {

    public NotificationGroupTypeMentions () {
        Object (
            tdlib_type: "notificationGroupTypeMentions",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A group containing a notification of type
 * notificationTypeNewSecretChat
 */
public class TDLib.NotificationGroupTypeSecretChat : NotificationGroupType {

    public NotificationGroupTypeSecretChat () {
        Object (
            tdlib_type: "notificationGroupTypeSecretChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A group containing notifications of type notificationTypeNewCall
 */
public class TDLib.NotificationGroupTypeCalls : NotificationGroupType {

    public NotificationGroupTypeCalls () {
        Object (
            tdlib_type: "notificationGroupTypeCalls",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
