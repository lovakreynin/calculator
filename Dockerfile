FROM ubuntu:latest
LABEL "Author"="lev"
LABEL "Project"="calculator"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y git && apt install cmake -y
RUN git clone -b vagrant https://github.com/lovakreynin/calculator.git
RUN cd calculator 
RUN mkdir build
RUN cd build
RUN cmake ..
RUN make
ENTRYPOINT ["+" ,"1 2"]
CMD ["./executable"]
EXPOSE 80
WORKDIR ~/calculator/build