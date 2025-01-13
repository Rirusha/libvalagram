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
 * Contains statistics about network usage
 */
public abstract class TDLib.NetworkStatisticsEntry : Error {}

/**
 * Contains information about the total amount of data that was used to
 * send and receive files
 */
public class TDLib.NetworkStatisticsEntryFile : NetworkStatisticsEntry {

    /**
     * Type of the file the data is part of; pass null if the data isn't
     * related to files
     */
    public FileType file_type { get; construct set; }

    /**
     * Type of the network the data was sent through. Call
     * {@link Client.set_network_type} to maintain the actual network type
     */
    public NetworkType network_type { get; construct set; }

    /**
     * Total number of bytes sent
     */
    public int64 sent_bytes { get; construct set; }

    /**
     * Total number of bytes received
     */
    public int64 received_bytes { get; construct set; }

    public NetworkStatisticsEntryFile (
        FileType file_type,
        NetworkType network_type,
        int64 sent_bytes,
        int64 received_bytes
    ) {
        Object (
            file_type: file_type,
            network_type: network_type,
            sent_bytes: sent_bytes,
            received_bytes: received_bytes,
            tdlib_type: "networkStatisticsEntryFile",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * Contains information about the total amount of data that was used for
 * calls
 */
public class TDLib.NetworkStatisticsEntryCall : NetworkStatisticsEntry {

    /**
     * Type of the network the data was sent through. Call
     * {@link Client.set_network_type} to maintain the actual network type
     */
    public NetworkType network_type { get; construct set; }

    /**
     * Total number of bytes sent
     */
    public int64 sent_bytes { get; construct set; }

    /**
     * Total number of bytes received
     */
    public int64 received_bytes { get; construct set; }

    /**
     * Total call duration, in seconds
     */
    public double duration { get; construct set; }

    public NetworkStatisticsEntryCall (
        NetworkType network_type,
        int64 sent_bytes,
        int64 received_bytes,
        double duration
    ) {
        Object (
            network_type: network_type,
            sent_bytes: sent_bytes,
            received_bytes: received_bytes,
            duration: duration,
            tdlib_type: "networkStatisticsEntryCall",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
