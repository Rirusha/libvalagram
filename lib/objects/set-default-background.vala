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
 * Sets default background for chats; adds the background to the list of
 * installed backgrounds
 */
internal class TDLib.SetDefaultBackground : TDObject {

    /**
     * The input background to use; pass null to create a new filled
     * background
     */
    public InputBackground background { get; construct set; }

    /**
     * Background type; pass null to use the default type of the remote
     * background; backgroundTypeChatTheme isn't supported
     */
    public BackgroundType type_ { get; construct set; }

    /**
     * Pass true if the background is set for a dark theme
     */
    public bool for_dark_theme { get; construct set; }

    public SetDefaultBackground (
        InputBackground background,
        BackgroundType type_,
        bool for_dark_theme
    ) {
        Object (
            background: background,
            type_: type_,
            for_dark_theme: for_dark_theme,
            tdlib_type: "setDefaultBackground",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
