package com.sm.frontend.integration.store;

import java.util.List;

import com.sm.backend.dto.StoreDto;
import com.sm.svc.domains.Store;

public interface StoreIntegrationFE {

	public List<Store> getStore();
	
	public String createStore(StoreDto _store);
}
