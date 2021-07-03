python3 DeepSpeech.py \
--n_hidden 2048 \
--epochs 150 \
--checkpoint_dir deepspeech-0.9.3-checkpoint/ \
--export_dir exported_models/ \
--train_files data/train.csv \
--dev_files data/dev.csv \
--test_files data/test.csv \
--learning_rate 0.0001 \
--train_cudnn \
--early_stop true

./convert_graphdef_memmapped_format --in_graph=exported_models/output_graph.pb --out_graph=exported_models/output_graph.pbmm
