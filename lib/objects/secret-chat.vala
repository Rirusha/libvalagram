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
 * Represents a secret chat
 */
public class TDLib.SecretChat : Error {

    /**
     * Secret chat identifier
     */
    public int32 id_ { get; construct set; }

    /**
     * Identifier of the chat partner
     */
    public int64 user_id { get; construct set; }

    /**
     * State of the secret chat
     */
    public SecretChatState state { get; construct set; }

    /**
     * True, if the chat was created by the current user; false otherwise
     */
    public bool is_outbound { get; construct set; }

    /**
     * Hash of the currently used key for comparison with the hash of the
     * chat partner's key. This is a string of 36 little-endian bytes, which
     * must be split into groups of 2 bits, each denoting a pixel of one of 4
     * colors FFFFFF, D5E6F3, 2D5775, and 2F99C9.
     * The pixels must be used to make a 12x12 square image filled from left
     * to right, top to bottom. Alternatively, the first 32 bytes of the hash
     * can be converted to the hexadecimal format and printed as 32 2-digit
     * hex numbers
     */
    public Bytes key_hash { get; construct set; }

    /**
     * Secret chat layer; determines features supported by the chat partner's
     * application. Nested text entities and underline and strikethrough
     * entities are supported if the layer >= 101,
     * files bigger than 2000MB are supported if the layer >= 143, spoiler
     * and custom emoji text entities are supported if the layer >= 144
     */
    public int32 layer { get; construct set; }

    public SecretChat (
        int32 id_,
        int64 user_id,
        SecretChatState state,
        bool is_outbound,
        Bytes key_hash,
        int32 layer
    ) {
        Object (
            id_: id_,
            user_id: user_id,
            state: state,
            is_outbound: is_outbound,
            key_hash: key_hash,
            layer: layer,
            tdlib_type: "secretChat",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
