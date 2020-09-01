host=`/evix/scripts/hostname.sh`

git fetch

updates=(`git diff --name-only bryce-update...origin/bryce-update | grep "config/peers/$host" | cut -d '.' -f2`)

git merge origin/master

for update in $updates; do
  /evix/scripts/ts/$update
done
