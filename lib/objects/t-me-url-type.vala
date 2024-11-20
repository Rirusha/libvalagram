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
 * Describes the type of URL linking to an internal Telegram entity
 */
public abstract class TDLib.TMeUrlType : Error {}

/**
 * A URL linking to a user
 */
public class TDLib.TMeUrlTypeUser : TMeUrlType {

    /**
     * Identifier of the user
     */
    public int64 user_id { get; construct set; }

    public TMeUrlTypeUser (
        int64 user_id
    ) {
        Object (
            user_id: user_id,
            tdlib_type: "tMeUrlTypeUser",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A URL linking to a public supergroup or channel
 */
public class TDLib.TMeUrlTypeSupergroup : TMeUrlType {

    /**
     * Identifier of the supergroup or channel
     */
    public int64 supergroup_id { get; construct set; }

    public TMeUrlTypeSupergroup (
        int64 supergroup_id
    ) {
        Object (
            supergroup_id: supergroup_id,
            tdlib_type: "tMeUrlTypeSupergroup",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A chat invite link
 */
public class TDLib.TMeUrlTypeChatInvite : TMeUrlType {

    /**
     * Information about the chat invite link
     */
    public ChatInviteLinkInfo info { get; construct set; }

    public TMeUrlTypeChatInvite (
        ChatInviteLinkInfo info
    ) {
        Object (
            info: info,
            tdlib_type: "tMeUrlTypeChatInvite",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A URL linking to a sticker set
 */
public class TDLib.TMeUrlTypeStickerSet : TMeUrlType {

    /**
     * Identifier of the sticker set
     */
    public int64 sticker_set_id { get; construct set; }

    public TMeUrlTypeStickerSet (
        int64 sticker_set_id
    ) {
        Object (
            sticker_set_id: sticker_set_id,
            tdlib_type: "tMeUrlTypeStickerSet",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
