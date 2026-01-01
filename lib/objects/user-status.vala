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
 * Describes the last time the user was online
 */
public abstract class TDLib.UserStatus : Error {}

/**
 * The user's status has never been changed
 */
public class TDLib.UserStatusEmpty : UserStatus {

    public UserStatusEmpty () {
        Object (
            tdlib_type: "userStatusEmpty",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is online
 */
public class TDLib.UserStatusOnline : UserStatus {

    /**
     * Point in time (Unix timestamp) when the user's online status will
     * expire
     */
    public int32 expires { get; construct set; }

    public UserStatusOnline (
        int32 expires
    ) {
        Object (
            expires: expires,
            tdlib_type: "userStatusOnline",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is offline
 */
public class TDLib.UserStatusOffline : UserStatus {

    /**
     * Point in time (Unix timestamp) when the user was last online
     */
    public int32 was_online { get; construct set; }

    public UserStatusOffline (
        int32 was_online
    ) {
        Object (
            was_online: was_online,
            tdlib_type: "userStatusOffline",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user was online recently
 */
public class TDLib.UserStatusRecently : UserStatus {

    /**
     * Exact user's status is hidden because the current user enabled
     * userPrivacySettingShowStatus privacy setting for the user and has no
     * Telegram Premium
     */
    public bool by_my_privacy_settings { get; construct set; }

    public UserStatusRecently (
        bool by_my_privacy_settings
    ) {
        Object (
            by_my_privacy_settings: by_my_privacy_settings,
            tdlib_type: "userStatusRecently",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is offline, but was online last week
 */
public class TDLib.UserStatusLastWeek : UserStatus {

    /**
     * Exact user's status is hidden because the current user enabled
     * userPrivacySettingShowStatus privacy setting for the user and has no
     * Telegram Premium
     */
    public bool by_my_privacy_settings { get; construct set; }

    public UserStatusLastWeek (
        bool by_my_privacy_settings
    ) {
        Object (
            by_my_privacy_settings: by_my_privacy_settings,
            tdlib_type: "userStatusLastWeek",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user is offline, but was online last month
 */
public class TDLib.UserStatusLastMonth : UserStatus {

    /**
     * Exact user's status is hidden because the current user enabled
     * userPrivacySettingShowStatus privacy setting for the user and has no
     * Telegram Premium
     */
    public bool by_my_privacy_settings { get; construct set; }

    public UserStatusLastMonth (
        bool by_my_privacy_settings
    ) {
        Object (
            by_my_privacy_settings: by_my_privacy_settings,
            tdlib_type: "userStatusLastMonth",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
