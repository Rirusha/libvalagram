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
 * Contains information about restrictions that must be applied to a chat
 * or a message
 */
public class TDLib.RestrictionInfo : Error {

    /**
     * A human-readable description of the reason why access to the content
     * must be restricted. If empty, then the content can be accessed,
     * but may be covered by hidden with 18+ spoiler anyway
     */
    public string restriction_reason { get; construct set; }

    /**
     * True, if media content of the messages must be hidden with 18+
     * spoiler.
     * Use value of the option "can_ignore_sensitive_content_restrictions" to
     * check whether the current user can ignore the restriction.
     * If age verification parameters were received in
     * updateAgeVerificationParameters, then the user must complete age
     * verification to ignore the restriction.
     * Set the option "ignore_sensitive_content_restrictions" to true if the
     * user passes age verification
     */
    public bool has_sensitive_content { get; construct set; }

    public RestrictionInfo (
        string restriction_reason,
        bool has_sensitive_content
    ) {
        Object (
            restriction_reason: restriction_reason,
            has_sensitive_content: has_sensitive_content,
            tdlib_type: "restrictionInfo",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
