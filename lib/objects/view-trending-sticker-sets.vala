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
 * Informs the server that some trending sticker sets have been viewed by
 * the user
 */
public class TDLib.ViewTrendingStickerSets : TDObject {

    /**
     * Identifiers of viewed trending sticker sets
     */
    public Gee.ArrayList<int64?> sticker_set_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    public ViewTrendingStickerSets (
        Gee.ArrayList<int64?> sticker_set_ids
    ) {
        Object (
            sticker_set_ids: sticker_set_ids,
            tdlib_type: "viewTrendingStickerSets",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
