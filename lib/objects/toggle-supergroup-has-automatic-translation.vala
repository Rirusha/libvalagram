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
 * Toggles whether messages are automatically translated in the channel
 * chat; requires can_change_info administrator right in the channel.
 * The chat must have at least
 * chatBoostFeatures.min_automatic_translation_boost_level boost level to
 * enable automatic translation
 */
public class TDLib.ToggleSupergroupHasAutomaticTranslation : TDObject {

    /**
     * The identifier of the channel
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * The new value of has_automatic_translation
     */
    public bool has_automatic_translation { get; construct set; }

    public ToggleSupergroupHasAutomaticTranslation (
        int64 supergroup_id,
        bool has_automatic_translation
    ) {
        Object (
            supergroup_id: supergroup_id,
            has_automatic_translation: has_automatic_translation,
            tdlib_type: "toggleSupergroupHasAutomaticTranslation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
