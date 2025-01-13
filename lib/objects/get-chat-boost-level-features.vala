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
 * Returns the list of features available on the specific chat boost
 * level; this is an offline request
 */
public class TDLib.GetChatBoostLevelFeatures : TDObject {

    /**
     * Pass true to get the list of features for channels; pass false to get
     * the list of features for supergroups
     */
    public bool is_channel { get; construct set; }

    /**
     * Chat boost level
     */
    public int32 level { get; construct set; }

    public GetChatBoostLevelFeatures (
        bool is_channel,
        int32 level
    ) {
        Object (
            is_channel: is_channel,
            level: level,
            tdlib_type: "getChatBoostLevelFeatures",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
