package com.dlwhitehurst.tradetx.repository;

import com.dlwhitehurst.tradetx.model.Position;

import java.util.List;

public interface PositionRepositoryCustom {
    public List<Position> findAllBySymbol(String symbol);
}
