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
 * Contains information about an emoji reaction
 */
public class TDLib.EmojiReaction : Error {

    /**
     * Text representation of the reaction
     */
    public string emoji { get; construct set; }

    /**
     * Reaction title
     */
    public string title { get; construct set; }

    /**
     * True, if the reaction can be added to new messages and enabled in
     * chats
     */
    public bool is_active { get; construct set; }

    /**
     * Static icon for the reaction
     */
    public Sticker static_icon { get; construct set; }

    /**
     * Appear animation for the reaction
     */
    public Sticker appear_animation { get; construct set; }

    /**
     * Select animation for the reaction
     */
    public Sticker select_animation { get; construct set; }

    /**
     * Activate animation for the reaction
     */
    public Sticker activate_animation { get; construct set; }

    /**
     * Effect animation for the reaction
     */
    public Sticker effect_animation { get; construct set; }

    /**
     * Around animation for the reaction; may be null
     */
    public Sticker? around_animation { get; construct set; }

    /**
     * Center animation for the reaction; may be null
     */
    public Sticker? center_animation { get; construct set; }

    public EmojiReaction (
        string emoji,
        string title,
        bool is_active,
        Sticker static_icon,
        Sticker appear_animation,
        Sticker select_animation,
        Sticker activate_animation,
        Sticker effect_animation,
        Sticker? around_animation,
        Sticker? center_animation
    ) {
        Object (
            emoji: emoji,
            title: title,
            is_active: is_active,
            static_icon: static_icon,
            appear_animation: appear_animation,
            select_animation: select_animation,
            activate_animation: activate_animation,
            effect_animation: effect_animation,
            around_animation: around_animation,
            center_animation: center_animation,
            tdlib_type: "emojiReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
