18/11/2022
We downloaded the data of the model. We run init.sh for setup of the environment and dataset (at the classification task). 
We have also started by checking how does "original_repo/classification/modules/repsurface_utils.py" has defined "UmbrellaSurfaceConstructor" class and inspected "cal_normal" function in detail.
We have checked torch.contiguous function and how does it relates to memory alignment of tensor data.
We have visualized the given example data at the "visualization" folder.


30/11/2022
Fixed Setup & Local Cuda variables, updated nvcc. No Commits.

05/12/2022
Finally, solved the issue with training script for classification (/mnt/disk5/batu/myprojects/DL2022proj/RepSurf/original_repo/classification/train_cls_scanobjectnn.py). Issue was solved by renaming data/h5_files as data/ScanObjectNN. After that, run the trainig for 20 minutes and trained 10 epochs, loss details are available at log folder (No Checkpoint).

12/12/2022
Classification training is finished in the previous week. Took about 11 hours for 250 epochs. Overall accuracy is about 83.73% (Test Single Accuracy, )

16/12/2022
Restarted Classification training to check reproducibility. Saved a copy of prev logs at 16122022log.zip. Also tried running repseurf_ssg_umbx2 (changed script gpu selection & train.py address) but got cuda kernel error currently.

17/12/2022
Second Training with seed=2800 (default) is finished and logs are saved under 17122022.zip. Another training w/ seed=3900 is restarted (also changed the script repsurf_ssg_umb.sh) to match with the provided checkpoint (link at classification/readme.md). 

31.12.2022
Started a detailed inspection of ScanObjectNN dataset to see the ground truths together with predictions. According to the original ScanObjectNN paper and Respsurf paper, it is claimed that there are 2902 point cloud images exists in the dataset. However, when we have downloaded the dataset shared by the authors in order to reproduce the experiments, we have seen that there are 2882 point cloud images exist. 