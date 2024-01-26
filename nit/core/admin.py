from django.contrib import admin

from core.models import Demandas #Sherlon: Adicionado
class DemandasAdmin(admin.ModelAdmin):
    #Mostra os CAMPOS desejados na rota 'admin/'
    list_display = ('id', 'titulo', 'descricao', 'data_evento', 'data_criacao')

    #Apresenta um filtro interativo pelos CAMPOS definidos
    list_filter = ('titulo', 'data_evento', )
    
admin.site.register(Demandas,DemandasAdmin)#Sherlon: Adicionado
