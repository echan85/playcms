package controllers;

import java.util.List;

import models.Article;
import models.Menu;
import models.Site;
import play.mvc.Controller;
import util.ArticleSerializer;
import util.MenuSerializer;

import com.google.gson.JsonSerializer;

public class Admin extends Controller {
	public static void tree() {
		List<Menu> all = Menu.root((Site) Site.all().first());
		JsonSerializer<Menu> jsonSerializer = new MenuSerializer();
		renderJSON(all, jsonSerializer);
	}
	public static void articles() {
		List<Article> articles = Article.all().fetch();
		renderJSON(articles,new ArticleSerializer());
	}
	public static void index() {
		render();
	}
}

