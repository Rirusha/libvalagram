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
 * Describes result of story report
 */
public abstract class TDLib.ReportStoryResult : Error {}

/**
 * The story was reported successfully
 */
public class TDLib.ReportStoryResultOk : ReportStoryResult {

    public ReportStoryResultOk () {
        Object (
            tdlib_type: "reportStoryResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user must choose an option to report the story and repeat request
 * with the chosen option
 */
public class TDLib.ReportStoryResultOptionRequired : ReportStoryResult {

    /**
     * Title for the option choice
     */
    public string title { get; construct set; }

    /**
     * List of available options
     */
    public Gee.ArrayList<ReportOption?> options { get; construct set; default = new Gee.ArrayList<ReportOption?> (); }

    public ReportStoryResultOptionRequired (
        string title,
        Gee.ArrayList<ReportOption?> options
    ) {
        Object (
            title: title,
            options: options,
            tdlib_type: "reportStoryResultOptionRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user must add additional text details to the report
 */
public class TDLib.ReportStoryResultTextRequired : ReportStoryResult {

    /**
     * Option identifier for the next {@link Client.report_story} request
     */
    public Bytes option_id { get; construct set; }

    /**
     * True, if the user can skip text adding
     */
    public bool is_optional { get; construct set; }

    public ReportStoryResultTextRequired (
        Bytes option_id,
        bool is_optional
    ) {
        Object (
            option_id: option_id,
            is_optional: is_optional,
            tdlib_type: "reportStoryResultTextRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
