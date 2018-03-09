FROM teamcloudyuga/python:alpine
COPY . /usr/src/app
WORKDIR /usr/src/app
ENV LINK http://www.meetup.com/cloudyuga/
ENV TEXT1 CloudYuga
ENV TEXT2 Garage RSVP!
ENV LOGO https://www.underconsideration.com/brandnew/archives/hewlett_packard_enterprise_logo.png
ENV COMPANY Mukul Pvt. Ltd.
RUN pip3 install -r requirements.txt
CMD python rsvp.py
