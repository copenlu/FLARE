for file in samples/final_predictions/gsm8k/*.json
do
    python llmsearch/eval.py --data_path $file --eval_type code --eval_mode exact
done

for file in samples/final_predictions/SQA/*.json
do
    python llmsearch/eval.py --data_path $file --eval_type code --eval_mode exact
done

for file in samples/final_predictions/aqua/*.json
do
    python llmsearch/eval.py --data_path $file --eval_type code --eval_mode exact
done