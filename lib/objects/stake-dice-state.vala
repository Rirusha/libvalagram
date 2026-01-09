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
 * Describes state of the stake dice
 */
public class TDLib.StakeDiceState : Error {

    /**
     * Hash of the state to use for sending the next dice; may be empty if
     * the stake dice can't be sent by the current user
     */
    public string state_hash { get; construct set; }

    /**
     * The Toncoin amount that was staked in the previous roll; in the
     * smallest units of the currency
     */
    public int64 stake_toncoin_amount { get; construct set; }

    /**
     * The amounts of Toncoins that are suggested to be staked; in the
     * smallest units of the currency
     */
    public Gee.ArrayList<int64?> suggested_stake_toncoin_amounts { get; construct set; default = new Gee.ArrayList<int64?> (); }

    /**
     * The number of rolled sixes towards the streak; 0-2
     */
    public int32 current_streak { get; construct set; }

    /**
     * The number of Toncoins received by the user for each 1000 Toncoins
     * staked if the dice outcome is 1-6 correspondingly; may be empty if the
     * stake dice can't be sent by the current user
     */
    public Gee.ArrayList<int32?> prize_per_mille { get; construct set; default = new Gee.ArrayList<int32?> (); }

    /**
     * The number of Toncoins received by the user for each 1000 Toncoins
     * staked if the dice outcome is 6 three times in a row with the same
     * stake
     */
    public int32 streak_prize_per_mille { get; construct set; }

    public StakeDiceState (
        string state_hash,
        int64 stake_toncoin_amount,
        Gee.ArrayList<int64?> suggested_stake_toncoin_amounts,
        int32 current_streak,
        Gee.ArrayList<int32?> prize_per_mille,
        int32 streak_prize_per_mille
    ) {
        Object (
            state_hash: state_hash,
            stake_toncoin_amount: stake_toncoin_amount,
            suggested_stake_toncoin_amounts: suggested_stake_toncoin_amounts,
            current_streak: current_streak,
            prize_per_mille: prize_per_mille,
            streak_prize_per_mille: streak_prize_per_mille,
            tdlib_type: "stakeDiceState",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
