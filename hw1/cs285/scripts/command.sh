ENV_NAME="Hopper"
n_iter=10
for Train_iter in 1000 #2000 3000 4000 5000
do
  python cs285/scripts/run_hw1.py    --do_dagger --expert_policy_file "cs285/policies/experts/$ENV_NAME.pkl"     --env_name "$ENV_NAME-v2" --exp_name "nodagger_$ENV_NAME" --n_iter $n_iter  --expert_data "cs285/expert_data/expert_data_$ENV_NAME-v2.pkl" --video_log_freq -1 --eval_batch_size 5000 --num_agent_train_steps_per_iter $Train_iter --size 64 --n_layers 2
#python cs285/scripts/run_hw1.py     --expert_policy_file cs285/policies/experts/HalfCheetah.pkl     --env_name HalfCheetah-v2 --exp_name nodagger_halfcheetah --n_iter 1  --expert_data cs285/expert_data/expert_data_HalfCheetah-v2.pkl --video_log_freq -1 --eval_batch_size 5000
done