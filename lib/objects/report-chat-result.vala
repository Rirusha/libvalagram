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
 * Describes result of chat report
 */
public abstract class TDLib.ReportChatResult : Error {}

/**
 * The chat was reported successfully
 */
public class TDLib.ReportChatResultOk : ReportChatResult {

    public ReportChatResultOk () {
        Object (
            tdlib_type: "reportChatResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user must choose an option to report the chat and repeat request
 * with the chosen option
 */
public class TDLib.ReportChatResultOptionRequired : ReportChatResult {

    /**
     * Title for the option choice
     */
    public string title { get; construct set; }

    /**
     * List of available options
     */
    public Gee.ArrayList<ReportOption?> options { get; construct set; default = new Gee.ArrayList<ReportOption?> (); }

    public ReportChatResultOptionRequired (
        string title,
        Gee.ArrayList<ReportOption?> options
    ) {
        Object (
            title: title,
            options: options,
            tdlib_type: "reportChatResultOptionRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user must add additional text details to the report
 */
public class TDLib.ReportChatResultTextRequired : ReportChatResult {

    /**
     * Option identifier for the next {@link Client.report_chat} request
     */
    public Bytes option_id { get; construct set; }

    /**
     * True, if the user can skip text adding
     */
    public bool is_optional { get; construct set; }

    public ReportChatResultTextRequired (
        Bytes option_id,
        bool is_optional
    ) {
        Object (
            option_id: option_id,
            is_optional: is_optional,
            tdlib_type: "reportChatResultTextRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user must choose messages to report and repeat the
 * {@link Client.report_chat} request with the chosen messages
 */
public class TDLib.ReportChatResultMessagesRequired : ReportChatResult {

    public ReportChatResultMessagesRequired () {
        Object (
            tdlib_type: "reportChatResultMessagesRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
