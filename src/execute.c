/**
 * @file execute.c
 *
 * @brief Implements interface functions between Quash and the environment and
 * functions that interpret an execute commands.
 *
 * @note As you add things to this file you may want to change the method signature
 */

#include "execute.h"

#include <stdio.h>

#include "quash.h"
#include "JobHandler.h"

#include <stdio.h>
#include <fcntl.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/stat.h>
#include <stdlib.h>

//Memory Constraint
#define TAKEOVER 1
#define WRITEND 1
#define READEND 0
#define SIZE 512


job_id_t job_id = 1;


/*
IMPLEMENT_DEQUE_STRUCT(Pids, pid_t);
IMPLEMENT_DEQUE(Pids, pid_t);

struct Job
{
    int job_id;
    Command cmd;
    const char* command;
    Pids pids;
    pid_t* pid;
}Job;

IMPLEMENT_DEQUE_STRUCT(Jobs, struct Job);
IMPLEMENT_DEQUE(Jobs, struct Job);
*/

// Remove this and all expansion calls to it
/**
 * @brief Note calls to any function that requires implementation
 */
//#define IMPLEMENT_ME()                                                  \
 // fprintf(stderr, "IMPLEMENT ME: %s(line %d): %s()\n", __FILE__, __LINE__, __FUNCTION__)

/***************************************************************************
 * Interface Functions
 ***************************************************************************/
/*
 *
 *
 *
*/






// Return a string containing the current working directory.
char* get_current_directory(bool* should_free) {
  // TODO: Get the current working directory. This will fix the prompt path.
  // HINT: This should be pretty simple

    //char* curdir = getwd();
  //using get_current_dir_name(); because of void input
//    char* curdir = get_current_dir_name();

  // Change this to true if necessary
  *should_free = true;
  return getcwd(NULL, SIZE);
}


/*----------------------------
Job new_Job()
{
    Job job;
    job.is_background = false;
    job.process_queue = new_job_process_queue_t(0);
    for(int i = 0; i < MAX_PIPES; i++)
    {
        pipe(job.pipes[i]);
    }
    return job;
}

void push_process_front_to_job(Job* job,pid_t pid)
{
    push_front_job_process_queue_t(&(job->process_queue),pid);
}

void destroy_job(Job* job)
{
    destroy_job_process_queue_t(&(job->process_queue));
    if(job->is_background)
    {
        free(job->cmd);
    }
}
void destroy_job_callback(Job job)
{
    destroy_job_process_queue_t(&(job.process_queue));
    if(job.is_background)
    {
        free(job.cmd);
    }
}
*/
//------------------------------------

// Returns the value of an environment variable env_var
const char* lookup_env(const char* env_var) {
    // TODONE: Lookup environment variables. This is required for parser to be able
    // to interpret variables from the command line and display the prompt
    // correctly
    // HINT: This should be pretty simple
    return getenv(env_var);
}

  // TODONE: Remove warning silencers
 // (void) env_var; // Silence unused variable warning

//  return "???";

void write_env(const char* env_var, const char* val)
{
    setenv( env_var, val, TAKEOVER);
}




//struct Job current_job;
// Check the status of background jobs
void check_jobs_bg_status() {
  // TODO: Check on the statuses of all processes belonging to all background
  // jobs. This function should remove jobs from the jobs queue once all
  // processes belonging to a job have completed.
  //IMPLEMENT_ME();

  // TODO: Once jobs are implemented, uncomment and fill the following line
  // print_job_bg_complete(job_id, pid, cmd);

/*
    if( is_empty_background_job_queue_t(&background_queue))
    {
        return;
    }
}

int job_queue_length = length_background_job_queue_t(&background_queue);

for(int i = 0; i < job_queue_length; i++)
{
    Job job;
    job_process_queue_t queue;
    int process_queue_length;
    bool job_still_has_running_process;
    job = pop_front_background_job_queue_t(&background_queue);
    queue = job.process_queue;
    process_queue_length = length_job_process_queue_t(&queue);
    job_still_has_running_process = false;
*/



    if( is_empty_background_job_queue_t(&background_queue) )
    {
        return;
    }

    int job_queue_length = length_background_job_queue_t(&background_queue);

    for(int i = 0; i < job_queue_length; i++)
    {
        Job job;
        job_process_queue_t queue;
        int process_queue_length;
        bool job_still_has_running_process;;

        job = pop_front_background_job_queue_t(&background_queue);
        queue = job.process_queue;
        process_queue_length = length_job_process_queue_t(&queue);
        job_still_has_running_process = false;


        for( int j = 0; j < process_queue_length; j++ )
{
int status;
int pid;
pid_t return_pid;

pid = pop_front_job_process_queue_t(&queue);
return_pid = waitpid(pid, &status, WNOHANG);
if ( -1 == return_pid )
{
// error
}
else if ( 0 == return_pid )
{
// child is still running
job_still_has_running_process = true;
}
else if (return_pid == pid)
{
// child is finished.
}
//put it back in the container.
push_back_job_process_queue_t(&queue,pid);
} // end for process_queue_length

if( job_still_has_running_process )
{
// re-add it to the queue
push_back_background_job_queue_t(&background_queue,job);
}
else
{
// don't add it back, print message
print_job_bg_complete(
        job.job_id,
peek_front_job_process_queue_t(&job.process_queue),
job.cmd
);
destroy_job(&job);
}
} //end for job_queue_length
}





// Prints the job id number, the process id of the first process belonging to
// the Job, and the command string associated with this job
void print_job(int job_id, pid_t pid, const char* cmd) {
  printf("[%d]\t%8d\t%s\n", job_id, pid, cmd);
  fflush(stdout);
}

// Prints a start up message for background processes
void print_job_bg_start(int job_id, pid_t pid, const char* cmd) {
  printf("Background job started: ");
  print_job(job_id, pid, cmd);
}

// Prints a completion message followed by the print job
void print_job_bg_complete(int job_id, pid_t pid, const char* cmd) {
  printf("Completed: \t");
  print_job(job_id, pid, cmd);
}

/***************************************************************************
 * Functions to process commands
 ***************************************************************************/
// Run a program reachable by the path environment variable, relative path, or
// absolute path
void run_generic(GenericCommand cmd) {
  // Execute a program with a list of arguments. The `args` array is a NULL
  // terminated (last string is always NULL) list of strings. The first element
  // in the array is the executable
  char* exec = cmd.args[0];
  char** args = cmd.args;

  // TODONE: Remove warning silencers
  //(void) exec; // Silence unused variable warning
 // (void) args; // Silence unused variable warning
    execvp(exec, args);


  // TODOne: Implement run generick
  //IMPLEMENT_ME();

  perror("ERROR: Failed to execute program");
}




// Print strings
void run_echo(EchoCommand cmd) {
  // Print an array of strings. The args array is a NULL terminated (last
  // string is always NULL) list of strings.
  char** str = cmd.args;

  // TODONE: Remove warning silencers
 // (void) str; // Silence unused variable warning


  // TODNE: Implement echo
 // IMPLEMENT_ME();

    int i = 0;
    while(NULL != str[i])
    {
        printf("%s", str[i]);
        i++;
    }
    printf("\n");


  // Flush the buffer before returning
  fflush(stdout);
}


// Sets an environment variable
void run_export(ExportCommand cmd) {
  // Write an environment variable
  const char* env_var = cmd.env_var;
  const char* val = cmd.val;

  // TODOne: Remove warning silencers
//  (void) env_var; // Silence unused variable warning
 // (void) val;     // Silence unused variable warning
setenv(env_var,val,TAKEOVER);

  // TODOne: Implement export.
  // HINT: This should be quite simple.
 // IMPLEMENT_ME();
}

// Changes the current working directory
void run_cd(CDCommand cmd) {
  // Get the directory name
  const char* dir = cmd.dir;
    char* prev;
    char* crnt;
  // Check if the directory is valid
  if (dir == NULL) {
    perror("ERROR: Failed to resolve path");
    return;
  }


  // TODOne: Change directory
  // TODOne: Update the PWD environment variable to be the new current working
  // directory and optionally update OLD_PWD environment variable to be the old
  // working directory.
  //IMPLEMENT_ME();
    prev = getcwd(NULL, SIZE);
    chdir(dir);
    crnt = getcwd(NULL, SIZE);
    setenv("PWD", crnt, TAKEOVER);
    setenv("OLD_PWD", prev, TAKEOVER);
    free(prev);
    free(crnt);
}





// Sends a signal to all processes contained in a job
void run_kill(KillCommand cmd) {
  int signal = cmd.sig;
  int job_id = cmd.job;

  // TODO: Remove warning silencers
  //(void) signal; // Silence unused variable warning
  //(void) job_id; // Silence unused variable warning

  // TODO: Kill all processes associated with a background job
  //IMPLEMENT_ME();
   int job_length = length_background_job_queue_t(&background_queue);
    for(int i = 0; i < job_length; i++)
    {
      //
        //  struct Job job;
        Job job = pop_front_backgorund_job_queue_t(&background_queue);
        if (job_id == job.job_id){
            //Pids job_queue;
            int process_queue_length;
            //job_queue= job.pids;


            process_queue_length = length_job_process_queue_t(&queue);
            for(int j=0; j< process_queue_length; j++ ){
                int pid = pop_front_job_process_queue_t(&queue);
                kill(pid,signal);
                push_back_process_queue_t(&queue,pid);
            }
            push_back_background_job_queue_t(&background_queue,job);
        }
        else{
            push_back_background_job_queue_t(&background_queue,job);
        }
    }


}


// Prints the current working directory to stdout
void run_pwd() {
  // TODOne: Print the current working directory
 // IMPLEMENT_ME();
 bool should_free;
    char* str = get_current_directory(&should_free);
    printf("%s\n", str);
    if(should_free) {
        free(str);
    }
  // Flush the buffer before returning
  fflush(stdout);
}
/*
// Prints all background jobs currently in the job list to stdout
void run_jobs() {
  // TODO: Print background jobs
  //IMPLEMENT_ME();
    if(is_empty_Jobs(&current_job)){
        return;
    }
    int job_length = length_Jobs(&current_job);
    for(int i = 0; i < job_length; i++)
    {
        struct Job job = pop_front_Jobs(&current_job);
        print_job(job.job_id,peek_front_Pids(&job.pid), job.command);
        push_back_Jobs(&current_job, job);

    }
  // Flush the buffer before returning
  fflush(stdout);
}
*/
void run_jobs() {
    // Print background jobs
    if( is_empty_background_job_queue_t(&background_queue) )
    {
        return;
    }

    int job_queue_length = length_background_job_queue_t(&background_queue);

    for(int i = 0; i < job_queue_length; i++)
    {
        Job job = pop_front_background_job_queue_t(&background_queue);
        print_job(
                job.job_id,
                peek_front_job_process_queue_t(&job.process_queue),
                job.cmd
        );
        push_back_background_job_queue_t(&background_queue,job);
    }

    // Flush the buffer before returning
    fflush(stdout);
}

/***************************************************************************
 * Functions for command resolution and process setup
 ***************************************************************************/

/**
 * @brief A dispatch function to resolve the correct @a Command variant
 * function for child processes.
 *
 * This version of the function is tailored to commands that should be run in
 * the child process of a fork.
 *
 * @param cmd The Command to try to run
 *
 * @sa Command
 */
void child_run_command(Command cmd) {
  CommandType type = get_command_type(cmd);

  switch (type) {
  case GENERIC:
    run_generic(cmd.generic);
    break;

  case ECHO:
    run_echo(cmd.echo);
    break;

  case PWD:
    run_pwd();
    break;

  case JOBS:
    run_jobs();
    break;

  case EXPORT:
  case CD:
  case KILL:
  case EXIT:
  case EOC:
    break;

  default:
    fprintf(stderr, "Unknown command type: %d\n", type);
  }
}

/**
 * @brief A dispatch function to resolve the correct @a Command variant
 * function for the quash process.
 *
 * This version of the function is tailored to commands that should be run in
 * the parent process (quash).
 *
 * @param cmd The Command to try to run
 *
 * @sa Command
 */
void parent_run_command(Command cmd) {
  CommandType type = get_command_type(cmd);

  switch (type) {
  case EXPORT:
    run_export(cmd.export);
    break;

  case CD:
    run_cd(cmd.cd);
    break;

  case KILL:
    run_kill(cmd.kill);
    break;

  case GENERIC:
  case ECHO:
  case PWD:
  case JOBS:
  case EXIT:
  case EOC:
    break;

  default:
    fprintf(stderr, "Unknown command type: %d\n", type);
  }
}

/**
 * @brief Creates one new process centered around the @a Command in the @a
 * CommandHolder setting up redirects and pipes where needed
 *
 * @note Processes are not the same as jobs. A single job can have multiple
 * processes running under it. This function creates a process that is part of a
 * larger job.
 *
 * @note Not all commands should be run in the child process. A few need to
 * change the quash process in some way
 *
 * @param holder The CommandHolder to try to run
 *
 * @sa Command CommandHolder
 */
void create_process(CommandHolder holder) {
  // Read the flags field from the parser
  bool p_in  = holder.flags & PIPE_IN;
  bool p_out = holder.flags & PIPE_OUT;
  bool r_in  = holder.flags & REDIRECT_IN;
  bool r_out = holder.flags & REDIRECT_OUT;
  bool r_app = holder.flags & REDIRECT_APPEND; // This can only be true if r_out
                                               // is true

  // TODO: Remove warning silencers
  //(void) p_in;  // Silence unused variable warning
  //(void) p_out; // Silence unused variable warning
  //(void) r_in;  // Silence unused variable warning
  //(void) r_out; // Silence unused variable warning
  //(void) r_app; // Silence unused variable warning

  // TODO: Setup pipes, redirects, and new process
  //implement_me();

  //parent_run_command(holder.cmd); // This should be done in the parent branch of
                                  // a fork
  //child_run_command(holder.cmd); // This should be done in the child branch of a fork
//
///
/// /*


    /*
    static int environment_pipes[2][2];
    static int prevous_pipe = -1;
    static int next_pipe = 0;
    //(void) p_out; // Silence unused variable warning
    if (p_out) {
        /* This is the only condition under which a new pipe creation is required.
           You should be able to understand why this is the case */
  //      pipe (environment_pipes[next_pipe]);
//    }

/*
    pid_t pid = fork ();
    if (0 == pid) {
        //(void) p_in;  // Silence unused variable warning
        if (p_in) {
            dup2 (environment_pipes[prevous_pipe][READEND], STDIN_FILENO);
            close (environment_pipes[prevous_pipe][WRITEND]);
        }
        if (p_out) {
            dup2 (environment_pipes[next_pipe][WRITEND], STDOUT_FILENO);
            close (environment_pipes[next_pipe][READEND]);
        }
        //(void) r_in;  // Silence unused variable warning
        if(r_in) {
            int inFile = open(holder.redirect_in, O_RDONLY );
            dup2(fileno(inFile),STDIN_FILENO);
            close(inFile);
        }
        //(void) r_out; // Silence unused variable warning
        if(r_out) {
            FILE * f_out;
            //(void) r_app; // Silence unused variable warning
            if(r_app) {
               f_out = fopen(holder.redirect_out, "a" );
            }
            else {
                f_out = fopen(holder.redirect_out, "w" );

            }
            dup2(fileno(f_out),STDOUT_FILENO);
            fclose(f_out);
        }

*/
/*

        child_run_command (holder.cmd);
        destroy_job(current_job);
        exit (EXIT_SUCCESS);
    }
    else {
        int wstatus;
        waitpid(-1, &wstatus, 0);
        if (p_out) {
            close (environment_pipes[next_pipe][WRITEND]);
        }
        if(p_in) {
            close(environment_pipes[prevous_pipe][0]);
        }
        if(get_command_type(holder.cmd) == EXPORT ||get_command_type(holder.cmd) == CD || get_command_type(holder.cmd) == KILL) {
            parent_run_command(holder.cmd);
        }
        prevous_pipe = (prevous_pipe + 1) % 2;
        next_pipe = (next_pipe + 1) % 2;
    }
    return;
}

*/
// -------------------------------mine^--------


    pid_t pid = fork();
    if( 0 == pid )
    {
        // redirect input from file
        if( r_in )
        {
            int file_in = open(holder.redirect_in,O_RDONLY);
            dup2(file_in,STDIN_FILENO);
            close(file_in);
        }
        // redirect output to file
        if( r_out )
        {
            FILE * file;
            if( r_app )
            {
                file = fopen(holder.redirect_out,"a");
            }
            else
            {
                file = fopen(holder.redirect_out,"w");
            }
            dup2(fileno(file),STDOUT_FILENO);
            fclose(file);
        }
        // If we are piping output elsewhere
        if( p_out )
        {
            // duplicate
            dup2(current_job->pipes[stepOfJob][WRITE_END],STDOUT_FILENO);
            // dup'd handle is sufficient
            close(current_job->pipes[stepOfJob][WRITE_END]);
        }
        else
        {
            // close it since we arent using it
            close(current_job->pipes[stepOfJob][WRITE_END]);
        }

        // if we are piping input from elsewhere
        if( p_in )
        {
            // duplicate
            dup2(current_job->pipes[stepOfJob-1][READ_END],STDIN_FILENO);
            // dup'd handle is sufficient
            close(current_job->pipes[stepOfJob-1][READ_END]);
        }
        else if( 0 <= stepOfJob-1 )
        {
            // close it since we arent using it
            close(current_job->pipes[stepOfJob-1][READ_END]);
        }

        child_run_command(holder.cmd); // This should be done in the child branch
        destroy_job(current_job);
        exit(EXIT_SUCCESS);
    }
    else
    {
        if( p_out )
        {
            close(current_job->pipes[stepOfJob][WRITE_END]);
        }
        if( p_in )
        {
            close(current_job->pipes[stepOfJob-1][READ_END]);
        }
        push_process_front_to_job(current_job,pid);
        parent_run_command(holder.cmd); // This should be done in the parent branch
    }

}



// Do the thing --------------------
void initBackgroundJobQueue(void)
{
    background_queue = new_destructable_background_job_queue_t(1,destroy_job_callback);
}

void destroyBackgroundJobQueue(void)
{
    destroy_background_job_queue_t(&background_queue);
}
//-------------------------------



// Run a list of commands
void run_script(CommandHolder* holders) {
    if (holders == NULL)
        return;

    check_jobs_bg_status();

    if (get_command_holder_type(holders[0]) == EXIT &&
        get_command_holder_type(holders[1]) == EOC) {
        end_main_loop();
        return;
    }

    CommandType type;
    //struct Job thisJob;
   // Pids pids;
   //new
    Job current_job = new_Job();
   // int Pipes[sizeof(holders)][2];
    // Run all commands in the `holder` array
    for (int i = 0; (type = get_command_holder_type(holders[i])) != EOC; ++i){
        create_process(holders[i]);
}


    /*
  if (!(holders[0].flags & BACKGROUND)) {
    // Not a background Job
    // TODO: Wait for all processes under the job to complete
    //implement_me();
      while(!is_empty_Pids(&pids)) {
          int status;
          if (waitpid(peek_back_Pids(&current_job.pids),&status, 0) != -1){
              pop_back_Pids(&current_job.pids);
          }


      }
      destroy_Pids(&pids);
  }

*/


    if ( !(holders[0].flags & BACKGROUND) )
    {
        // Not a background Job
        // Wait for all processes under the job to complete
        while ( !is_empty_job_process_queue_t(&current_job.process_queue) )
        {
            int status;
            if (
                    waitpid(peek_back_job_process_queue_t(&current_job.process_queue),
                            &status, 0) != -1)
            {
                pop_back_job_process_queue_t(&current_job.process_queue);
            }
        }

        destroy_job(&current_job);
    }

  else {
    // A background job.
    // TODO: Push the new job to the job queue
    //implement_me();
    // TODO: Once jobs are implemented, uncomment and fill the following line
    // print_job_bg_start(job_id, pid, cmd);
      current_job.is_background = true;
      current_job.cmd = get_command_string();
      current_job.job_id = job_id++;
      push_back_background_job_queue_t(&background_queue, current_job);

      print_job_bg_start(
              current_job.job_id,
              peek_front_job_process_queue_t(&current_job.process_queue),
              current_job.cmd
      );




  }



}
