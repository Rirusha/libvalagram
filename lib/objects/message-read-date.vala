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
 * Describes read date of a recent outgoing message in a private chat
 */
public abstract class TDLib.MessageReadDate : Error {}

/**
 * Contains read date of the message
 */
public class TDLib.MessageReadDateRead : MessageReadDate {

    /**
     * Point in time (Unix timestamp) when the message was read by the other
     * user
     */
    public int32 read_date { get; construct set; }

    public MessageReadDateRead (
        int32 read_date
    ) {
        Object (
            read_date: read_date,
            tdlib_type: "messageReadDateRead",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message is unread yet
 */
public class TDLib.MessageReadDateUnread : MessageReadDate {

    public MessageReadDateUnread () {
        Object (
            tdlib_type: "messageReadDateUnread",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The message is too old to get read date
 */
public class TDLib.MessageReadDateTooOld : MessageReadDate {

    public MessageReadDateTooOld () {
        Object (
            tdlib_type: "messageReadDateTooOld",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The read date is unknown due to privacy settings of the other user
 */
public class TDLib.MessageReadDateUserPrivacyRestricted : MessageReadDate {

    public MessageReadDateUserPrivacyRestricted () {
        Object (
            tdlib_type: "messageReadDateUserPrivacyRestricted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The read date is unknown due to privacy settings of the current user,
 * but will be known if the user subscribes to Telegram Premium
 */
public class TDLib.MessageReadDateMyPrivacyRestricted : MessageReadDate {

    public MessageReadDateMyPrivacyRestricted () {
        Object (
            tdlib_type: "messageReadDateMyPrivacyRestricted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
