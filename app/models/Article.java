package models;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import play.db.jpa.Model;

@Entity
public class Article extends Model {
	public String title;
	@Lob
	public String content;
	public Date dateCreated;
	@ManyToOne
	public Menu menu;
	@ManyToMany
	public List<Menu> copies;
	public String code;
	public String titlepic;
	@ManyToMany(cascade = CascadeType.PERSIST)
	public Set<Tag> tags;

	public static List<Article> findTaggedWith(String... tags) {
		return Article.find("select distinct p.id from Article p join p.tags as t where t.name in (:tags) group by p.id having count(t.id) = :size").bind("tags", tags).bind("size", tags.length).fetch();
	}

	@Override
	public String toString() {
		return "[" + id + "]" + title;
	}
}
