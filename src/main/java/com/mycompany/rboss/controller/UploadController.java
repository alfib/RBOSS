package com.mycompany.rboss.controller;

import com.mycompany.rboss.domain.Category;
import com.mycompany.rboss.domain.FileValidator;
import com.mycompany.rboss.domain.UploadedFile;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.ws.rs.PathParam;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UploadController {

	@Autowired
	FileValidator fileValidator;
        @Autowired
        ServletContext servletContext;
        
	@RequestMapping("/fileUploadForm")
	public ModelAndView getUploadForm(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult result) {
		return new ModelAndView("uploadForm");
	}

	@RequestMapping("/fileUpload")
	public ModelAndView fileUploaded(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult result) {
           
                
		InputStream inputStream = null;
		OutputStream outputStream = null;

		MultipartFile file = uploadedFile.getFile();
		fileValidator.validate(uploadedFile, result);

		String fileName = file.getOriginalFilename();

		if (result.hasErrors()) {
			return new ModelAndView("uploadForm");
		}

		try {
                    
			inputStream = file.getInputStream();
                        
                        String path = getClass().getClassLoader().getResource(".").getPath();
                        System.out.println(""+path);
                       // int i=path.indexOf("RBOSS");
                        String npath="";
                        //npath+="RBOSS/target/RBOSS-1.0-SNAPSHOT/WEB-INF/views/user/resources/products/large/"+ fileName;
                        npath=servletContext.getRealPath("/WEB-INF/views/user/resources/products/large/")+ fileName;
                        System.out.println("np----->"+npath);
                        
			File newFile = new File(npath);
			if (!newFile.exists()) {
				newFile.createNewFile();
			}
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];

			while ((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
                
//                Category ct = categoryService.get(Integer.parseInt(category));
//                product.setCategory(ct);
//                String view = "redirect:/products";
//                if (!result.hasErrors()) {
//                    productService.add(product);
//                } else {
//                    view = "addProduct";
//                }

		return new ModelAndView("showFile", "message", fileName);
	}
        
        public String getPath() throws UnsupportedEncodingException {
		String path = this.getClass().getClassLoader().getResource("").getPath();
		String fullPath = URLDecoder.decode(path, "UTF-8");
		String pathArr[] = fullPath.split("/WEB-INF/pages/");
		System.out.println(fullPath);
		System.out.println(pathArr[0]);
		fullPath = pathArr[0];
		
		String reponsePath = "";
// to read a file from webcontent
                System.out.println("---> "+fullPath);
		//reponsePath = new File(fullPath).getPath() + File.separatorChar + "newfile.txt";
		return "";
	}

}
