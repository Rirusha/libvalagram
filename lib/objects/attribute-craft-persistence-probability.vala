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
 * Describes chance of the crafted gift to have the backdrop or symbol of
 * one of the original gifts
 */
public class TDLib.AttributeCraftPersistenceProbability : Error {

    /**
     * The 4 numbers that describe probability of the craft result to have
     * the same attribute as one of the original gifts
     * if 1, 2, 3, or 4 gifts with the attribute are used in the craft. Each
     * number represents the number of crafted gifts with the original
     * attribute per 1000 successful craftings
     */
    public Gee.ArrayList<int32?> persistence_chance_per_mille { get; construct set; default = new Gee.ArrayList<int32?> (); }

    public AttributeCraftPersistenceProbability (
        Gee.ArrayList<int32?> persistence_chance_per_mille
    ) {
        Object (
            persistence_chance_per_mille: persistence_chance_per_mille,
            tdlib_type: "attributeCraftPersistenceProbability",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
