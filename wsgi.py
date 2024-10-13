import os
from ckan.config.middleware import make_app
from ckan.cli import CKANConfigLoader
from logging.config import fileConfig as loggingFileConfig

# Usando o arquivo ckan.ini na raiz do projeto
config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'ckan.ini')

if not os.path.exists(config_path):
    raise RuntimeError('CKAN config file not found: {}'.format(config_path))

loggingFileConfig(config_path)
config = CKANConfigLoader(config_path).get_config()

application = make_app(config)
