%{
	def article = models.Article.find("byCode",_code).first()
	println article.content
}%
