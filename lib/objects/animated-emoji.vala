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
 * Describes an animated or custom representation of an emoji
 */
public class TDLib.AnimatedEmoji : Error {

    /**
     * Sticker for the emoji; may be null if yet unknown for a custom emoji.
     * If the sticker is a custom emoji, then it can have arbitrary format
     */
    public Sticker? sticker { get; construct set; }

    /**
     * Expected width of the sticker, which can be used if the sticker is
     * null
     */
    public int32 sticker_width { get; construct set; }

    /**
     * Expected height of the sticker, which can be used if the sticker is
     * null
     */
    public int32 sticker_height { get; construct set; }

    /**
     * Emoji modifier fitzpatrick type; 0-6; 0 if none
     */
    public int32 fitzpatrick_type { get; construct set; }

    /**
     * File containing the sound to be played when the sticker is clicked;
     * may be null. The sound is encoded with the Opus codec, and stored
     * inside an OGG container
     */
    public File? sound { get; construct set; }

    public AnimatedEmoji (
        Sticker? sticker,
        int32 sticker_width,
        int32 sticker_height,
        int32 fitzpatrick_type,
        File? sound
    ) {
        Object (
            sticker: sticker,
            sticker_width: sticker_width,
            sticker_height: sticker_height,
            fitzpatrick_type: fitzpatrick_type,
            sound: sound,
            tdlib_type: "animatedEmoji",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
