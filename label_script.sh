
python3 pgn2boards.py --player-file 'Ivanchuk.pgn'  &&

for index in $(seq 0 10 1000000);#
do
python3 board_labeling.py --board-index $index  --player-file 'Ivanchuk.pgn' --dump-path '/media/ahmad/ahmad/Ivanchuk_files/'
echo $index
done

python3 joining_boards.py --load-path '/media/ahmad/ahmad/Ivanchuk_files/'
