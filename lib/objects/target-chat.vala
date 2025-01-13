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
 * Describes the target chat to be opened
 */
public abstract class TDLib.TargetChat : Error {}

/**
 * The currently opened chat and forum topic must be kept
 */
public class TDLib.TargetChatCurrent : TargetChat {

    public TargetChatCurrent () {
        Object (
            tdlib_type: "targetChatCurrent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat needs to be chosen by the user among chats of the specified
 * types
 */
public class TDLib.TargetChatChosen : TargetChat {

    /**
     * Allowed types for the chat
     */
    public TargetChatTypes types { get; construct set; }

    public TargetChatChosen (
        TargetChatTypes types
    ) {
        Object (
            types: types,
            tdlib_type: "targetChatChosen",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat needs to be open with the provided internal link
 */
public class TDLib.TargetChatInternalLink : TargetChat {

    /**
     * An internal link pointing to the chat
     */
    public InternalLinkType link { get; construct set; }

    public TargetChatInternalLink (
        InternalLinkType link
    ) {
        Object (
            link: link,
            tdlib_type: "targetChatInternalLink",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
