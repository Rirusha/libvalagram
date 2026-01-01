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
 * Contains information about background to set
 */
public abstract class TDLib.InputBackground : Error {}

/**
 * A background from a local file
 */
public class TDLib.InputBackgroundLocal : InputBackground {

    /**
     * Background file to use. Only inputFileLocal and inputFileGenerated are
     * supported. The file must be in JPEG format for wallpapers and in PNG
     * format for patterns
     */
    public InputFile background { get; construct set; }

    public InputBackgroundLocal (
        InputFile background
    ) {
        Object (
            background: background,
            tdlib_type: "inputBackgroundLocal",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A background from the server
 */
public class TDLib.InputBackgroundRemote : InputBackground {

    /**
     * The background identifier
     */
    public int64 background_id { get; construct set; }

    public InputBackgroundRemote (
        int64 background_id
    ) {
        Object (
            background_id: background_id,
            tdlib_type: "inputBackgroundRemote",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A background previously set in the chat; for chat backgrounds only
 */
public class TDLib.InputBackgroundPrevious : InputBackground {

    /**
     * Identifier of the message with the background
     */
    public int64 message_id { get; construct set; }

    public InputBackgroundPrevious (
        int64 message_id
    ) {
        Object (
            message_id: message_id,
            tdlib_type: "inputBackgroundPrevious",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
