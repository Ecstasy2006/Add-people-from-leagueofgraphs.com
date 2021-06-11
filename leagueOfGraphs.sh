rm evelynn.csv
for i in {2..35}
do   
    curl https://www.leagueofgraphs.com/rankings/summoners/evelynn/eune/page-$i | grep '<a href="/summoner/champions/evelynn/eune' >> evelynn.csv
done
sed -i 's/<a href="\/summoner\/champions\/evelynn\/eune\///; s/>//; s/"//g; s/\///g; s/ //g; s/pl$//; s/Pl$//; s/PL$//; s/+/ /g'  evelynn.csv
sed -i '$!N; /^\(.*\)\n\1$/!P; D' evelynn.csv
