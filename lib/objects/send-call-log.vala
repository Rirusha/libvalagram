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
 * Sends log file for a call to Telegram servers
 */
public class TDLib.SendCallLog : TDObject {

    /**
     * Call identifier
     */
    public int32 call_id { get; construct set; }

    /**
     * Call log file. Only inputFileLocal and inputFileGenerated are
     * supported
     */
    public InputFile log_file { get; construct set; }

    public SendCallLog (
        int32 call_id,
        InputFile log_file
    ) {
        Object (
            call_id: call_id,
            log_file: log_file,
            tdlib_type: "sendCallLog",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
