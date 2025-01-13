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
 * Sets a custom emoji sticker set thumbnail
 */
public class TDLib.SetCustomEmojiStickerSetThumbnail : TDObject {

    /**
     * Sticker set name. The sticker set must be owned by the current user
     */
    public string name { get; construct set; }

    /**
     * Identifier of the custom emoji from the sticker set, which will be set
     * as sticker set thumbnail; pass 0 to remove the sticker set thumbnail
     */
    public int64 custom_emoji_id { get; construct set; }

    public SetCustomEmojiStickerSetThumbnail (
        string name,
        int64 custom_emoji_id
    ) {
        Object (
            name: name,
            custom_emoji_id: custom_emoji_id,
            tdlib_type: "setCustomEmojiStickerSetThumbnail",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
