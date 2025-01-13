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
 * Searches a chat with an affiliate program. Returns the chat if found
 * and the program is active
 */
public class TDLib.SearchChatAffiliateProgram : TDObject {

    /**
     * Username of the chat
     */
    public string username { get; construct set; }

    /**
     * The referrer from an internalLinkTypeChatAffiliateProgram link
     */
    public string referrer { get; construct set; }

    public SearchChatAffiliateProgram (
        string username,
        string referrer
    ) {
        Object (
            username: username,
            referrer: referrer,
            tdlib_type: "searchChatAffiliateProgram",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
