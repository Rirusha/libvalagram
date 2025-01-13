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
 * Changes affiliate program for a bot
 */
public class TDLib.SetChatAffiliateProgram : TDObject {

    /**
     * Identifier of the chat with an owned bot for which affiliate program
     * is changed
     */
    public int64 chat_id { get; construct set; }

    /**
     * Parameters of the affiliate program; pass null to {@link Client.close}
     * the currently active program. If there is an active program, then
     * commission and program duration can only be increased.
     * If the active program is scheduled to be closed, then it can't be
     * changed anymore
     */
    public AffiliateProgramParameters parameters { get; construct set; }

    public SetChatAffiliateProgram (
        int64 chat_id,
        AffiliateProgramParameters parameters
    ) {
        Object (
            chat_id: chat_id,
            parameters: parameters,
            tdlib_type: "setChatAffiliateProgram",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
