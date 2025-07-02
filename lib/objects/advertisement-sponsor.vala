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
 * Information about the sponsor of an advertisement
 */
public class TDLib.AdvertisementSponsor : Error {

    /**
     * URL of the sponsor to be opened when the advertisement is clicked
     */
    public string url { get; construct set; }

    /**
     * Photo of the sponsor; may be null if must not be shown
     */
    public Photo? photo { get; construct set; }

    /**
     * Additional optional information about the sponsor to be shown along
     * with the advertisement
     */
    public string info { get; construct set; }

    public AdvertisementSponsor (
        string url,
        Photo? photo,
        string info
    ) {
        Object (
            url: url,
            photo: photo,
            info: info,
            tdlib_type: "advertisementSponsor",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
