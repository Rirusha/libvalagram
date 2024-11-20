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
 * Information about the sticker, which was used to create the chat
 * photo. The sticker is shown at the center of the photo and occupies at
 * most 67% of it
 */
public class TDLib.ChatPhotoSticker : Error {

    /**
     * Type of the sticker
     */
    public ChatPhotoStickerType type_ { get; construct set; }

    /**
     * The fill to be used as background for the sticker; rotation angle in
     * backgroundFillGradient isn't supported
     */
    public BackgroundFill background_fill { get; construct set; }

    public ChatPhotoSticker (
        ChatPhotoStickerType type_,
        BackgroundFill background_fill
    ) {
        Object (
            type_: type_,
            background_fill: background_fill,
            tdlib_type: "chatPhotoSticker",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
