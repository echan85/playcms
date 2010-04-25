%{
def article = models.Article.find("menu.code = ? order by dateCreated desc", _menu).first()
}%
#{doBody vars:['article': article] /}