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
 * Describes a section of the application settings
 */
public abstract class TDLib.SettingsSection : Error {}

/**
 * The appearance section
 */
public class TDLib.SettingsSectionAppearance : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "themes", "themes/edit", "themes/create", "wallpapers",
     * "wallpapers/edit", "wallpapers/set",
     * "wallpapers/choose-photo", "your-color/profile",
     * "your-color/profile/add-icons", "your-color/profile/use-gift",
     * "your-color/profile/reset", "your-color/name",
     * "your-color/name/add-icons", "your-color/name/use-gift",
     * "night-mode", "auto-night-mode", "text-size", "text-size/use-system",
     * "message-corners", "animations",
     * "stickers-and-emoji", "stickers-and-emoji/edit",
     * "stickers-and-emoji/trending", "stickers-and-emoji/archived",
     * "stickers-and-emoji/archived/edit", "stickers-and-emoji/emoji",
     * "stickers-and-emoji/emoji/edit",
     * "stickers-and-emoji/emoji/archived",
     * "stickers-and-emoji/emoji/archived/edit",
     * "stickers-and-emoji/emoji/suggest",
     * "stickers-and-emoji/emoji/quick-reaction",
     * "stickers-and-emoji/emoji/quick-reaction/choose",
     * "stickers-and-emoji/suggest-by-emoji",
     * "stickers-and-emoji/large-emoji", "stickers-and-emoji/dynamic-order",
     * "stickers-and-emoji/emoji/show-more", "app-icon", "tap-for-next-media"
     */
    public string subsection { get; construct set; }

    public SettingsSectionAppearance (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionAppearance",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The "Ask a question" section
 */
public class TDLib.SettingsSectionAskQuestion : SettingsSection {

    public SettingsSectionAskQuestion () {
        Object (
            tdlib_type: "settingsSectionAskQuestion",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The "Telegram Business" section
 */
public class TDLib.SettingsSectionBusiness : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "do-not-hide-ads"
     */
    public string subsection { get; construct set; }

    public SettingsSectionBusiness (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionBusiness",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat folder settings section
 */
public class TDLib.SettingsSectionChatFolders : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "edit", "create", "add-recommended", "show-tags", "tab-view"
     */
    public string subsection { get; construct set; }

    public SettingsSectionChatFolders (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionChatFolders",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The data and storage settings section
 */
public class TDLib.SettingsSectionDataAndStorage : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "storage", "storage/edit", "storage/auto-remove",
     * "storage/clear-cache", "storage/max-cache", "usage",
     * "usage/mobile", "usage/wifi", "usage/reset", "usage/roaming",
     * "auto-download/mobile",
     * "auto-download/mobile/enable", "auto-download/mobile/usage",
     * "auto-download/mobile/photos",
     * "auto-download/mobile/stories", "auto-download/mobile/videos",
     * "auto-download/mobile/files", "auto-download/wifi",
     * "auto-download/wifi/enable", "auto-download/wifi/usage",
     * "auto-download/wifi/photos",
     * "auto-download/wifi/stories", "auto-download/wifi/videos",
     * "auto-download/wifi/files", "auto-download/roaming",
     * "auto-download/roaming/enable", "auto-download/roaming/usage",
     * "auto-download/roaming/photos",
     * "auto-download/roaming/stories", "auto-download/roaming/videos",
     * "auto-download/roaming/files",
     * "auto-download/reset", "save-to-photos/chats",
     * "save-to-photos/chats/max-video-size",
     * "save-to-photos/chats/add-exception",
     * "save-to-photos/chats/delete-all", "save-to-photos/groups",
     * "save-to-photos/groups/max-video-size",
     * "save-to-photos/groups/add-exception",
     * "save-to-photos/groups/delete-all",
     * "save-to-photos/channels", "save-to-photos/channels/max-video-size",
     * "save-to-photos/channels/add-exception",
     * "save-to-photos/channels/delete-all", "less-data-calls", "open-links",
     * "share-sheet",
     * "share-sheet/suggested-chats", "share-sheet/suggest-by",
     * "share-sheet/reset", "saved-edited-photos",
     * "pause-music", "raise-to-listen", "raise-to-speak", "show-18-content",
     * "proxy", "proxy/edit", "proxy/use-proxy",
     * "proxy/add-proxy", "proxy/share-list", "proxy/use-for-calls"
     */
    public string subsection { get; construct set; }

    public SettingsSectionDataAndStorage (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionDataAndStorage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The Devices section
 */
public class TDLib.SettingsSectionDevices : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "edit", "link-desktop", "terminate-sessions", "auto-terminate"
     */
    public string subsection { get; construct set; }

    public SettingsSectionDevices (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionDevices",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The profile edit section
 */
public class TDLib.SettingsSectionEditProfile : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "set-photo", "first-name", "last-name", "emoji-status", "bio",
     * "birthday", "change-number", "username",
     * "your-color", "channel", "add-account", "log-out",
     * "profile-color/profile", "profile-color/profile/add-icons",
     * "profile-color/profile/use-gift", "profile-color/name",
     * "profile-color/name/add-icons",
     * "profile-color/name/use-gift", "profile-photo/use-emoji"
     */
    public string subsection { get; construct set; }

    public SettingsSectionEditProfile (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionEditProfile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The FAQ section
 */
public class TDLib.SettingsSectionFaq : SettingsSection {

    public SettingsSectionFaq () {
        Object (
            tdlib_type: "settingsSectionFaq",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The "Telegram Features" section
 */
public class TDLib.SettingsSectionFeatures : SettingsSection {

    public SettingsSectionFeatures () {
        Object (
            tdlib_type: "settingsSectionFeatures",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The in-app browser settings section
 */
public class TDLib.SettingsSectionInAppBrowser : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "enable-browser", "clear-cookies", "clear-cache", "history",
     * "clear-history", "never-open", "clear-list", "search"
     */
    public string subsection { get; construct set; }

    public SettingsSectionInAppBrowser (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionInAppBrowser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The application language section
 */
public class TDLib.SettingsSectionLanguage : SettingsSection {

    /**
     * Subsection of the section; may be one of "", "show-button" for Show
     * Translate Button toggle,
     * "translate-chats" for Translate Entire Chats toggle,
     * "do-not-translate" - for Do Not Translate language list
     */
    public string subsection { get; construct set; }

    public SettingsSectionLanguage (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionLanguage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The Telegram Star balance and transaction section
 */
public class TDLib.SettingsSectionMyStars : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "top-up", "stats", "gift", "earn"
     */
    public string subsection { get; construct set; }

    public SettingsSectionMyStars (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionMyStars",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The Toncoin balance and transaction section
 */
public class TDLib.SettingsSectionMyToncoins : SettingsSection {

    public SettingsSectionMyToncoins () {
        Object (
            tdlib_type: "settingsSectionMyToncoins",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The notification settings section
 */
public class TDLib.SettingsSectionNotifications : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "accounts", "private-chats", "private-chats/edit",
     * "private-chats/show", "private-chats/preview",
     * "private-chats/sound", "private-chats/add-exception",
     * "private-chats/delete-exceptions",
     * "private-chats/light-color", "private-chats/vibrate",
     * "private-chats/priority", "groups", "groups/edit",
     * "groups/show", "groups/preview", "groups/sound",
     * "groups/add-exception", "groups/delete-exceptions",
     * "groups/light-color", "groups/vibrate", "groups/priority", "channels",
     * "channels/edit", "channels/show",
     * "channels/preview", "channels/sound", "channels/add-exception",
     * "channels/delete-exceptions",
     * "channels/light-color", "channels/vibrate", "channels/priority",
     * "stories", "stories/new", "stories/important",
     * "stories/show-sender", "stories/sound", "stories/add-exception",
     * "stories/delete-exceptions",
     * "stories/light-color", "stories/vibrate", "stories/priority",
     * "reactions", "reactions/messages",
     * "reactions/stories", "reactions/show-sender", "reactions/sound",
     * "reactions/light-color", "reactions/vibrate",
     * "reactions/priority", "in-app-sounds", "in-app-vibrate",
     * "in-app-preview", "in-chat-sounds", "in-app-popup",
     * "lock-screen-names", "include-channels", "include-muted-chats",
     * "count-unread-messages", "new-contacts",
     * "pinned-messages", "reset", "web"
     */
    public string subsection { get; construct set; }

    public SettingsSectionNotifications (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionNotifications",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The power saving settings section
 */
public class TDLib.SettingsSectionPowerSaving : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "videos", "gifs", "stickers", "emoji", "effects", "preload",
     * "background", "call-animations", "particles", "transitions"
     */
    public string subsection { get; construct set; }

    public SettingsSectionPowerSaving (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionPowerSaving",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The "Telegram Premium" section
 */
public class TDLib.SettingsSectionPremium : SettingsSection {

    public SettingsSectionPremium () {
        Object (
            tdlib_type: "settingsSectionPremium",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The privacy and security section
 */
public class TDLib.SettingsSectionPrivacyAndSecurity : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "blocked", "blocked/edit", "blocked/block-user",
     * "blocked/block-user/chats", "blocked/block-user/contacts",
     * "active-websites", "active-websites/edit",
     * "active-websites/disconnect-all", "passcode", "passcode/disable",
     * "passcode/change", "passcode/auto-lock", "passcode/face-id",
     * "passcode/fingerprint", "2sv", "2sv/change",
     * "2sv/disable", "2sv/change-email", "passkey", "passkey/create",
     * "auto-delete", "auto-delete/set-custom",
     * "login-email", "phone-number", "phone-number/never",
     * "phone-number/always", "last-seen", "last-seen/never",
     * "last-seen/always", "last-seen/hide-read-time", "profile-photos",
     * "profile-photos/never", "profile-photos/always",
     * "profile-photos/set-public", "profile-photos/update-public",
     * "profile-photos/remove-public", "bio", "bio/never",
     * "bio/always", "gifts", "gifts/show-icon", "gifts/never",
     * "gifts/always", "gifts/accepted-types", "birthday",
     * "birthday/add", "birthday/never", "birthday/always", "saved-music",
     * "saved-music/never", "saved-music/always",
     * "forwards", "forwards/never", "forwards/always", "calls",
     * "calls/never", "calls/always", "calls/p2p",
     * "calls/p2p/never", "calls/p2p/always", "calls/ios-integration",
     * "voice", "voice/never", "voice/always",
     * "messages", "messages/set-price", "messages/exceptions", "invites",
     * "invites/never", "invites/always",
     * "self-destruct", "data-settings", "data-settings/sync-contacts",
     * "data-settings/delete-synced",
     * "data-settings/suggest-contacts", "data-settings/delete-cloud-drafts",
     * "data-settings/clear-payment-info",
     * "data-settings/link-previews", "data-settings/bot-settings",
     * "data-settings/map-provider", "archive-and-mute"
     */
    public string subsection { get; construct set; }

    public SettingsSectionPrivacyAndSecurity (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionPrivacyAndSecurity",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The "Privacy Policy" section
 */
public class TDLib.SettingsSectionPrivacyPolicy : SettingsSection {

    public SettingsSectionPrivacyPolicy () {
        Object (
            tdlib_type: "settingsSectionPrivacyPolicy",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The current user's QR code section
 */
public class TDLib.SettingsSectionQrCode : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "share", "scan"
     */
    public string subsection { get; construct set; }

    public SettingsSectionQrCode (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionQrCode",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Search in Settings
 */
public class TDLib.SettingsSectionSearch : SettingsSection {

    public SettingsSectionSearch () {
        Object (
            tdlib_type: "settingsSectionSearch",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The "Send a gift" section
 */
public class TDLib.SettingsSectionSendGift : SettingsSection {

    /**
     * Subsection of the section; may be one of
     * "", "self"
     */
    public string subsection { get; construct set; }

    public SettingsSectionSendGift (
        string subsection
    ) {
        Object (
            subsection: subsection,
            tdlib_type: "settingsSectionSendGift",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
