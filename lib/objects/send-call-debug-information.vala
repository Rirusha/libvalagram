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
 * Sends debug information for a call to Telegram servers
 */
internal class TDLib.SendCallDebugInformation : TDObject {

    /**
     * Call identifier
     */
    public int32 call_id { get; construct set; }

    /**
     * Debug information in application-specific format
     */
    public string debug_information { get; construct set; }

    public SendCallDebugInformation (
        int32 call_id,
        string debug_information
    ) {
        Object (
            call_id: call_id,
            debug_information: debug_information,
            tdlib_type: "sendCallDebugInformation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
