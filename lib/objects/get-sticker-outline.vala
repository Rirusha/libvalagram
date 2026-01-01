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
 * Returns outline of a sticker. This is an offline method. Returns a 404
 * error if the outline isn't known
 */
public class TDLib.GetStickerOutline : TDObject {

    /**
     * File identifier of the sticker
     */
    public int32 sticker_file_id { get; construct set; }

    /**
     * Pass true to get the outline scaled for animated emoji
     */
    public bool for_animated_emoji { get; construct set; }

    /**
     * Pass true to get the outline scaled for clicked animated emoji message
     */
    public bool for_clicked_animated_emoji_message { get; construct set; }

    public GetStickerOutline (
        int32 sticker_file_id,
        bool for_animated_emoji,
        bool for_clicked_animated_emoji_message
    ) {
        Object (
            sticker_file_id: sticker_file_id,
            for_animated_emoji: for_animated_emoji,
            for_clicked_animated_emoji_message: for_clicked_animated_emoji_message,
            tdlib_type: "getStickerOutline",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
