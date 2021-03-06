FROM python:3.8.3-alpine3.10

LABEL maintainer="PEP8 checks <pep8@users.noreply.github.com>"
LABEL repository="https://github.com/mkvithal/HackerRank_solutions"
LABEL homepage="https://github.com/mkvithal/HackerRank_solutions"

LABEL com.github.actions.name="autoyapf"
LABEL com.github.actions.description="Automating Python formatting using yapf"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="blue"


COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
