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
 * Changes privacy settings of a story. The method can be called only for
 * stories posted on behalf of the current user and if
 * story.can_be_edited == true
 */
internal class TDLib.SetStoryPrivacySettings : TDObject {

    /**
     * Identifier of the story
     */
    public int32 story_id { get; construct set; }

    /**
     * The new privacy settings for the story
     */
    public StoryPrivacySettings privacy_settings { get; construct set; }

    public SetStoryPrivacySettings (
        int32 story_id,
        StoryPrivacySettings privacy_settings
    ) {
        Object (
            story_id: story_id,
            privacy_settings: privacy_settings,
            tdlib_type: "setStoryPrivacySettings",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
