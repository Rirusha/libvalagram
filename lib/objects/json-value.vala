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
 * Represents a JSON value
 */
public abstract class TDLib.JsonValue : Error {}

/**
 * Represents a null JSON value
 */
public class TDLib.JsonValueNull : JsonValue {

    public JsonValueNull () {
        Object (
            tdlib_type: "jsonValueNull",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a boolean JSON value
 */
public class TDLib.JsonValueBoolean : JsonValue {

    /**
     * The value
     */
    public bool value { get; construct set; }

    public JsonValueBoolean (
        bool value
    ) {
        Object (
            value: value,
            tdlib_type: "jsonValueBoolean",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a numeric JSON value
 */
public class TDLib.JsonValueNumber : JsonValue {

    /**
     * The value
     */
    public double value { get; construct set; }

    public JsonValueNumber (
        double value
    ) {
        Object (
            value: value,
            tdlib_type: "jsonValueNumber",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a string JSON value
 */
public class TDLib.JsonValueString : JsonValue {

    /**
     * The value
     */
    public string value { get; construct set; }

    public JsonValueString (
        string value
    ) {
        Object (
            value: value,
            tdlib_type: "jsonValueString",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a JSON array
 */
public class TDLib.JsonValueArray : JsonValue {

    /**
     * The list of array elements
     */
    public Gee.ArrayList<JsonValue?> values { get; construct set; default = new Gee.ArrayList<JsonValue?> (); }

    public JsonValueArray (
        Gee.ArrayList<JsonValue?> values
    ) {
        Object (
            values: values,
            tdlib_type: "jsonValueArray",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Represents a JSON object
 */
public class TDLib.JsonValueObject : JsonValue {

    /**
     * The list of object members
     */
    public Gee.ArrayList<JsonObjectMember?> members { get; construct set; default = new Gee.ArrayList<JsonObjectMember?> (); }

    public JsonValueObject (
        Gee.ArrayList<JsonObjectMember?> members
    ) {
        Object (
            members: members,
            tdlib_type: "jsonValueObject",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
