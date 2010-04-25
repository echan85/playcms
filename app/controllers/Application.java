package controllers;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import models.Article;
import models.Menu;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.RandomStringUtils;

import play.db.jpa.JPASupport.JPAQuery;
import play.mvc.Controller;
import play.templates.Template;
import play.templates.TemplateLoader;

public class Application extends Controller {

	public static void index() {
		render();
	}

	public static void view(long id) {
		Article article = Article.findById(id);
		String template = "obsess";
		render("templates/" + template + "/" + article.menu.url, template,article);
	}

	public static void list(String code) {
		System.out.println("renderList"+code);
		Menu current = Menu.find("byCode", code).first();
		String template = "obsess";
		render("templates/" + template + "/" + current.url, current,template);
	}
	public static void upload(File upload) {
		try {
			String name = upload.getName();
			String ext = name.substring(name.lastIndexOf('.'));
			FileUtils.moveFile(upload, new File("public/upload/"+RandomStringUtils.randomAlphabetic(10)+ext));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void files() {
		File[] listfiles = new File("public/upload/").listFiles();
		List files = Arrays.asList(listfiles);
		render(files);
	}
	public static void cachepage() {
		List<Article> articles = Article.all().fetch();
		for (Article article : articles) {
			String template = "obsess";
			System.out.println(article);
			System.out.println(article.menu);
			Template tmp = TemplateLoader.load("templates/" + template + "/" + article.menu.url);
			HashMap map = new HashMap();
			map.put("article",article);
			map.put("template",template);
			String render = tmp.render(map);
			try {
				FileUtils.writeStringToFile(new File("public/page/"+article.id+".html"), render,"UTF-8");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	public static void cachemenu() {
		List<Menu> menus = Menu.all().fetch();
		for (Menu menu : menus) {
			Menu current = menu;
			if(menu.type < 0 )
				continue;
			String template = "obsess";
			Template tmp = TemplateLoader.load("templates/" + template + "/" + current.url);
			HashMap map = new HashMap();
			map.put("current",current);
			map.put("template",template);
			System.out.println(menu);
			String render = tmp.render(map);
			try {
				FileUtils.writeStringToFile(new File("public/list/"+menu.code+".html"), render,"UTF-8");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}