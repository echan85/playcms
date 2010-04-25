package models;

import javax.persistence.Entity;

import play.db.jpa.Model;
@Entity
public class Site extends Model {
	public String name;
	public String logo;
	public String manifesto;
	public String supportTel;
	public String copyright;
}
