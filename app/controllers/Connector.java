package controllers;

import java.io.*;
import java.io.IOException;
import java.util.Collection;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.FalseFileFilter;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;
import org.apache.commons.lang.RandomStringUtils;

import play.mvc.Controller;
import play.Logger;

public class Connector extends Controller {
	public static void connect(String Command, String CurrentFolder,String NewFolderName,File NewFile){
		Logger.info(params.toString());
		Logger.info(params.get("Type"));
		Logger.info(params.get("CurrentFolder"));
		Logger.info(Command);
		if("GetFoldersAndFiles".equals(Command) || "GetFolders".equals(Command)){
			File base = new File("public/upload"+CurrentFolder);
			File[] files = base.listFiles(new FileFilter(){
				public boolean accept(File f){
					return !f.isDirectory();
				}
			});
			File[] folders = base.listFiles(new FileFilter(){
				public boolean accept(File f){
					return f.isDirectory();
				}
			});		
			render(files,folders,base);
		} else if("CreateFolder".equals(Command)){
			File base = new File("public/upload"+CurrentFolder);
			File newFolder = new File(base,NewFolderName);
			newFolder.mkdirs();
		} else if("FileUpload".equals(Command)){
			File base = new File("public/upload"+CurrentFolder);
			File newFile = new File(base,NewFile.getName());
			try{
			FileUtils.moveFile(NewFile,newFile);
			}catch(Throwable t){
				Logger.error("FileUpload Failed",t);
			}
		}
	}
	public static void cmd(File uploadfile) {
		System.out.println(params);
		String cmd = params.get("cmd");
		System.out.println(cmd);
		if ("open".equals(cmd)) {
			File file = new File("public/upload/");
			Collection files = FileUtils.listFiles(file.getAbsoluteFile(), new String[] { "jpg", "jpeg", "JPEG", "JPG" }, false);
			System.out.println(file.getAbsoluteFile());
			Collection dirs = FileUtils.listFiles(file.getAbsoluteFile(), FalseFileFilter.INSTANCE, TrueFileFilter.INSTANCE);
			System.out.println(dirs);
			render("Connector/" + cmd + ".json", files);
		} else if ("upload".equals(cmd)) {
			String name = uploadfile.getName();
			String ext = name.substring(name.lastIndexOf('.'));
			try {
				File file = new File("public/upload/" + RandomStringUtils.randomAlphabetic(10) + ext);
				FileUtils.moveFile(uploadfile, file);

				File dir = new File("public/upload/");
				Collection files = FileUtils.listFiles(dir.getAbsoluteFile(), new String[] { "jpg", "jpeg", "JPEG", "JPG" }, false);
				Collection dirs = FileUtils.listFiles(dir, FalseFileFilter.INSTANCE, TrueFileFilter.INSTANCE);
				render("Connector/open.json", files, dirs);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}
}
