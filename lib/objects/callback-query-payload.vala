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
 * Represents a payload of a callback query
 */
public abstract class TDLib.CallbackQueryPayload : Error {}

/**
 * The payload for a general callback button
 */
public class TDLib.CallbackQueryPayloadData : CallbackQueryPayload {

    /**
     * Data that was attached to the callback button
     */
    public Bytes data { get; construct set; }

    public CallbackQueryPayloadData (
        Bytes data
    ) {
        Object (
            data: data,
            tdlib_type: "callbackQueryPayloadData",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The payload for a callback button requiring password
 */
public class TDLib.CallbackQueryPayloadDataWithPassword : CallbackQueryPayload {

    /**
     * The 2-step verification password for the current user
     */
    public string password { get; construct set; }

    /**
     * Data that was attached to the callback button
     */
    public Bytes data { get; construct set; }

    public CallbackQueryPayloadDataWithPassword (
        string password,
        Bytes data
    ) {
        Object (
            password: password,
            data: data,
            tdlib_type: "callbackQueryPayloadDataWithPassword",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The payload for a game callback button
 */
public class TDLib.CallbackQueryPayloadGame : CallbackQueryPayload {

    /**
     * A short name of the game that was attached to the callback button
     */
    public string game_short_name { get; construct set; }

    public CallbackQueryPayloadGame (
        string game_short_name
    ) {
        Object (
            game_short_name: game_short_name,
            tdlib_type: "callbackQueryPayloadGame",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
