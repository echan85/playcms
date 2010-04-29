%{
def article = models.Article.find("code = ? order by dateCreated desc", _code).first()
}%
#{doBody vars:['article': article] /}