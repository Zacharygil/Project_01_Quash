//
// Created by Zachary Gilchrist on 2/21/18.
//

#ifndef FOREGROUNDJOB_H
#define FOREGROUNDJOB_H

#include "deque.h"


/*
 * Declare the queue data structure
 */
IMPLEMENT_DEQUE_STRUCT (job_process_queue_t, pid_t);

/*
 * Declare a queue for storing process ids (i.e. integers)
 */
PROTOTYPE_DEQUE (job_process_queue_t, pid_t);

#endif //QUASH_FOREGROUNDJOB_H
