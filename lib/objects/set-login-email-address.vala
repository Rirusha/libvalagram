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
 * Changes the login email address of the user. The email address can be
 * changed only if the current user already has login email and
 * passwordState.login_email_address_pattern is non-empty,
 * or the user received suggestedActionSetLoginEmailAddress and
 * {@link Client.is_login_email_address_required} succeeds. The change
 * will not be applied until the new login email address is confirmed
 * with {@link Client.check_login_email_address_code}
 * To use Apple ID/Google ID instead of an email address, call
 * {@link Client.check_login_email_address_code} directly
 */
public class TDLib.SetLoginEmailAddress : TDObject {

    /**
     * New login email address
     */
    public string new_login_email_address { get; construct set; }

    public SetLoginEmailAddress (
        string new_login_email_address
    ) {
        Object (
            new_login_email_address: new_login_email_address,
            tdlib_type: "setLoginEmailAddress",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
