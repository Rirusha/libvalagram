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
 * Uploads a file with a sticker; returns the uploaded file
 */
public class TDLib.UploadStickerFile : TDObject {

    /**
     * Sticker file owner; ignored for regular users
     */
    public int64 user_id { get; construct set; }

    /**
     * Sticker format
     */
    public StickerFormat sticker_format { get; construct set; }

    /**
     * File file to upload; must fit in a 512x512 square. For WEBP stickers
     * the file must be in WEBP or PNG format, which will be converted to
     * WEBP server-side.
     * See
     * [[https://core.telegram.org/animated_stickers#technical-requirements]]
     * for technical requirements
     */
    public InputFile sticker { get; construct set; }

    public UploadStickerFile (
        int64 user_id,
        StickerFormat sticker_format,
        InputFile sticker
    ) {
        Object (
            user_id: user_id,
            sticker_format: sticker_format,
            sticker: sticker,
            tdlib_type: "uploadStickerFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
