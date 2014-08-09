FROM centos:centos6

MAINTAINER Nathan Valentine <nrvale0@gmail.com>
ENV HOSTNAME centos-pe-agent
ENV PATH /bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
ADD pe/ /tmp/pe
RUN /tmp/pe/pe-install centos
CMD ["/sbin/init"]
EXPOSE 22
