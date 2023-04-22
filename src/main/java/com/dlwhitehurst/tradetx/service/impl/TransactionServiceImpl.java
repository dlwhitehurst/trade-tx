/**
 * Copyright (c) David L Whitehurst.  All rights reserved.
 * The software in this package is published under the terms of the Apache
 * version 2.0 license, a copy of which has been included with this distribution
 * in the LICENSE file.
 *
 */

package com.dlwhitehurst.tradetx.service.impl;

import com.dlwhitehurst.tradetx.payload.PagedResponse;
import com.dlwhitehurst.tradetx.repository.TransactionRepository;
import com.dlwhitehurst.tradetx.utils.AppConstants;
import com.dlwhitehurst.tradetx.model.Transaction;
import com.dlwhitehurst.tradetx.service.TransactionService;
import com.dlwhitehurst.tradetx.utils.AppUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;


@Service
public class TransactionServiceImpl implements TransactionService {

    @Autowired
    private TransactionRepository transactionRepository;


    @Override
    public PagedResponse<Transaction> getAllTransactions(int page, int size) {
        AppUtils.validatePageNumberAndSize(page, size);
        Pageable pageable = PageRequest.of(page, size, Sort.Direction.DESC, AppConstants.ID);

        Page<Transaction> transactions = transactionRepository.findAll(pageable);

        List<Transaction> content = transactions.getNumberOfElements() == 0 ? Collections.emptyList() : transactions.getContent();

        return new PagedResponse<>(content, transactions.getNumber(), transactions.getSize(), transactions.getTotalElements(),
                transactions.getTotalPages(), transactions.isLast());
    }

    @Override
    public Transaction addTransaction(Transaction todo) {
        return null;
    }

    @Override
    public Transaction getTransaction(Long id) {
        return null;
    }

    @Override
    public Transaction updateTransaction(Long id, Transaction newTodo) {
        return null;
    }

//    @Override
//    public ApiResponse deleteTransaction(Long id) {
//        return null;
//    }
}
