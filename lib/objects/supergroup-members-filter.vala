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
 * Specifies the kind of chat members to return in getSupergroupMembers
 */
public abstract class TDLib.SupergroupMembersFilter : Error {}

/**
 * Returns recently active users in reverse chronological order
 */
public class TDLib.SupergroupMembersFilterRecent : SupergroupMembersFilter {

    public SupergroupMembersFilterRecent () {
        Object (
            tdlib_type: "supergroupMembersFilterRecent",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns contacts of the user, which are members of the supergroup or
 * channel
 */
public class TDLib.SupergroupMembersFilterContacts : SupergroupMembersFilter {

    /**
     * Query to search for
     */
    public string query { get; construct set; }

    public SupergroupMembersFilterContacts (
        string query
    ) {
        Object (
            query: query,
            tdlib_type: "supergroupMembersFilterContacts",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns the owner and administrators
 */
public class TDLib.SupergroupMembersFilterAdministrators : SupergroupMembersFilter {

    public SupergroupMembersFilterAdministrators () {
        Object (
            tdlib_type: "supergroupMembersFilterAdministrators",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Used to search for supergroup or channel members via a (string) query
 */
public class TDLib.SupergroupMembersFilterSearch : SupergroupMembersFilter {

    /**
     * Query to search for
     */
    public string query { get; construct set; }

    public SupergroupMembersFilterSearch (
        string query
    ) {
        Object (
            query: query,
            tdlib_type: "supergroupMembersFilterSearch",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns restricted supergroup members; can be used only by
 * administrators
 */
public class TDLib.SupergroupMembersFilterRestricted : SupergroupMembersFilter {

    /**
     * Query to search for
     */
    public string query { get; construct set; }

    public SupergroupMembersFilterRestricted (
        string query
    ) {
        Object (
            query: query,
            tdlib_type: "supergroupMembersFilterRestricted",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns users banned from the supergroup or channel; can be used only
 * by administrators
 */
public class TDLib.SupergroupMembersFilterBanned : SupergroupMembersFilter {

    /**
     * Query to search for
     */
    public string query { get; construct set; }

    public SupergroupMembersFilterBanned (
        string query
    ) {
        Object (
            query: query,
            tdlib_type: "supergroupMembersFilterBanned",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns users which can be mentioned in the supergroup
 */
public class TDLib.SupergroupMembersFilterMention : SupergroupMembersFilter {

    /**
     * Query to search for
     */
    public string query { get; construct set; }

    /**
     * If non-zero, the identifier of the current message thread
     */
    public int64 message_thread_id { get; construct set; }

    public SupergroupMembersFilterMention (
        string query,
        int64 message_thread_id
    ) {
        Object (
            query: query,
            message_thread_id: message_thread_id,
            tdlib_type: "supergroupMembersFilterMention",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Returns bot members of the supergroup or channel
 */
public class TDLib.SupergroupMembersFilterBots : SupergroupMembersFilter {

    public SupergroupMembersFilterBots () {
        Object (
            tdlib_type: "supergroupMembersFilterBots",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
