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
 * Describes sources of reactions for which notifications will be shown
 */
public abstract class TDLib.ReactionNotificationSource : Error {}

/**
 * Notifications for reactions are disabled
 */
public class TDLib.ReactionNotificationSourceNone : ReactionNotificationSource {

    public ReactionNotificationSourceNone () {
        Object (
            tdlib_type: "reactionNotificationSourceNone",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Notifications for reactions are shown only for reactions from contacts
 */
public class TDLib.ReactionNotificationSourceContacts : ReactionNotificationSource {

    public ReactionNotificationSourceContacts () {
        Object (
            tdlib_type: "reactionNotificationSourceContacts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Notifications for reactions are shown for all reactions
 */
public class TDLib.ReactionNotificationSourceAll : ReactionNotificationSource {

    public ReactionNotificationSourceAll () {
        Object (
            tdlib_type: "reactionNotificationSourceAll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
