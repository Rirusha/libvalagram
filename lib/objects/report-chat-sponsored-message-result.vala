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
 * Describes result of sponsored message report
 */
public abstract class TDLib.ReportChatSponsoredMessageResult : Error {}

/**
 * The message was reported successfully
 */
public class TDLib.ReportChatSponsoredMessageResultOk : ReportChatSponsoredMessageResult {

    public ReportChatSponsoredMessageResultOk () {
        Object (
            tdlib_type: "reportChatSponsoredMessageResultOk",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The sponsored message is too old or not found
 */
public class TDLib.ReportChatSponsoredMessageResultFailed : ReportChatSponsoredMessageResult {

    public ReportChatSponsoredMessageResultFailed () {
        Object (
            tdlib_type: "reportChatSponsoredMessageResultFailed",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user must choose an option to report the message and repeat
 * request with the chosen option
 */
public class TDLib.ReportChatSponsoredMessageResultOptionRequired : ReportChatSponsoredMessageResult {

    /**
     * Title for the option choice
     */
    public string title { get; construct set; }

    /**
     * List of available options
     */
    public Gee.ArrayList<ReportOption?> options { get; construct set; default = new Gee.ArrayList<ReportOption?> (); }

    public ReportChatSponsoredMessageResultOptionRequired (
        string title,
        Gee.ArrayList<ReportOption?> options
    ) {
        Object (
            title: title,
            options: options,
            tdlib_type: "reportChatSponsoredMessageResultOptionRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Sponsored messages were hidden for the user in all chats
 */
public class TDLib.ReportChatSponsoredMessageResultAdsHidden : ReportChatSponsoredMessageResult {

    public ReportChatSponsoredMessageResultAdsHidden () {
        Object (
            tdlib_type: "reportChatSponsoredMessageResultAdsHidden",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The user asked to hide sponsored messages, but Telegram Premium is
 * required for this
 */
public class TDLib.ReportChatSponsoredMessageResultPremiumRequired : ReportChatSponsoredMessageResult {

    public ReportChatSponsoredMessageResultPremiumRequired () {
        Object (
            tdlib_type: "reportChatSponsoredMessageResultPremiumRequired",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
