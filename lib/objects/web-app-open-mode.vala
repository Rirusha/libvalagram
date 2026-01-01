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
 * Describes mode in which a Web App is opened
 */
public abstract class TDLib.WebAppOpenMode : Error {}

/**
 * The Web App is opened in the compact mode
 */
public class TDLib.WebAppOpenModeCompact : WebAppOpenMode {

    public WebAppOpenModeCompact () {
        Object (
            tdlib_type: "webAppOpenModeCompact",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The Web App is opened in the full-size mode
 */
public class TDLib.WebAppOpenModeFullSize : WebAppOpenMode {

    public WebAppOpenModeFullSize () {
        Object (
            tdlib_type: "webAppOpenModeFullSize",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The Web App is opened in the full-screen mode
 */
public class TDLib.WebAppOpenModeFullScreen : WebAppOpenMode {

    public WebAppOpenModeFullScreen () {
        Object (
            tdlib_type: "webAppOpenModeFullScreen",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
