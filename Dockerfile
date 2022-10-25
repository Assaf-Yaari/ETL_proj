FROM python:3

WORKDIR /project

RUN pip install numpy
RUN pip install pandas
RUN pip install xarray
RUN pip install SQLAlchemy
RUN pip install mysql-connector-python
RUN pip install Bottleneck
RUN pip install jupyterlab

COPY ./case_study.ipynb /project
COPY ./source /project/source
COPY ./layout.png /project/layout.png

CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]

