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
 * Changes name of a quick reply shortcut
 */
public class TDLib.SetQuickReplyShortcutName : TDObject {

    /**
     * Unique identifier of the quick reply shortcut
     */
    public int32 shortcut_id { get; construct set; }

    /**
     * New name for the shortcut. Use
     * {@link Client.check_quick_reply_shortcut_name} to check its validness
     */
    public string name { get; construct set; }

    public SetQuickReplyShortcutName (
        int32 shortcut_id,
        string name
    ) {
        Object (
            shortcut_id: shortcut_id,
            name: name,
            tdlib_type: "setQuickReplyShortcutName",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
