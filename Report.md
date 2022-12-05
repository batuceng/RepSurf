18/11/2022
We downloaded the data of the model. We run init.sh for setup of the environment and dataset (at the classification task). 
We have also started by checking how does "original_repo/classification/modules/repsurface_utils.py" has defined "UmbrellaSurfaceConstructor" class and inspected "cal_normal" function in detail.
We have checked torch.contiguous function and how does it relates to memory alignment of tensor data.
We have visualized the given example data at the "visualization" folder.


30/11/2022
Fixed Setup & Local Cuda variables, updated nvcc. No Commits.

05/12/2022
Finally, solved the issue with training script for classification (/mnt/disk5/batu/myprojects/DL2022proj/RepSurf/original_repo/classification/train_cls_scanobjectnn.py). Issue was solved by renaming data/h5_files as data/ScanObjectNN. After that, run the trainig for 20 minutes and trained 10 epochs, loss details are available at log folder (No Checkpoint).

