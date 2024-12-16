export Z_DATA_DIR=$(pwd)
export Z_N_SPLITS=10
export Z_MOSAIC=1.0
python scripts/prep.py
python scripts/main.py

rm -rf data/train-fold-new*
rm -rf data/val-fold-new*

export Z_N_SPLITS=24
export Z_MOSAIC=0.5
python scripts/prep.py
python scripts/main.py

export Z_RUN_1=""
export Z_RUN_2="2"

python scripts/ens.py