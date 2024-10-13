FROM ckan/ckan:latest

ENV CKAN_SITE_URL="https://humboldt-ckan-portal.onrender.com/"
ENV CKAN_DATABASE_URL="postgresql://marciodosanjos:PmeU0FAo03u2Bd7IMmsFPffP6ieWP3e9@dpg-cs5rvig8fa8c73aps0bg-a.oregon-postgres.render.com/humboldt"
ENV REDIS_URL="rediss://red-cs5s4ktumphs73b1qhag:THygaZO0IworxpGJLghBC4L5RRJpWANq@oregon-redis.render.com:6379"
ENV SOLR_URL="http://my-solr-app-1e354246a8a9.herokuapp.com/solr"

# Comando para iniciar a aplicação
CMD ["gunicorn", "-b", "0.0.0.0:5000", "wsgi:app"]

# Outros comandos que você precisa, como instalação de dependências
