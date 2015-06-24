echo "Project name: "
read project_name

wget https://github.com/renzon/tekton/archive/master.zip
unzip master && rm master.zip
mv tekton-master $project_name && cd $project_name
cd backend/venv/ && ./venv.sh
source ./bin/activate
cd ../appengine && dev_appserver.py .
