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
 * Contains a list of advertisements to be shown while a video from a
 * message is watched
 */
public class TDLib.VideoMessageAdvertisements : Error {

    /**
     * List of advertisements
     */
    public Gee.ArrayList<VideoMessageAdvertisement?> advertisements { get; construct set; default = new Gee.ArrayList<VideoMessageAdvertisement?> (); }

    /**
     * Delay before the first advertisement is shown, in seconds
     */
    public int32 start_delay { get; construct set; }

    /**
     * Delay between consecutive advertisements, in seconds
     */
    public int32 between_delay { get; construct set; }

    public VideoMessageAdvertisements (
        Gee.ArrayList<VideoMessageAdvertisement?> advertisements,
        int32 start_delay,
        int32 between_delay
    ) {
        Object (
            advertisements: advertisements,
            start_delay: start_delay,
            between_delay: between_delay,
            tdlib_type: "videoMessageAdvertisements",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
