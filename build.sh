# working dir 
wdir=~/Sites/jekyll/Allauzen.github.io

cd $wdir; 
# call jekyll 
bundle exec jekyll build; 
# brut push 
git add -A && git commit -m 'brute push'; 
git push ; 
# rebuild
git commit -m 'rebuild pages' --allow-empty; 
git push