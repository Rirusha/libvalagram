/*
 * Copyright (C) 2024 Vladimir Vaskov
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
 * Requests manager
 */
internal sealed class TDLib.RequestManager : Object {

    public double timeout { get; set; }

    public signal void recieved (string request_extra, string response_json);

    bool keep_running = true;

    public RequestManager (double timeout) {
        Object (timeout: timeout);
    }

    public async void run () {
        while (keep_running) {
            string? json_response = TDJsonApi.receive (timeout);
            if (json_response != null) {
                string tdlib_extra;
                try {
                    TDJsoner jsoner = new TDJsoner (json_response, { "@extra" }, Case.SNAKE);
                    tdlib_extra = jsoner.deserialize_value ().get_string ();
                } catch (JsonError e) {
                    warning ("%s: %s", e.message, json_response);
                    continue;
                }

                recieved (tdlib_extra, json_response);
            }

            Idle.add (run.callback, Priority.LOW);
            yield;
        }
    }

    public void stop () {
        keep_running = false;
    }
}
