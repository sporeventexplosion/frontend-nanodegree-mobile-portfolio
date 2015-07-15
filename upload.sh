if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo -e "Starting to update gh-pages\n"

  #copy data we're interested in to other place
  cp -R . $HOME/build

  #go to home and setup git
  cd $HOME
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"

  #using token clone gh-pages branch
  git clone --branch=gh-pages --depth 1 https://${GH_TOKEN}@github.com/sporeventexplosion/frontend-nanodegree-mobile-portfolio  gh-pages > /dev/null

  #go into diractory and copy data we're interested in to that directory
  cd gh-pages
  cp -R $HOME/build/* .

  echo "INCOMING DIRECTORY LIST":
  ls

  #add, commit and push files
  git add -f .
  git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages"
  git push origin gh-pages > /dev/null

fi
