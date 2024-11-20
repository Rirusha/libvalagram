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
 * Describes type of emoji effect
 */
public abstract class TDLib.MessageEffectType : Error {}

/**
 * An effect from an emoji reaction
 */
public class TDLib.MessageEffectTypeEmojiReaction : MessageEffectType {

    /**
     * Select animation for the effect in TGS format
     */
    public Sticker select_animation { get; construct set; }

    /**
     * Effect animation for the effect in TGS format
     */
    public Sticker effect_animation { get; construct set; }

    public MessageEffectTypeEmojiReaction (
        Sticker select_animation,
        Sticker effect_animation
    ) {
        Object (
            select_animation: select_animation,
            effect_animation: effect_animation,
            tdlib_type: "messageEffectTypeEmojiReaction",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An effect from a premium sticker
 */
public class TDLib.MessageEffectTypePremiumSticker : MessageEffectType {

    /**
     * The premium sticker. The effect can be found at
     * sticker.full_type.premium_animation
     */
    public Sticker sticker { get; construct set; }

    public MessageEffectTypePremiumSticker (
        Sticker sticker
    ) {
        Object (
            sticker: sticker,
            tdlib_type: "messageEffectTypePremiumSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
