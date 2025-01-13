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
 * Describes parameters of a giveaway
 */
public class TDLib.GiveawayParameters : Error {

    /**
     * Identifier of the supergroup or channel chat, which will be
     * automatically boosted by the winners of the giveaway for duration of
     * the Telegram Premium subscription,
     * or for the specified time. If the chat is a channel, then
     * can_post_messages right is required in the channel, otherwise, the
     * user must be an administrator in the supergroup
     */
    public int64 boosted_chat_id { get; construct set; }

    /**
     * Identifiers of other supergroup or channel chats that must be
     * subscribed by the users to be eligible for the giveaway. There can be
     * up to getOption("giveaway_additional_chat_count_max") additional chats
     */
    public Gee.ArrayList<int64?> additional_chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Point in time (Unix timestamp) when the giveaway is expected to be
     * performed; must be 60-getOption("giveaway_duration_max") seconds in
     * the future in scheduled giveaways
     */
    public int32 winners_selection_date { get; construct set; }

    /**
     * True, if only new members of the chats will be eligible for the
     * giveaway
     */
    public bool only_new_members { get; construct set; }

    /**
     * True, if the list of winners of the giveaway will be available to
     * everyone
     */
    public bool has_public_winners { get; construct set; }

    /**
     * The list of two-letter ISO 3166-1 alpha-2 codes of countries, users
     * from which will be eligible for the giveaway. If empty, then all users
     * can participate in the giveaway.
     * There can be up to getOption("giveaway_country_count_max") chosen
     * countries. Users with phone number that was bought at
     * [[https://fragment.com]] can participate in any giveaway and the
     * country code "FT" must not be specified in the list
     */
    public Gee.ArrayList<string?> country_codes { get; construct set; default = new Gee.ArrayList<string?> (); }

    /**
     * Additional description of the giveaway prize; 0-128 characters
     */
    public string prize_description { get; construct set; }

    public GiveawayParameters (
        int64 boosted_chat_id,
        Gee.ArrayList<int64?> additional_chat_ids,
        int32 winners_selection_date,
        bool only_new_members,
        bool has_public_winners,
        Gee.ArrayList<string?> country_codes,
        string prize_description
    ) {
        Object (
            boosted_chat_id: boosted_chat_id,
            additional_chat_ids: additional_chat_ids,
            winners_selection_date: winners_selection_date,
            only_new_members: only_new_members,
            has_public_winners: has_public_winners,
            country_codes: country_codes,
            prize_description: prize_description,
            tdlib_type: "giveawayParameters",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
