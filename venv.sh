#!/usr/bin/env bash

activate_default_venv () {
  source "$HOME/dev/python/default_venv/bin/activate";
  echo "Activating default virtual environment";
}
activate_django_venv () {
  source "$HOME/dev/python/django";
  echo "Activating django venv."

}

case $1 in
  -a | --activate) activate_default_venv
  ;;
  -django | --activate_django_venv
  ;;
  -e | --exit) deactivate; echo "Deactivating virtual environment"
  ;;
  * ) activate_default_venv;
esac
