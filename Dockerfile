FROM python:3

RUN apt-get update && apt-get install graphviz -y
RUN pip install sphinx sphinx-autobuild sphinx_rtd_theme

CMD ["sphinx-autobuild", "/docs" , "/build", "-H", "0.0.0.0"]
