/**
 * 
 */
package com.sm.frontend.integration.store.impl;

import java.util.List;

import javax.ws.rs.core.MediaType;

import org.springframework.stereotype.Component;

import com.sm.backend.dto.StoreDto;
import com.sm.frontend.integration.common.ApplicationIntegration;
import com.sm.frontend.integration.store.StoreIntegrationFE;
import com.sm.svc.domains.Store;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;

/**
 * @author user
 * 
 */
@Component
public class StoreIntegrationFEImpl extends ApplicationIntegration implements
		StoreIntegrationFE {

	public List<Store> getStore() {
		List<Store> storeList = null;
		try {
			ClientResponse response = getResource().path("store")
					.path("getStore").get(ClientResponse.class);
			if (response.getStatus() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ response.getStatus());
			}
			storeList = response.getEntity(new GenericType<List<Store>>() {
			});

		} catch (Exception e) {

			e.printStackTrace();

		}
		return storeList;
	}

	public String createStore(StoreDto _store) {
		// TODO Auto-generated method stub
		ClientResponse response = getResource()
				.path("store").path("createStore").type(MediaType.APPLICATION_JSON).post(ClientResponse.class, _store);
		if(response.getStatus() !=200){
			throw new RuntimeException("Failed : HTTP error code : "
				     + response.getStatus());
		}
		String output = response.getEntity(String.class);
		System.out.println(output);
		return "success";
	}

}
