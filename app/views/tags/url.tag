#{if _menu.type == -9 }%{
	def a = models.Article.find("code=?",_menu.code).first() 
}%@{Application.viewById(a.id)}#{/if}#{if _menu.type==0}@{Application.list(_menu.code)}#{/if}