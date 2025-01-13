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
 * Manually adds a new animation to the list of saved animations. The new
 * animation is added to the beginning of the list. If the animation was
 * already in the list, it is removed first.
 * Only non-secret video animations with MIME type "video/mp4" can be
 * added to the list
 */
internal class TDLib.AddSavedAnimation : TDObject {

    /**
     * The animation file to be added. Only animations known to the server
     * (i.e., successfully sent via a message) can be added to the list
     */
    public InputFile animation { get; construct set; }

    public AddSavedAnimation (
        InputFile animation
    ) {
        Object (
            animation: animation,
            tdlib_type: "addSavedAnimation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
