package models;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.apache.commons.collections.CollectionUtils;

import play.db.jpa.Model;
@Entity
public class Menu extends Model {
	public String url;
	public String code;
	public String title;
	public int type;
	@ManyToOne
	public Menu parent;
	public String viewTemplate;
	@ManyToOne
	public Site site;
	public long viewOrder;
	public String position;
	@Override
	public String toString() {
		return title;
	}
	public List<Menu> getChildren(){
		return Menu.find("parent = ? order by viewOrder ", this).fetch();
	}
	public List<Menu> pathFromRoot(){
		List<Menu> path = new ArrayList<Menu>();
		path.add(this);
		Menu p = parent;
		while(p!=null) {
			path.add(p);
			p = p.parent;
		}
		Collections.reverse(path);
		return path;
	}
}