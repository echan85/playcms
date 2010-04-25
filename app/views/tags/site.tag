%{
def site = models.Site.all().first();
}%
#{doBody vars:['site': site] /}