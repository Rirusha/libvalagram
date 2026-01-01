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
 * Describes a bot connected to a business account
 */
public class TDLib.BusinessConnectedBot : Error {

    /**
     * User identifier of the bot
     */
    public int64 bot_user_id { get; construct set; }

    /**
     * Private chats that will be accessible to the bot
     */
    public BusinessRecipients recipients { get; construct set; }

    /**
     * Rights of the bot
     */
    public BusinessBotRights rights { get; construct set; }

    public BusinessConnectedBot (
        int64 bot_user_id,
        BusinessRecipients recipients,
        BusinessBotRights rights
    ) {
        Object (
            bot_user_id: bot_user_id,
            recipients: recipients,
            rights: rights,
            tdlib_type: "businessConnectedBot",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
