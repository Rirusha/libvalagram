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
 * Describes private chats chosen for automatic interaction with a
 * business
 */
public class TDLib.BusinessRecipients : Error {

    /**
     * Identifiers of selected private chats
     */
    public Gee.ArrayList<int64?> chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * Identifiers of private chats that are always excluded; for
     * businessConnectedBot only
     */
    public Gee.ArrayList<int64?> excluded_chat_ids { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * True, if all existing private chats are selected
     */
    public bool select_existing_chats { get; construct set; }

    /**
     * True, if all new private chats are selected
     */
    public bool select_new_chats { get; construct set; }

    /**
     * True, if all private chats with contacts are selected
     */
    public bool select_contacts { get; construct set; }

    /**
     * True, if all private chats with non-contacts are selected
     */
    public bool select_non_contacts { get; construct set; }

    /**
     * If true, then all private chats except the selected are chosen.
     * Otherwise, only the selected chats are chosen
     */
    public bool exclude_selected { get; construct set; }

    public BusinessRecipients (
        Gee.ArrayList<int64?> chat_ids,
        Gee.ArrayList<int64?> excluded_chat_ids,
        bool select_existing_chats,
        bool select_new_chats,
        bool select_contacts,
        bool select_non_contacts,
        bool exclude_selected
    ) {
        Object (
            chat_ids: chat_ids,
            excluded_chat_ids: excluded_chat_ids,
            select_existing_chats: select_existing_chats,
            select_new_chats: select_new_chats,
            select_contacts: select_contacts,
            select_non_contacts: select_non_contacts,
            exclude_selected: exclude_selected,
            tdlib_type: "businessRecipients",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
