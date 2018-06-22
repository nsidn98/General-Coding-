## Errors faced during the training for tensorflow object detection.

1. `ValueError: Tried to convert 't' to a tensor and failed. Error: Argument must be a dense tensor: range(0, 3) - got shape [3], but wanted [].`
  * Go to `models/research/object_detection/utils/learning_schedules.py` lines 167-169. Change from 
  ~~~
  rate_index = tf.reduce_max(tf.where(tf.greater_equal(global_step, boundaries),range(num_boundaries),[0] * num_boundaries))
  ~~~

  to
  ~~~
  rate_index = tf.reduce_max(tf.where(tf.greater_equal(global_step, boundaries), list(range(num_boundaries)),[0] * num_boundaries))
  ~~~
  
  
  2. `ModuleNotFoundError: No module named 'utils'`
  * Add the `models/research/slim`,`models/research/` and `models/research/object-detection` in PYTHONPATH.
  
  3. Check for the `tfrecord_generator.py` and the `.csv` file before running it as all the classes have to be covered.
  
  4. Check for the `.config` file if the `number of classes` has been set-up properly and the filepaths to the `labelmap.pbtxt`,'training.ckpt' and the training and testing files.
