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
 * Sets default administrator rights for adding the bot to basic group
 * and supergroup chats; for bots only
 */
internal class TDLib.SetDefaultGroupAdministratorRights : TDObject {

    /**
     * Default administrator rights for adding the bot to basic group and
     * supergroup chats; pass null to remove default rights
     */
    public ChatAdministratorRights default_group_administrator_rights { get; construct set; }

    public SetDefaultGroupAdministratorRights (
        ChatAdministratorRights default_group_administrator_rights
    ) {
        Object (
            default_group_administrator_rights: default_group_administrator_rights,
            tdlib_type: "setDefaultGroupAdministratorRights",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
