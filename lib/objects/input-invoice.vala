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
 * Describes an invoice to process
 */
public abstract class TDLib.InputInvoice : Error {}

/**
 * An invoice from a message of the type messageInvoice or paid media
 * purchase from messagePaidMedia
 */
public class TDLib.InputInvoiceMessage : InputInvoice {

    /**
     * Chat identifier of the message
     */
    public int64 chat_id { get; construct set; }

    /**
     * Message identifier. Use messageProperties.can_be_paid to check whether
     * the message can be used in the method
     */
    public int64 message_id { get; construct set; }

    public InputInvoiceMessage (
        int64 chat_id,
        int64 message_id
    ) {
        Object (
            chat_id: chat_id,
            message_id: message_id,
            tdlib_type: "inputInvoiceMessage",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An invoice from a link of the type internalLinkTypeInvoice
 */
public class TDLib.InputInvoiceName : InputInvoice {

    /**
     * Name of the invoice
     */
    public string name { get; construct set; }

    public InputInvoiceName (
        string name
    ) {
        Object (
            name: name,
            tdlib_type: "inputInvoiceName",
            tdlib_extra: Uuid.string_random ()
        );
    }
}

/**
 * An invoice for a payment toward Telegram; must not be used in the
 * in-store apps
 */
public class TDLib.InputInvoiceTelegram : InputInvoice {

    /**
     * Transaction purpose
     */
    public TelegramPaymentPurpose purpose { get; construct set; }

    public InputInvoiceTelegram (
        TelegramPaymentPurpose purpose
    ) {
        Object (
            purpose: purpose,
            tdlib_type: "inputInvoiceTelegram",
            tdlib_extra: Uuid.string_random ()
        );
    }
}
