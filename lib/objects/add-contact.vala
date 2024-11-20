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
 * Adds a user to the contact list or edits an existing contact by their
 * user identifier
 */
internal class TDLib.AddContact : TDObject {

    /**
     * The contact to add or edit; phone number may be empty and needs to be
     * specified only if known, vCard is ignored
     */
    public Contact contact { get; construct set; }

    /**
     * Pass true to share the current user's phone number with the new
     * contact. A corresponding rule to userPrivacySettingShowPhoneNumber
     * will be added if needed.
     * Use the field userFullInfo.need_phone_number_privacy_exception to
     * check whether the current user needs to be asked to share their phone
     * number
     */
    public bool share_phone_number { get; construct set; }

    public AddContact (
        Contact contact,
        bool share_phone_number
    ) {
        Object (
            contact: contact,
            share_phone_number: share_phone_number,
            tdlib_type: "addContact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
