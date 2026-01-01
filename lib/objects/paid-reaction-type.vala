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
 * Describes type of paid message reaction
 */
public abstract class TDLib.PaidReactionType : Error {}

/**
 * A paid reaction on behalf of the current user
 */
public class TDLib.PaidReactionTypeRegular : PaidReactionType {

    public PaidReactionTypeRegular () {
        Object (
            tdlib_type: "paidReactionTypeRegular",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An anonymous paid reaction
 */
public class TDLib.PaidReactionTypeAnonymous : PaidReactionType {

    public PaidReactionTypeAnonymous () {
        Object (
            tdlib_type: "paidReactionTypeAnonymous",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A paid reaction on behalf of an owned chat
 */
public class TDLib.PaidReactionTypeChat : PaidReactionType {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    public PaidReactionTypeChat (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "paidReactionTypeChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
