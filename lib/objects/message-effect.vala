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
 * Contains information about an effect added to a message
 */
public class TDLib.MessageEffect : Error {

    /**
     * Unique identifier of the effect
     */
    public int64 id_ { get; construct set; }

    /**
     * Static icon for the effect in WEBP format; may be null if none
     */
    public Sticker? static_icon { get; construct set; }

    /**
     * Emoji corresponding to the effect that can be used if static icon
     * isn't available
     */
    public string emoji { get; construct set; }

    /**
     * True, if Telegram Premium subscription is required to use the effect
     */
    public bool is_premium { get; construct set; }

    /**
     * Type of the effect
     */
    public MessageEffectType type_ { get; construct set; }

    public MessageEffect (
        int64 id_,
        Sticker? static_icon,
        string emoji,
        bool is_premium,
        MessageEffectType type_
    ) {
        Object (
            id_: id_,
            static_icon: static_icon,
            emoji: emoji,
            is_premium: is_premium,
            type_: type_,
            tdlib_type: "messageEffect",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
