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
 * Deletes a gift collection. If the collection is owned by a channel
 * chat, then requires can_post_messages administrator right in the
 * channel chat
 */
public class TDLib.DeleteGiftCollection : TDObject {

    /**
     * Identifier of the user or the channel chat that owns the collection
     */
    public MessageSender owner_id { get; construct set; }

    /**
     * Identifier of the gift collection
     */
    public int32 collection_id { get; construct set; }

    public DeleteGiftCollection (
        MessageSender owner_id,
        int32 collection_id
    ) {
        Object (
            owner_id: owner_id,
            collection_id: collection_id,
            tdlib_type: "deleteGiftCollection",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
