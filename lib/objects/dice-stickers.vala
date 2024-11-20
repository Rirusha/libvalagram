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
 * Contains animated stickers which must be used for dice animation
 * rendering
 */
public abstract class TDLib.DiceStickers : Error {}

/**
 * A regular animated sticker
 */
public class TDLib.DiceStickersRegular : DiceStickers {

    /**
     * The animated sticker with the dice animation
     */
    public Sticker sticker { get; construct set; }

    public DiceStickersRegular (
        Sticker sticker
    ) {
        Object (
            sticker: sticker,
            tdlib_type: "diceStickersRegular",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Animated stickers to be combined into a slot machine
 */
public class TDLib.DiceStickersSlotMachine : DiceStickers {

    /**
     * The animated sticker with the slot machine background. The background
     * animation must start playing after all reel animations finish
     */
    public Sticker background { get; construct set; }

    /**
     * The animated sticker with the lever animation. The lever animation
     * must play once in the initial dice state
     */
    public Sticker lever { get; construct set; }

    /**
     * The animated sticker with the left reel
     */
    public Sticker left_reel { get; construct set; }

    /**
     * The animated sticker with the center reel
     */
    public Sticker center_reel { get; construct set; }

    /**
     * The animated sticker with the right reel
     */
    public Sticker right_reel { get; construct set; }

    public DiceStickersSlotMachine (
        Sticker background,
        Sticker lever,
        Sticker left_reel,
        Sticker center_reel,
        Sticker right_reel
    ) {
        Object (
            background: background,
            lever: lever,
            left_reel: left_reel,
            center_reel: center_reel,
            right_reel: right_reel,
            tdlib_type: "diceStickersSlotMachine",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
