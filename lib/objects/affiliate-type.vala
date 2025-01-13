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
 * Describes type of affiliate for an affiliate program
 */
public abstract class TDLib.AffiliateType : Error {}

/**
 * The affiliate is the current user
 */
public class TDLib.AffiliateTypeCurrentUser : AffiliateType {

    public AffiliateTypeCurrentUser () {
        Object (
            tdlib_type: "affiliateTypeCurrentUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The affiliate is a bot owned by the current user
 */
public class TDLib.AffiliateTypeBot : AffiliateType {

    /**
     * User identifier of the bot
     */
    public int64 user_id { get; construct set; }

    public AffiliateTypeBot (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "affiliateTypeBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The affiliate is a channel chat where the current user has
 * can_post_messages administrator right
 */
public class TDLib.AffiliateTypeChannel : AffiliateType {

    /**
     * Identifier of the channel chat
     */
    public int64 chat_id { get; construct set; }

    public AffiliateTypeChannel (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "affiliateTypeChannel",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
