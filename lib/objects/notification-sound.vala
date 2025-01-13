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
 * Describes a notification sound in MP3 format
 */
public class TDLib.NotificationSound : Error {

    /**
     * Unique identifier of the notification sound
     */
    public int64 id_ { get; construct set; }

    /**
     * Duration of the sound, in seconds
     */
    public int32 duration { get; construct set; }

    /**
     * Point in time (Unix timestamp) when the sound was created
     */
    public int32 date { get; construct set; }

    /**
     * Title of the notification sound
     */
    public string title { get; construct set; }

    /**
     * Arbitrary data, defined while the sound was uploaded
     */
    public string data { get; construct set; }

    /**
     * File containing the sound
     */
    public File sound { get; construct set; }

    public NotificationSound (
        int64 id_,
        int32 duration,
        int32 date,
        string title,
        string data,
        File sound
    ) {
        Object (
            id_: id_,
            duration: duration,
            date: date,
            title: title,
            data: data,
            sound: sound,
            tdlib_type: "notificationSound",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
