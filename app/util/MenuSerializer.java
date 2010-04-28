package util;

import java.lang.reflect.Type;
import java.util.List;

import models.Menu;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

public class MenuSerializer implements JsonSerializer<Menu> {

	public JsonElement serialize(Menu menu, Type arg1, JsonSerializationContext context) {
		JsonObject obj = new JsonObject();
		obj.addProperty("id", menu.id);
		obj.addProperty("text", menu.title);
		List<Menu> children = menu.getChildren();
		if (children.size() > 0) {
			JsonElement serialize = context.serialize(children);
			obj.add("children", serialize);
		}
		return obj;
	}
}