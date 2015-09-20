package com.sm.frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sm.backend.dto.StoreDto;
import com.sm.frontend.integration.store.StoreIntegrationFE;
import com.sm.svc.domains.Store;

@Controller
public class StoreController {

	@Autowired
	private StoreIntegrationFE storeIntegrationFE;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.addAttribute("store", new Store());
		return "index";
	}
	
	@RequestMapping(value = "/register", method=RequestMethod.POST)
	public String signup(@ModelAttribute("store") StoreDto store, Model model) {
		String response = storeIntegrationFE.createStore(store);
		model.addAttribute("message", "Saved Store details");
	    return response;
	}
}
