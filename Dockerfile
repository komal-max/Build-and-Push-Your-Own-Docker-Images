FROM nginx:latest 
# use tag alpine to have a smaller image size 
# our base image is based on nginx and that is coming from dockerhub

COPY source/html /usr/share/nginx/html 
# Takes two parameters, source - copy what? and destination - copy where? 

# expose port, port 80 is used by default by nginx
#EXPOSE 80, we can comment it out

CMD ["nginx", "-g","daemon off;"]
# this is the same command that nginx image passes in when starts up by default
#we can comment out this line too if we like

