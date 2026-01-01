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
 * Describes name of a chat folder
 */
public class TDLib.ChatFolderName : Error {

    /**
     * The text of the chat folder name; 1-12 characters without line feeds.
     * May contain only CustomEmoji entities
     */
    public FormattedText text { get; construct set; }

    /**
     * True, if custom emoji in the name must be animated
     */
    public bool animate_custom_emoji { get; construct set; }

    public ChatFolderName (
        FormattedText text,
        bool animate_custom_emoji
    ) {
        Object (
            text: text,
            animate_custom_emoji: animate_custom_emoji,
            tdlib_type: "chatFolderName",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
