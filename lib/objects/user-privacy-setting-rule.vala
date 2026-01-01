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
 * Represents a single rule for managing user privacy settings
 */
public abstract class TDLib.UserPrivacySettingRule : Error {}

/**
 * A rule to allow all users to do something
 */
public class TDLib.UserPrivacySettingRuleAllowAll : UserPrivacySettingRule {

    public UserPrivacySettingRuleAllowAll () {
        Object (
            tdlib_type: "userPrivacySettingRuleAllowAll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rule to allow all contacts of the user to do something
 */
public class TDLib.UserPrivacySettingRuleAllowContacts : UserPrivacySettingRule {

    public UserPrivacySettingRuleAllowContacts () {
        Object (
            tdlib_type: "userPrivacySettingRuleAllowContacts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rule to allow all bots to do something
 */
public class TDLib.UserPrivacySettingRuleAllowBots : UserPrivacySettingRule {

    public UserPrivacySettingRuleAllowBots () {
        Object (
            tdlib_type: "userPrivacySettingRuleAllowBots",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rule to allow all Premium Users to do something; currently, allowed
 * only for userPrivacySettingAllowChatInvites
 */
public class TDLib.UserPrivacySettingRuleAllowPremiumUsers : UserPrivacySettingRule {

    public UserPrivacySettingRuleAllowPremiumUsers () {
        Object (
            tdlib_type: "userPrivacySettingRuleAllowPremiumUsers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rule to allow certain specified users to do something
 */
public class TDLib.UserPrivacySettingRuleAllowUsers : UserPrivacySettingRule {

    /**
     * The user identifiers, total number of users in all rules must not
     * exceed 1000
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public UserPrivacySettingRuleAllowUsers (
        Gee.ArrayList<int64?> user_ids
    ) {
        Object (
            user_ids: user_ids,
            tdlib_type: "userPrivacySettingRuleAllowUsers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rule to allow all members of certain specified basic groups and
 * supergroups to doing something
 */
public class TDLib.UserPrivacySettingRuleAllowChatMembers : UserPrivacySettingRule {

    /**
     * The chat identifiers, total number of chats in all rules must not
     * exceed 20
     */
    public Gee.ArrayList<int64?> chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public UserPrivacySettingRuleAllowChatMembers (
        Gee.ArrayList<int64?> chat_ids
    ) {
        Object (
            chat_ids: chat_ids,
            tdlib_type: "userPrivacySettingRuleAllowChatMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rule to restrict all users from doing something
 */
public class TDLib.UserPrivacySettingRuleRestrictAll : UserPrivacySettingRule {

    public UserPrivacySettingRuleRestrictAll () {
        Object (
            tdlib_type: "userPrivacySettingRuleRestrictAll",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rule to restrict all contacts of the user from doing something
 */
public class TDLib.UserPrivacySettingRuleRestrictContacts : UserPrivacySettingRule {

    public UserPrivacySettingRuleRestrictContacts () {
        Object (
            tdlib_type: "userPrivacySettingRuleRestrictContacts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rule to restrict all bots from doing something
 */
public class TDLib.UserPrivacySettingRuleRestrictBots : UserPrivacySettingRule {

    public UserPrivacySettingRuleRestrictBots () {
        Object (
            tdlib_type: "userPrivacySettingRuleRestrictBots",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rule to restrict all specified users from doing something
 */
public class TDLib.UserPrivacySettingRuleRestrictUsers : UserPrivacySettingRule {

    /**
     * The user identifiers, total number of users in all rules must not
     * exceed 1000
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public UserPrivacySettingRuleRestrictUsers (
        Gee.ArrayList<int64?> user_ids
    ) {
        Object (
            user_ids: user_ids,
            tdlib_type: "userPrivacySettingRuleRestrictUsers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A rule to restrict all members of specified basic groups and
 * supergroups from doing something
 */
public class TDLib.UserPrivacySettingRuleRestrictChatMembers : UserPrivacySettingRule {

    /**
     * The chat identifiers, total number of chats in all rules must not
     * exceed 20
     */
    public Gee.ArrayList<int64?> chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public UserPrivacySettingRuleRestrictChatMembers (
        Gee.ArrayList<int64?> chat_ids
    ) {
        Object (
            chat_ids: chat_ids,
            tdlib_type: "userPrivacySettingRuleRestrictChatMembers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
