# The role of spatial organization for interpreting colormap data visualizations

This repo consists of the MATLAB code to generate the image dataset used in the experiments conducted for this research study.
- ```main.m``` creates the images dataset for the experiments in separate folders.
- ```generate_datasets.m``` generates the underlying data used to create images.
- ```generate_colormaps.m``` is the MATLAB script for generating the images using the data from ```generate_datasets.m```
- ```IMAGES``` folder containing the image dataset for all the experiments.
To create the image dataset for the experiments, simply execute the ```main.m``` file


- `AnalyzingExperimentData` contains the data used to analyze the experiment
	- `Analyzing(SPSS)` contains files regarding analyzing the data in SPSS
		- `ColormapAnalysesAll.sps` is the SPSS syntax file that provides the analyses conducted for experiments 1-4
		- `Exp1_Hotspot.sav` provides the analysis for the RTs of the Hotspot images in Experiment 1.
		- `Exp1_Scrambled.sav` provides the analysis for the RTs of the Scrambled images in Experiment 1.
		- `Exp2_BalancedImg.sav` provides the analysis for the RTs of the Balanced Cue images in Experiment 2.
		- `Exp2_HSmore.sav` provides the analysis for the RTs of the Hotspot More images in Experiment 2.
		- `Exp3_BalancedImg.sav` provides the analysis for the RTs of the Balanced Cue images in Experiment 3.
		- `Exp3_HSmore.sav` provides the analysis for the RTs of the Hotspot More images in Experiment 3.
		- `Exp4_BalancedImg.sav` provides the analysis for the RTs of the Balanced Cue images in Experiment 4.
		- `Exp4_HSmore.sav` provides the analysis for the RTs of the Hotspot More images in Experiment 4.
		- `HotspotLocationRT.sav` provides the analysis for the RTs of the Hotspot Localization task in Experiments 2-4.

	- `OrganizingPloting(Matlab)` contains `COLORMAPS_MAIN.m`, which is the main file that loads, organizes, and plots all experimental data. For all experiments, the Matlab code makes output files; these end in `_out`. There are corresponding `.csv` files we have produced with `_header` that include headers and subject numbers.
    	- **Experiment 1**
        	- `Exp1_ColormapSpace.mat` contains the data from Experiment 1.
    		- `Exp1_Hotspot_headers.csv` contains the data from Experiment 1 (Hotspot condition). Within this file, the first part of the header indicates colorscale: `A_` is Autumn and `V_` is Viridis. The second part indicates the lightness of the hotspot: `Dhs_` is dark hotspot and `Lhs_` is light hotspot. The third part indicates legend text position: `Ghi_` is "Greater" at the top of the legend and `Glo_` is "Greater" at the bottom of the legend. The fourth part indicates the mapping: `Dm` indicates a dark-more mapping and `Lm` indicates a light-more mapping. 
    		- `Exp1_OrganizeColormapsSpace.m` checks the accuracy of responses, prunes response times, and makes figures.
			- `Exp1_Scramble_headers.csv` contains the data from Experiment 1 (Scrambled condition). Headers are identical to the hotspot condition.
		- **Experiment 2**
            - `Exp2_ColormapSpaceHS.mat` contains the data from Experiment 2.
			- `Exp2_BalancedImg_headers.csv` contains the data from Experiment 2 (Balanced Cue Image condition). Headers are identical to Experiment 1.
			- `Exp2_HSmore_headers.csv` contains the data from Experiment 2 (Hotspot-More Image condition). Headers are identical to Experiment 1.
			- `Exp2_OrganizeColormapHS.m` checks the accuracy of responses, prunes response times, and makes figures.
		- **Experiment 3**
            - `Exp3_ColormapSpaceHHS.mat` contains the data from Experiment 3.
			- `Exp3_BalancedImg_headers.csv` contains the data from Experiment 3 (Balanced Cue Image condition). Within this file, the first part of the header indicates colorscale: The first part of the header indicates colorscale. `H_` is Hot and `V_` is Viridis. The rest of the header is identical to Experiment 1.
			- `Exp3_HSmore_headers.csv` contains the data from Experiment 3 (Hotspot-More Image condition). Headers are identical to Experiment 3 above.
			- `Exp3_OrganizecolormapHHS.m` checks the accuracy of responses, prunes response times, and makes figures.
		- **Experiment 4**
    		- `Exp4_ColormapSpaceHHSmall.mat` Contains the data from Experiment 4.
			- `Exp4_BalancedImg_headers.csv` contains the data from Experiment 4 (Balanced Cue Image condition). Headers are identical to Experiment 3.
			- `Exp4_HSmore_headers.csv` contains the data from Experiment 4 (Hotspot-More Image condition). Headers are identical to Experiment 3.
			- `Exp4_OrganizeColormapHSSmall.m` checks the accuracy of responses, prunes response times, and makes figures.
		- **Experiments 2-4**
        	- `Exp2-4_HotspotLocalization.csv` contains the RT data for the localization task in Experiments 2-4. Note: there was one less participant in Experiment 4 because a participant did not complete the localization task.
        	- `PlotHSlocation.m` plots the data for the hotspot localization task for Experiments 2-4.
		
		- **Helper files**
    		- `PruneRTs_HSLoc.m` is a function used to prune RTs if a participant is outside of 2 standard deviations of the their mean in Experiments 2-4.
			- `PlotColormaps.m` is a function used to plot data for Experiments 1-4.
			- `PlotColormapsHS.m` is a function used to plot data for Experiments 1-4.
			- `PruneRTs.m` prunes RTs if a participant is outside of 2 standard deviations of the their mean in Experiments 1-4.
			- `PruneRTs_HS.m` is a function used to prune RTs if a participant is outside of 2 standard deviations of the their mean in Experiments 2-4.

