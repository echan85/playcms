package controllers;

import models.Article;
import models.Menu;

public class Articles extends CRUD {
	public static void list(Long menuid) {
		System.out.println(flash);
		if (menuid == null && flash.contains("menuid")) {
			menuid = Long.parseLong(flash.get("menuid"));
		}
		if (menuid != null) {
			request.args.put("where", "menu.id = " + menuid);
			renderArgs.put("menu", Menu.findById(menuid));
		}
		parent();
	}

	public static void blank(Long menuid) {
		Article article = new Article();
		if (menuid != null) {
			article.menu = Menu.findById(menuid);
			renderArgs.put("object", article);
		}
		parent();
	}

	public static void save(String id) {
		String menuid = params.get("object.menu@id");
		if (menuid != null) {
			flash.put("menuid", menuid);
		}
		parent();
	}

	public static void delete(String id) {
		Article article = Article.findById(Long.parseLong(id));
		if (article != null) {
			flash.put("menuid", article.menu.id);
		}
		parent();
	}

	public static void create() {
		String menuid = params.get("object.menu@id");
		if (menuid != null) {
			flash.put("menuid", menuid);
		}
		parent();
	}

}
