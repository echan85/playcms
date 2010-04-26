#{if _code }%{
	def a = models.Article.find("code=?",_code).first() 
}%@{Application.viewById(a.id)}#{/if}#{if _id }@{Application.viewById(_id)}#{/if}