FROM teamcloudyuga/python:alpine
COPY . /usr/src/app
WORKDIR /usr/src/app
ENV LINK http://www.meetup.com/cloudyuga/
ENV TEXT1 BLDC
ENV TEXT2 Hewlett Packard Enterprise
ENV LOGO http://h22168.www2.hpe.com/images/main/partners/wipro/logonew-_hpe__wipro.png
ENV COMPANY HPE Sales India Pvt.
RUN pip3 install -r requirements.txt
CMD python rsvp.py
