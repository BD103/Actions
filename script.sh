echo $ACTIONTYPE
if [ $ACTIONTYPE == "lint" ]; then
  pip install -U black isort flake8
  isort . -c --profile black
  flake8 .
  black . --check
elif [ $ACTIONTYPE == "test" ]; then
  pip install -U pytest
  pytest
else
  echo "Invalid actionType Config"
fi
