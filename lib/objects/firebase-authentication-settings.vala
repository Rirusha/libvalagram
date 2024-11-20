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
 * Contains settings for Firebase Authentication in the official
 * applications
 */
public abstract class TDLib.FirebaseAuthenticationSettings : Error {}

/**
 * Settings for Firebase Authentication in the official Android
 * application
 */
public class TDLib.FirebaseAuthenticationSettingsAndroid : FirebaseAuthenticationSettings {

    public FirebaseAuthenticationSettingsAndroid () {
        Object (
            tdlib_type: "firebaseAuthenticationSettingsAndroid",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Settings for Firebase Authentication in the official iOS application
 */
public class TDLib.FirebaseAuthenticationSettingsIos : FirebaseAuthenticationSettings {

    /**
     * Device token from Apple Push Notification service
     */
    public string device_token { get; construct set; }

    /**
     * True, if App Sandbox is enabled
     */
    public bool is_app_sandbox { get; construct set; }

    public FirebaseAuthenticationSettingsIos (
        string device_token,
        bool is_app_sandbox
    ) {
        Object (
            device_token: device_token,
            is_app_sandbox: is_app_sandbox,
            tdlib_type: "firebaseAuthenticationSettingsIos",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
