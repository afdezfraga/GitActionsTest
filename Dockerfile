
FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /home
RUN apt-get update &&\
    python3 -m pip install gittyleaks
#Actualmente se esta haciendo sobre afdezfraga.github.io, pero la idea sería hacerlo sobre el propio repositorio y comprobar que no se expone nada peligroso 
ENTRYPOINT ["gittyleaks", "-u",  "afdezfraga", "-r", "afdezfraga.github.io", "-d", "-o", "-a" ]
