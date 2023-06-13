TRAIN_FILE=$1
EXPERIMENT_NAME=$2

# https://iwiki.woa.com/pages/viewpage.action?pageId=4008209704
# sec-x-text-embedding-001
# 

/usr/local/miniconda3/bin/openai \
    --api-base 'https://sec-x.woa.com/v1' \
    --api-key '' \
    tools fine_tunes.prepare_data -f $TRAIN_FILE

/usr/local/miniconda3/bin/openai api fine_tunes.create \
    --training_file $TRAIN_FILE \
    --model davinci \
    --suffix $EXPERIMENT_NAME \
    --n_epochs 2 \
    --prompt_loss_weight 0
