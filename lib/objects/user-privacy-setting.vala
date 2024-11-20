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
 * Describes available user privacy settings
 */
public abstract class TDLib.UserPrivacySetting : Error {}

/**
 * A privacy setting for managing whether the user's online status is
 * visible
 */
public class TDLib.UserPrivacySettingShowStatus : UserPrivacySetting {

    public UserPrivacySettingShowStatus () {
        Object (
            tdlib_type: "userPrivacySettingShowStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether the user's profile photo is
 * visible
 */
public class TDLib.UserPrivacySettingShowProfilePhoto : UserPrivacySetting {

    public UserPrivacySettingShowProfilePhoto () {
        Object (
            tdlib_type: "userPrivacySettingShowProfilePhoto",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether a link to the user's account is
 * included in forwarded messages
 */
public class TDLib.UserPrivacySettingShowLinkInForwardedMessages : UserPrivacySetting {

    public UserPrivacySettingShowLinkInForwardedMessages () {
        Object (
            tdlib_type: "userPrivacySettingShowLinkInForwardedMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether the user's phone number is
 * visible
 */
public class TDLib.UserPrivacySettingShowPhoneNumber : UserPrivacySetting {

    public UserPrivacySettingShowPhoneNumber () {
        Object (
            tdlib_type: "userPrivacySettingShowPhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether the user's bio is visible
 */
public class TDLib.UserPrivacySettingShowBio : UserPrivacySetting {

    public UserPrivacySettingShowBio () {
        Object (
            tdlib_type: "userPrivacySettingShowBio",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether the user's birthdate is visible
 */
public class TDLib.UserPrivacySettingShowBirthdate : UserPrivacySetting {

    public UserPrivacySettingShowBirthdate () {
        Object (
            tdlib_type: "userPrivacySettingShowBirthdate",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether the user can be invited to
 * chats
 */
public class TDLib.UserPrivacySettingAllowChatInvites : UserPrivacySetting {

    public UserPrivacySettingAllowChatInvites () {
        Object (
            tdlib_type: "userPrivacySettingAllowChatInvites",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether the user can be called
 */
public class TDLib.UserPrivacySettingAllowCalls : UserPrivacySetting {

    public UserPrivacySettingAllowCalls () {
        Object (
            tdlib_type: "userPrivacySettingAllowCalls",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether peer-to-peer connections can be
 * used for calls
 */
public class TDLib.UserPrivacySettingAllowPeerToPeerCalls : UserPrivacySetting {

    public UserPrivacySettingAllowPeerToPeerCalls () {
        Object (
            tdlib_type: "userPrivacySettingAllowPeerToPeerCalls",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether the user can be found by their
 * phone number. Checked only if the phone number is not known to the
 * other user. Can be set only to "Allow contacts" or "Allow all"
 */
public class TDLib.UserPrivacySettingAllowFindingByPhoneNumber : UserPrivacySetting {

    public UserPrivacySettingAllowFindingByPhoneNumber () {
        Object (
            tdlib_type: "userPrivacySettingAllowFindingByPhoneNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether the user can receive voice and
 * video messages in private chats; for Telegram Premium users only
 */
public class TDLib.UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages : UserPrivacySetting {

    public UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages () {
        Object (
            tdlib_type: "userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A privacy setting for managing whether received gifts are
 * automatically shown on the user's profile page
 */
public class TDLib.UserPrivacySettingAutosaveGifts : UserPrivacySetting {

    public UserPrivacySettingAutosaveGifts () {
        Object (
            tdlib_type: "userPrivacySettingAutosaveGifts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
