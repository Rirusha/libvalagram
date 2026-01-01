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
 * Toggles whether sponsored messages are shown in the channel chat;
 * requires owner privileges in the channel. The chat must have at least
 * chatBoostFeatures.min_sponsored_message_disable_boost_level boost
 * level to disable sponsored messages
 */
public class TDLib.ToggleSupergroupCanHaveSponsoredMessages : TDObject {

    /**
     * The identifier of the channel
     */
    public int64 supergroup_id { get; construct set; }

    /**
     * The new value of can_have_sponsored_messages
     */
    public bool can_have_sponsored_messages { get; construct set; }

    public ToggleSupergroupCanHaveSponsoredMessages (
        int64 supergroup_id,
        bool can_have_sponsored_messages
    ) {
        Object (
            supergroup_id: supergroup_id,
            can_have_sponsored_messages: can_have_sponsored_messages,
            tdlib_type: "toggleSupergroupCanHaveSponsoredMessages",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
