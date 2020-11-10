import os


class BaseConfig(object):
    SECRET_KEY = 'emAyQU4hDdTbKNAnFjcsxkpAuAHNunFv'
    DEBUG = False
    TESTING = False


class DevelopmentConfig(BaseConfig):
    DEBUG = True
    SQLALCHEMY_DATABASE_URI = 'postgresql+psycopg2://postgres:xbc961031@127.0.0.1:5432/ammo'


class TestingConfig(BaseConfig):
    TESTING = True
    SQLALCHEMY_DATABASE_URI = 'sqlite://'
    SQLALCHEMY_TRACK_MODIFICATIONS = False


config = {
    'development': DevelopmentConfig,
    'testing': TestingConfig,
    'default': DevelopmentConfig
}

def config_app(app):

    config_name = os.getenv('FLASK_CONFIG') or 'default'
    app.config.from_object(config[config_name])
    app.config.from_envvar('APP_CONFIG_FILE', silent=True)
