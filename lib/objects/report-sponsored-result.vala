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
 * Describes result of sponsored message or chat report
 */
public abstract class TDLib.ReportSponsoredResult : Error {}

/**
 * The message was reported successfully
 */
public class TDLib.ReportSponsoredResultOk : ReportSponsoredResult {

    public ReportSponsoredResultOk () {
        Object (
            tdlib_type: "reportSponsoredResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The sponsored message is too old or not found
 */
public class TDLib.ReportSponsoredResultFailed : ReportSponsoredResult {

    public ReportSponsoredResultFailed () {
        Object (
            tdlib_type: "reportSponsoredResultFailed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user must choose an option to report the message and repeat
 * request with the chosen option
 */
public class TDLib.ReportSponsoredResultOptionRequired : ReportSponsoredResult {

    /**
     * Title for the option choice
     */
    public string title { get; construct set; }

    /**
     * List of available options
     */
    public Gee.ArrayList<ReportOption?> options { get; construct set; default = new Gee.ArrayList<ReportOption?> (); }

    public ReportSponsoredResultOptionRequired (
        string title,
        Gee.ArrayList<ReportOption?> options
    ) {
        Object (
            title: title,
            options: options,
            tdlib_type: "reportSponsoredResultOptionRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Sponsored messages were hidden for the user in all chats
 */
public class TDLib.ReportSponsoredResultAdsHidden : ReportSponsoredResult {

    public ReportSponsoredResultAdsHidden () {
        Object (
            tdlib_type: "reportSponsoredResultAdsHidden",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user asked to hide sponsored messages, but Telegram Premium is
 * required for this
 */
public class TDLib.ReportSponsoredResultPremiumRequired : ReportSponsoredResult {

    public ReportSponsoredResultPremiumRequired () {
        Object (
            tdlib_type: "reportSponsoredResultPremiumRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
