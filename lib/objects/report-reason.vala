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
 * Describes the reason why a chat is reported
 */
public abstract class TDLib.ReportReason : Error {}

/**
 * The chat contains spam messages
 */
public class TDLib.ReportReasonSpam : ReportReason {

    public ReportReasonSpam () {
        Object (
            tdlib_type: "reportReasonSpam",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat promotes violence
 */
public class TDLib.ReportReasonViolence : ReportReason {

    public ReportReasonViolence () {
        Object (
            tdlib_type: "reportReasonViolence",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat contains pornographic messages
 */
public class TDLib.ReportReasonPornography : ReportReason {

    public ReportReasonPornography () {
        Object (
            tdlib_type: "reportReasonPornography",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat has child abuse related content
 */
public class TDLib.ReportReasonChildAbuse : ReportReason {

    public ReportReasonChildAbuse () {
        Object (
            tdlib_type: "reportReasonChildAbuse",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat contains copyrighted content
 */
public class TDLib.ReportReasonCopyright : ReportReason {

    public ReportReasonCopyright () {
        Object (
            tdlib_type: "reportReasonCopyright",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The location-based chat is unrelated to its stated location
 */
public class TDLib.ReportReasonUnrelatedLocation : ReportReason {

    public ReportReasonUnrelatedLocation () {
        Object (
            tdlib_type: "reportReasonUnrelatedLocation",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat represents a fake account
 */
public class TDLib.ReportReasonFake : ReportReason {

    public ReportReasonFake () {
        Object (
            tdlib_type: "reportReasonFake",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat has illegal drugs related content
 */
public class TDLib.ReportReasonIllegalDrugs : ReportReason {

    public ReportReasonIllegalDrugs () {
        Object (
            tdlib_type: "reportReasonIllegalDrugs",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The chat contains messages with personal details
 */
public class TDLib.ReportReasonPersonalDetails : ReportReason {

    public ReportReasonPersonalDetails () {
        Object (
            tdlib_type: "reportReasonPersonalDetails",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * A custom reason provided by the user
 */
public class TDLib.ReportReasonCustom : ReportReason {

    public ReportReasonCustom () {
        Object (
            tdlib_type: "reportReasonCustom",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
