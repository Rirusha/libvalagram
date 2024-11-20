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
 * Contains information about status of a user in a giveaway
 */
public abstract class TDLib.GiveawayParticipantStatus : Error {}

/**
 * The user is eligible for the giveaway
 */
public class TDLib.GiveawayParticipantStatusEligible : GiveawayParticipantStatus {

    public GiveawayParticipantStatusEligible () {
        Object (
            tdlib_type: "giveawayParticipantStatusEligible",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user participates in the giveaway
 */
public class TDLib.GiveawayParticipantStatusParticipating : GiveawayParticipantStatus {

    public GiveawayParticipantStatusParticipating () {
        Object (
            tdlib_type: "giveawayParticipantStatusParticipating",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user can't participate in the giveaway, because they have already
 * been member of the chat
 */
public class TDLib.GiveawayParticipantStatusAlreadyWasMember : GiveawayParticipantStatus {

    /**
     * Point in time (Unix timestamp) when the user joined the chat
     */
    public int32 joined_chat_date { get; construct set; }

    public GiveawayParticipantStatusAlreadyWasMember (
        int32 joined_chat_date
    ) {
        Object (
            joined_chat_date: joined_chat_date,
            tdlib_type: "giveawayParticipantStatusAlreadyWasMember",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user can't participate in the giveaway, because they are an
 * administrator in one of the chats that created the giveaway
 */
public class TDLib.GiveawayParticipantStatusAdministrator : GiveawayParticipantStatus {

    /**
     * Identifier of the chat administered by the user
     */
    public int64 chat_id { get; construct set; }

    public GiveawayParticipantStatusAdministrator (
        int64 chat_id
    ) {
        Object (
            chat_id: chat_id,
            tdlib_type: "giveawayParticipantStatusAdministrator",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user can't participate in the giveaway, because they phone number
 * is from a disallowed country
 */
public class TDLib.GiveawayParticipantStatusDisallowedCountry : GiveawayParticipantStatus {

    /**
     * A two-letter ISO 3166-1 alpha-2 country code of the user's country
     */
    public string user_country_code { get; construct set; }

    public GiveawayParticipantStatusDisallowedCountry (
        string user_country_code
    ) {
        Object (
            user_country_code: user_country_code,
            tdlib_type: "giveawayParticipantStatusDisallowedCountry",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
