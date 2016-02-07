echo "Project name: "
read project_name

wget https://github.com/renzon/tekton/archive/master.zip
unzip master && rm master.zip
mv tekton-master $project_name && cd $project_name
git init

echo "Instaling... "
cd backend/venv/ && ./venv.sh
cd ../../
mkdir -p frontend/static
mkdir -p frontend/templates
nv backend/appengine/static/* frontend/static/
nv backend/appengine/templates/* frontend/templates/
rm -rf backend/appengine/static/
rm -rf backend/appengine/templates/
ln -s frontend/static/ backend/appengine/static/
ln -s frontend/templates/ backend/appengine/templates/

git add --all
git commit -m 'First commit'

echo "You should configure your app in app.yaml and settings.py"
echo "Done!"
