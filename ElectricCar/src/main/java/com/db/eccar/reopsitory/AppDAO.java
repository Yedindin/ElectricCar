package com.db.eccar.reopsitory;
import java.util.List;

import com.db.eccar.model.AppDTO;

public interface AppDAO {

	public List<AppDTO> readApp();
	
}
