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
 * Informs the server about the number of pending bot updates if they
 * haven't been processed for a long time; for bots only
 */
internal class TDLib.SetBotUpdatesStatus : TDObject {

    /**
     * The number of pending updates
     */
    public int32 pending_update_count { get; construct set; }

    /**
     * The last error message
     */
    public string error_message { get; construct set; }

    public SetBotUpdatesStatus (
        int32 pending_update_count,
        string error_message
    ) {
        Object (
            pending_update_count: pending_update_count,
            error_message: error_message,
            tdlib_type: "setBotUpdatesStatus",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
