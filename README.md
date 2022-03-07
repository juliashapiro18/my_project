## My project

For my project, I will analyze data on undergraduate suicide attempts at Emmanuel College

## Execute the analysis

To execute the analysis using Docker, please first pull the image from Docker hub using

```bash
docker pull juliashapiro18/my_project
```
To build the image and report, run

```bash
docker run -v /local_path/project_output:/project/output -it juliashapiro18/my_project
```
*Replace "/local_path" with desired directory on your laptop. The report can be retrieved from the project_output folder in this directory. 

Example 
```bash
docker run -v ~/Downloads/project_output:/project/output -it juliashapiro18/my_project
```
will create a folder called project_output in specified directory which contains the output report.html 

Note that you may receive a Warning message about grSoftVersion(), but this can be safely ignored.


