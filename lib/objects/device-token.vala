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
 * Represents a data needed to subscribe for push notifications through
 * registerDevice method.
 * To use specific push notification service, the correct application
 * platform must be specified and a valid server authentication data must
 * be uploaded at https://my.telegram.org
 */
public abstract class TDLib.DeviceToken : Error {}

/**
 * A token for Firebase Cloud Messaging
 */
public class TDLib.DeviceTokenFirebaseCloudMessaging : DeviceToken {

    /**
     * Device registration token; may be empty to deregister a device
     */
    public string token { get; construct set; }

    /**
     * True, if push notifications must be additionally encrypted
     */
    public bool encrypt { get; construct set; }

    public DeviceTokenFirebaseCloudMessaging (
        string token,
        bool encrypt
    ) {
        Object (
            token: token,
            encrypt: encrypt,
            tdlib_type: "deviceTokenFirebaseCloudMessaging",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for Apple Push Notification service
 */
public class TDLib.DeviceTokenApplePush : DeviceToken {

    /**
     * Device token; may be empty to deregister a device
     */
    public string device_token { get; construct set; }

    /**
     * True, if App Sandbox is enabled
     */
    public bool is_app_sandbox { get; construct set; }

    public DeviceTokenApplePush (
        string device_token,
        bool is_app_sandbox
    ) {
        Object (
            device_token: device_token,
            is_app_sandbox: is_app_sandbox,
            tdlib_type: "deviceTokenApplePush",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for Apple Push Notification service VoIP notifications
 */
public class TDLib.DeviceTokenApplePushVoIP : DeviceToken {

    /**
     * Device token; may be empty to deregister a device
     */
    public string device_token { get; construct set; }

    /**
     * True, if App Sandbox is enabled
     */
    public bool is_app_sandbox { get; construct set; }

    /**
     * True, if push notifications must be additionally encrypted
     */
    public bool encrypt { get; construct set; }

    public DeviceTokenApplePushVoIP (
        string device_token,
        bool is_app_sandbox,
        bool encrypt
    ) {
        Object (
            device_token: device_token,
            is_app_sandbox: is_app_sandbox,
            encrypt: encrypt,
            tdlib_type: "deviceTokenApplePushVoIP",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for Windows Push Notification Services
 */
public class TDLib.DeviceTokenWindowsPush : DeviceToken {

    /**
     * The access token that will be used to send notifications; may be empty
     * to deregister a device
     */
    public string access_token { get; construct set; }

    public DeviceTokenWindowsPush (
        string access_token
    ) {
        Object (
            access_token: access_token,
            tdlib_type: "deviceTokenWindowsPush",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for Microsoft Push Notification Service
 */
public class TDLib.DeviceTokenMicrosoftPush : DeviceToken {

    /**
     * Push notification channel URI; may be empty to deregister a device
     */
    public string channel_uri { get; construct set; }

    public DeviceTokenMicrosoftPush (
        string channel_uri
    ) {
        Object (
            channel_uri: channel_uri,
            tdlib_type: "deviceTokenMicrosoftPush",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for Microsoft Push Notification Service VoIP channel
 */
public class TDLib.DeviceTokenMicrosoftPushVoIP : DeviceToken {

    /**
     * Push notification channel URI; may be empty to deregister a device
     */
    public string channel_uri { get; construct set; }

    public DeviceTokenMicrosoftPushVoIP (
        string channel_uri
    ) {
        Object (
            channel_uri: channel_uri,
            tdlib_type: "deviceTokenMicrosoftPushVoIP",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for web Push API
 */
public class TDLib.DeviceTokenWebPush : DeviceToken {

    /**
     * Absolute URL exposed by the push service where the application server
     * can send push messages; may be empty to deregister a device
     */
    public string endpoint { get; construct set; }

    /**
     * Base64url-encoded P-256 elliptic curve Diffie-Hellman public key
     */
    public string p256dh_base64url { get; construct set; }

    /**
     * Base64url-encoded authentication secret
     */
    public string auth_base64url { get; construct set; }

    public DeviceTokenWebPush (
        string endpoint,
        string p256dh_base64url,
        string auth_base64url
    ) {
        Object (
            endpoint: endpoint,
            p256dh_base64url: p256dh_base64url,
            auth_base64url: auth_base64url,
            tdlib_type: "deviceTokenWebPush",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for Simple Push API for Firefox OS
 */
public class TDLib.DeviceTokenSimplePush : DeviceToken {

    /**
     * Absolute URL exposed by the push service where the application server
     * can send push messages; may be empty to deregister a device
     */
    public string endpoint { get; construct set; }

    public DeviceTokenSimplePush (
        string endpoint
    ) {
        Object (
            endpoint: endpoint,
            tdlib_type: "deviceTokenSimplePush",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for Ubuntu Push Client service
 */
public class TDLib.DeviceTokenUbuntuPush : DeviceToken {

    /**
     * Token; may be empty to deregister a device
     */
    public string token { get; construct set; }

    public DeviceTokenUbuntuPush (
        string token
    ) {
        Object (
            token: token,
            tdlib_type: "deviceTokenUbuntuPush",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for BlackBerry Push Service
 */
public class TDLib.DeviceTokenBlackBerryPush : DeviceToken {

    /**
     * Token; may be empty to deregister a device
     */
    public string token { get; construct set; }

    public DeviceTokenBlackBerryPush (
        string token
    ) {
        Object (
            token: token,
            tdlib_type: "deviceTokenBlackBerryPush",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for Tizen Push Service
 */
public class TDLib.DeviceTokenTizenPush : DeviceToken {

    /**
     * Push service registration identifier; may be empty to deregister a
     * device
     */
    public string reg_id { get; construct set; }

    public DeviceTokenTizenPush (
        string reg_id
    ) {
        Object (
            reg_id: reg_id,
            tdlib_type: "deviceTokenTizenPush",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A token for HUAWEI Push Service
 */
public class TDLib.DeviceTokenHuaweiPush : DeviceToken {

    /**
     * Device registration token; may be empty to deregister a device
     */
    public string token { get; construct set; }

    /**
     * True, if push notifications must be additionally encrypted
     */
    public bool encrypt { get; construct set; }

    public DeviceTokenHuaweiPush (
        string token,
        bool encrypt
    ) {
        Object (
            token: token,
            encrypt: encrypt,
            tdlib_type: "deviceTokenHuaweiPush",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
