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
 * Represents the type of session
 */
public abstract class TDLib.SessionType : Error {}

/**
 * The session is running on an Android device
 */
public class TDLib.SessionTypeAndroid : SessionType {

    public SessionTypeAndroid () {
        Object (
            tdlib_type: "sessionTypeAndroid",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on a generic Apple device
 */
public class TDLib.SessionTypeApple : SessionType {

    public SessionTypeApple () {
        Object (
            tdlib_type: "sessionTypeApple",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on the Brave browser
 */
public class TDLib.SessionTypeBrave : SessionType {

    public SessionTypeBrave () {
        Object (
            tdlib_type: "sessionTypeBrave",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on the Chrome browser
 */
public class TDLib.SessionTypeChrome : SessionType {

    public SessionTypeChrome () {
        Object (
            tdlib_type: "sessionTypeChrome",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on the Edge browser
 */
public class TDLib.SessionTypeEdge : SessionType {

    public SessionTypeEdge () {
        Object (
            tdlib_type: "sessionTypeEdge",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on the Firefox browser
 */
public class TDLib.SessionTypeFirefox : SessionType {

    public SessionTypeFirefox () {
        Object (
            tdlib_type: "sessionTypeFirefox",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on an iPad device
 */
public class TDLib.SessionTypeIpad : SessionType {

    public SessionTypeIpad () {
        Object (
            tdlib_type: "sessionTypeIpad",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on an iPhone device
 */
public class TDLib.SessionTypeIphone : SessionType {

    public SessionTypeIphone () {
        Object (
            tdlib_type: "sessionTypeIphone",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on a Linux device
 */
public class TDLib.SessionTypeLinux : SessionType {

    public SessionTypeLinux () {
        Object (
            tdlib_type: "sessionTypeLinux",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on a Mac device
 */
public class TDLib.SessionTypeMac : SessionType {

    public SessionTypeMac () {
        Object (
            tdlib_type: "sessionTypeMac",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on the Opera browser
 */
public class TDLib.SessionTypeOpera : SessionType {

    public SessionTypeOpera () {
        Object (
            tdlib_type: "sessionTypeOpera",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on the Safari browser
 */
public class TDLib.SessionTypeSafari : SessionType {

    public SessionTypeSafari () {
        Object (
            tdlib_type: "sessionTypeSafari",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on an Ubuntu device
 */
public class TDLib.SessionTypeUbuntu : SessionType {

    public SessionTypeUbuntu () {
        Object (
            tdlib_type: "sessionTypeUbuntu",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on an unknown type of device
 */
public class TDLib.SessionTypeUnknown : SessionType {

    public SessionTypeUnknown () {
        Object (
            tdlib_type: "sessionTypeUnknown",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on the Vivaldi browser
 */
public class TDLib.SessionTypeVivaldi : SessionType {

    public SessionTypeVivaldi () {
        Object (
            tdlib_type: "sessionTypeVivaldi",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on a Windows device
 */
public class TDLib.SessionTypeWindows : SessionType {

    public SessionTypeWindows () {
        Object (
            tdlib_type: "sessionTypeWindows",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * The session is running on an Xbox console
 */
public class TDLib.SessionTypeXbox : SessionType {

    public SessionTypeXbox () {
        Object (
            tdlib_type: "sessionTypeXbox",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
