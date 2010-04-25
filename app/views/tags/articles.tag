%{
def from = 0
def count = 5
def query = " select distinct a from Article a join a.copies as m where m.code = ? order by a.dateCreated desc"

if(_from) from = _from
if(_count) count = _count 
def articles
if(_tags){
	articles = models.Article.findTaggedWith(_tags)
}else{
 articles = models.Article.find(query,_menu).from(from).fetch(count)
}
def size = articles.size()
articles.eachWithIndex() { item, i ->
		attrs = [:]
		attrs.put(_as, item)
		attrs.put(_as+'_index', i+1)
		attrs.put(_as+'_isLast', (i+1) == size)
		attrs.put(_as+'_isFirst', i==0)
		attrs.put(_as+'_parity', (i+1)%2==0?'even':'odd')
}%
#{doBody vars:attrs /}
%{
	}
}%

