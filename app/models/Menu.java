package models;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import play.db.jpa.Model;
@Entity
public class Menu extends Model {
	public String url;
	public String title;
	public int type;
	@ManyToOne
	public Menu parent;
	@ManyToOne
	public Site site;
}