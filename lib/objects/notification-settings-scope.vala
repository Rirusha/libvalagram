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
 * Describes the types of chats to which notification settings are
 * relevant
 */
public abstract class TDLib.NotificationSettingsScope : Error {}

/**
 * Notification settings applied to all private and secret chats when the
 * corresponding chat setting has a default value
 */
public class TDLib.NotificationSettingsScopePrivateChats : NotificationSettingsScope {

    public NotificationSettingsScopePrivateChats () {
        Object (
            tdlib_type: "notificationSettingsScopePrivateChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Notification settings applied to all basic group and supergroup chats
 * when the corresponding chat setting has a default value
 */
public class TDLib.NotificationSettingsScopeGroupChats : NotificationSettingsScope {

    public NotificationSettingsScopeGroupChats () {
        Object (
            tdlib_type: "notificationSettingsScopeGroupChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Notification settings applied to all channel chats when the
 * corresponding chat setting has a default value
 */
public class TDLib.NotificationSettingsScopeChannelChats : NotificationSettingsScope {

    public NotificationSettingsScopeChannelChats () {
        Object (
            tdlib_type: "notificationSettingsScopeChannelChats",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
