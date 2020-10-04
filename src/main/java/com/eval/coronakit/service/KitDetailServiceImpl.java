package com.eval.coronakit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eval.coronakit.dao.KitDetailRepository;
import com.eval.coronakit.entity.KitDetail;
import com.eval.coronakit.entity.ProductMaster;

@Service
public class KitDetailServiceImpl implements KitDetailService {

	@Autowired
	KitDetailRepository repository;
	
	@Override
	public KitDetail addKitItem(KitDetail kitItem) {
		// TODO Auto-generated method stub
		return this.repository.save(kitItem);
	}

	@Override
	public KitDetail getKitItemById(int itemId) {
		List<KitDetail> kits=this.getAllKitItemsOfAKit();
		KitDetail kit=null;
		for(KitDetail k: kits) {
			if(k.getProductId()==itemId)
				kit=k;
		}
		return kit;
	}

	@Override
	public List<KitDetail> getAllKitItemsOfAKit(int kitId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<KitDetail> getAllKitItemsOfAKit() {
		List<KitDetail> kits = new ArrayList<KitDetail>();  
		repository.findAll().forEach(kit -> kits.add(kit));
		
		return kits;
	}
}
