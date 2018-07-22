require 'rspec'
require 'pry'
require 'yaml'
require 'net/http'
require 'rest-client'
require 'uri'
require 'json'
require 'httparty'
ACESSO = YAML.load_file('features/cassettes/Acesso_à_Conta/Acessar_Conta.yml')
DATA = YAML.load_file('features/data/data.yml')

