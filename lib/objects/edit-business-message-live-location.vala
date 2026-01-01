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
 * Edits the content of a live location in a message sent on behalf of a
 * business account; for bots only
 */
public class TDLib.EditBusinessMessageLiveLocation : TDObject {

    /**
     * Unique identifier of business connection on behalf of which the
     * message was sent
     */
    public string business_connection_id { get; construct set; }

    /**
     * The chat the message belongs to
     */
    public int64 chat_id { get; construct set; }

    /**
     * Identifier of the message
     */
    public int64 message_id { get; construct set; }

    /**
     * The new message reply markup; pass null if none
     */
    public ReplyMarkup reply_markup { get; construct set; }

    /**
     * New location content of the message; pass null to stop sharing the
     * live location
     */
    public Location location { get; construct set; }

    /**
     * New time relative to the message send date, for which the location can
     * be updated, in seconds. If 0x7FFFFFFF specified, then the location can
     * be updated forever.
     * Otherwise, must not exceed the current live_period by more than a day,
     * and the live location expiration date must remain in the next 90 days.
     * Pass 0 to keep the current live_period
     */
    public int32 live_period { get; construct set; }

    /**
     * The new direction in which the location moves, in degrees; 1-360. Pass
     * 0 if unknown
     */
    public int32 heading { get; construct set; }

    /**
     * The new maximum distance for proximity alerts, in meters (0-100000).
     * Pass 0 if the notification is disabled
     */
    public int32 proximity_alert_radius { get; construct set; }

    public EditBusinessMessageLiveLocation (
        string business_connection_id,
        int64 chat_id,
        int64 message_id,
        ReplyMarkup reply_markup,
        Location location,
        int32 live_period,
        int32 heading,
        int32 proximity_alert_radius
    ) {
        Object (
            business_connection_id: business_connection_id,
            chat_id: chat_id,
            message_id: message_id,
            reply_markup: reply_markup,
            location: location,
            live_period: live_period,
            heading: heading,
            proximity_alert_radius: proximity_alert_radius,
            tdlib_type: "editBusinessMessageLiveLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
