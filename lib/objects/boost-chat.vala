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
 * Boosts a chat and returns the list of available chat boost slots for
 * the current user after the boost
 */
internal class TDLib.BoostChat : TDObject {

    /**
     * Identifier of the chat
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifiers of boost slots of the current user from which to apply
     * boosts to the chat
     */
    public Gee.ArrayList<int32?> slot_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public BoostChat (
        int64 chat_id,
        Gee.ArrayList<int32?> slot_ids
    ) {
        Object (
            chat_id: chat_id,
            slot_ids: slot_ids,
            tdlib_type: "boostChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
