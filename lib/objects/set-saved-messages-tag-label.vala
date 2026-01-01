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
 * Changes label of a Saved Messages tag; for Telegram Premium users only
 */
public class TDLib.SetSavedMessagesTagLabel : TDObject {

    /**
     * The tag which label will be changed
     */
    public ReactionType tag { get; construct set; }

    /**
     * New label for the tag; 0-12 characters
     */
    public string label { get; construct set; }

    public SetSavedMessagesTagLabel (
        ReactionType tag,
        string label
    ) {
        Object (
            tag: tag,
            label: label,
            tdlib_type: "setSavedMessagesTagLabel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
