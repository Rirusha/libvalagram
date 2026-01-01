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
 * Checks whether a file can be downloaded and saved locally by Web App
 * request
 */
public class TDLib.CheckWebAppFileDownload : TDObject {

    /**
     * Identifier of the bot, providing the Web App
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Name of the file
     */
    public string file_name { get; construct set; }

    /**
     * URL of the file
     */
    public string url { get; construct set; }

    public CheckWebAppFileDownload (
        int64 bot_user_id,
        string file_name,
        string url
    ) {
        Object (
            bot_user_id: bot_user_id,
            file_name: file_name,
            url: url,
            tdlib_type: "checkWebAppFileDownload",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
