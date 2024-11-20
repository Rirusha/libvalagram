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
 * Describes an item of a list page block
 */
public class TDLib.PageBlockListItem : Error {

    /**
     * Item label
     */
    public string label { get; construct set; }

    /**
     * Item blocks
     */
    public Gee.ArrayList<PageBlock?> page_blocks { get; construct set; default = new Gee.ArrayList<PageBlock?> (); }

    public PageBlockListItem (
        string label,
        Gee.ArrayList<PageBlock?> page_blocks
    ) {
        Object (
            label: label,
            page_blocks: page_blocks,
            tdlib_type: "pageBlockListItem",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
