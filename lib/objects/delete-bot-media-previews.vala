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
 * Delete media previews from the list of media previews of a bot
 */
internal class TDLib.DeleteBotMediaPreviews : TDObject {

    /**
     * Identifier of the target bot. The bot must be owned and must have the
     * main Web App
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Language code of the media previews to delete
     */
    public string language_code { get; construct set; }

    /**
     * File identifiers of the media to delete
     */
    public Gee.ArrayList<int32?> file_ids { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public DeleteBotMediaPreviews (
        int64 bot_user_id,
        string language_code,
        Gee.ArrayList<int32?> file_ids
    ) {
        Object (
            bot_user_id: bot_user_id,
            language_code: language_code,
            file_ids: file_ids,
            tdlib_type: "deleteBotMediaPreviews",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
