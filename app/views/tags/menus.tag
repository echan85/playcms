%{
def menus;
def vanme;


if( _position ){
	menus = models.Menu.find("site = ? and position = ? order by viewOrder", _caller.site,_position).fetch()
} else {
	menus = models.Menu.find("site = ? order by viewOrder", _caller.site).fetch()
}

vanme = 'menus'
if( _as )
	vanme = _as;
	
attrs = [:]
attrs.put(vanme, menus)
}%
#{doBody vars:attrs /}