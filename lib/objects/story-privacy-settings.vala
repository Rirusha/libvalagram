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
 * Describes privacy settings of a story
 */
public abstract class TDLib.StoryPrivacySettings : Error {}

/**
 * The story can be viewed by everyone
 */
public class TDLib.StoryPrivacySettingsEveryone : StoryPrivacySettings {

    /**
     * Identifiers of the users that can't see the story; always unknown and
     * empty for non-owned stories
     */
    public Gee.ArrayList<int64?> except_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public StoryPrivacySettingsEveryone (
        Gee.ArrayList<int64?> except_user_ids
    ) {
        Object (
            except_user_ids: except_user_ids,
            tdlib_type: "storyPrivacySettingsEveryone",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The story can be viewed by all contacts except chosen users
 */
public class TDLib.StoryPrivacySettingsContacts : StoryPrivacySettings {

    /**
     * User identifiers of the contacts that can't see the story; always
     * unknown and empty for non-owned stories
     */
    public Gee.ArrayList<int64?> except_user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public StoryPrivacySettingsContacts (
        Gee.ArrayList<int64?> except_user_ids
    ) {
        Object (
            except_user_ids: except_user_ids,
            tdlib_type: "storyPrivacySettingsContacts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The story can be viewed by all {@link Client.close} friends
 */
public class TDLib.StoryPrivacySettingsCloseFriends : StoryPrivacySettings {

    public StoryPrivacySettingsCloseFriends () {
        Object (
            tdlib_type: "storyPrivacySettingsCloseFriends",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The story can be viewed by certain specified users
 */
public class TDLib.StoryPrivacySettingsSelectedUsers : StoryPrivacySettings {

    /**
     * Identifiers of the users; always unknown and empty for non-owned
     * stories
     */
    public Gee.ArrayList<int64?> user_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public StoryPrivacySettingsSelectedUsers (
        Gee.ArrayList<int64?> user_ids
    ) {
        Object (
            user_ids: user_ids,
            tdlib_type: "storyPrivacySettingsSelectedUsers",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
