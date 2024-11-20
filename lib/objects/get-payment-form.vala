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
 * Returns an invoice payment form. This method must be called when the
 * user presses inline button of the type inlineKeyboardButtonTypeBuy, or
 * wants to buy access to media in a messagePaidMedia message
 */
internal class TDLib.GetPaymentForm : TDObject {

    /**
     * The invoice
     */
    public InputInvoice input_invoice { get; construct set; }

    /**
     * Preferred payment form theme; pass null to use the default theme
     */
    public ThemeParameters theme { get; construct set; }

    public GetPaymentForm (
        InputInvoice input_invoice,
        ThemeParameters theme
    ) {
        Object (
            input_invoice: input_invoice,
            theme: theme,
            tdlib_type: "getPaymentForm",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
