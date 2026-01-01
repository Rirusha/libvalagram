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
 * Describes a venue
 */
public class TDLib.Venue : Error {

    /**
     * Venue location; as defined by the sender
     */
    public Location location { get; construct set; }

    /**
     * Venue name; as defined by the sender
     */
    public string title { get; construct set; }

    /**
     * Venue address; as defined by the sender
     */
    public string address { get; construct set; }

    /**
     * Provider of the venue database; as defined by the sender. Currently,
     * only "foursquare" and "gplaces" (Google Places) need to be supported
     */
    public string provider { get; construct set; }

    /**
     * Identifier of the venue in the provider database; as defined by the
     * sender
     */
    public string id_ { get; construct set; }

    /**
     * Type of the venue in the provider database; as defined by the sender
     */
    public string type_ { get; construct set; }

    public Venue (
        Location location,
        string title,
        string address,
        string provider,
        string id_,
        string type_
    ) {
        Object (
            location: location,
            title: title,
            address: address,
            provider: provider,
            id_: id_,
            type_: type_,
            tdlib_type: "venue",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
