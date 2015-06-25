echo "Project name: "
read project_name

wget https://github.com/renzon/tekton/archive/master.zip
unzip master && rm master.zip
mv tekton-master $project_name && cd $project_name

echo "Instaling... "
cd backend/venv/ && ./venv.sh

echo "You should configure your app in app.yaml and settings.py"
echo "Done!"
