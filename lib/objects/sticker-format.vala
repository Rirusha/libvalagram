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
 * Describes format of a sticker
 */
public abstract class TDLib.StickerFormat : Error {}

/**
 * The sticker is an image in WEBP format
 */
public class TDLib.StickerFormatWebp : StickerFormat {

    public StickerFormatWebp () {
        Object (
            tdlib_type: "stickerFormatWebp",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The sticker is an animation in TGS format
 */
public class TDLib.StickerFormatTgs : StickerFormat {

    public StickerFormatTgs () {
        Object (
            tdlib_type: "stickerFormatTgs",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The sticker is a video in WEBM format
 */
public class TDLib.StickerFormatWebm : StickerFormat {

    public StickerFormatWebm () {
        Object (
            tdlib_type: "stickerFormatWebm",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
