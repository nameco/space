set -e
git checkout gh-pages
git pull origin gh-pages
cp -r ~/Documents/Output/BarPizz/ ~/github/space/RPGMV/
echo git adding .
git add .
echo git commiting -a
git commit -a "$@"
git push origin gh-pages
git checkout master
