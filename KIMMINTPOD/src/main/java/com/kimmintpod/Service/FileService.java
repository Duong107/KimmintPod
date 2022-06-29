package com.kimmintpod.Service;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileService {
	@Autowired
	ServletContext app;

	public File save(MultipartFile file, String path) {
		File fk = null;
		File dir = new File(app.getRealPath(path));
		if (!dir.exists())
			dir.mkdirs();
		try {
			File saveFile = new File(dir, file.getOriginalFilename());
			file.transferTo(saveFile);
			fk = saveFile;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fk;
	}
}
