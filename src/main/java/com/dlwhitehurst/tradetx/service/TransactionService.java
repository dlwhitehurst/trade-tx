/**
 * Copyright (c) David L Whitehurst.  All rights reserved.
 * The software in this package is published under the terms of the Apache
 * version 2.0 license, a copy of which has been included with this distribution
 * in the LICENSE file.
 *
 */

package com.dlwhitehurst.tradetx.service;

import com.dlwhitehurst.tradetx.payload.PagedResponse;
import com.dlwhitehurst.tradetx.model.Transaction;

import java.util.List;

public interface TransactionService {

    List<Transaction> findAll();

    Transaction create(Transaction todo);

    Transaction getTransaction(Long id);

    Transaction updateTransaction(Long id, Transaction newTodo);

    Transaction deleteTransaction(Long id);

}
