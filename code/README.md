# Hurricane Ida’s blackout-heatwave compound hazard risk in a changing climate

Welcome to the Compute Capsule for "Compound Hazard Estimation for Hurricane Ida". This project is meticulously structured to enable straightforward replication of the analyses and the generation of figures as delineated in the associated publication (Hurricane Ida’s blackout-heatwave compound hazard risk in a changing climate). This guide will walk you through reproducing the figures, with a note that figure 4 is generated using external software.

## Code, Data, Results Structure

This capsule is systematically organized into the `/code` and `/data` directories, with output directed to `/results`:

- `/code`: This directory houses all MATLAB scripts essential for producing the manuscript's figures. Primary scripts are aptly named `fig1.m`, `fig2.m`, and so forth, mirroring the figures they correspond to in the manuscript.

- `/data`: Here, you'll find all datasets employed in the simulation and analysis phases, including but not limited to `Ida_profile.mat` and `LA_county.mat`. These `.mat` files encompass the preprocessed data poised for analysis via the MATLAB scripts.

- `/results`: A destination for all plots and figures generated, this directory ensures the seamless availability of outputs for review in the Reproducibility pane. These can be easily accessed and downloaded as required.

### Replicating Results and Figures

Follow these steps to replicate the analysis results and regenerate the figures:

1. Begin by navigating to the `/code` directory.
2. Execute the provided "run" file to initiate the simulation processes.
3. Upon completion, generated results, including plots and figures, will be located in the `/results` folder.
4. It's important to note that the figures generated are devoid of labels or axis names. These details are typically added using other software platforms as part of the publication process.

### Acknowledgements

We extend our heartfelt gratitude for taking the time to compile and review our code. Should you encounter any challenges or have queries regarding the replication process, please do not hesitate to reach out for further assistance at kelvinfkr2015@gmail.com.

