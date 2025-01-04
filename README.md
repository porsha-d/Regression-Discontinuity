# Regression-Discontinuity
Overview

This project investigates the causal effect of receiving a scholarship on academic performance for students who score near a cutoff of 50 on a standardized test. Using synthetic data generated in Python, we apply a Fuzzy RDD approach to estimate the treatment effect at the cutoff.

Research Question

"Does receiving a scholarship for scoring above 50 lead to higher academic performance for students near the cutoff?"

Dataset Description

The data used in this project is synthetic and was generated to simulate a realistic scenario for RDD analysis.

The synthetic dataset includes the following variables:

forcing_var: Test scores ranging from 0 to 100 (forcing variable).

outcome: Academic performance measure (e.g., GPA).

treatment: Indicator of whether a student received the scholarship (1 = yes, 0 = no).

The dataset simulates real-world scenarios where scholarship eligibility is probabilistic around the cutoff (Fuzzy RDD).

Methodology

Data Generation:

Synthetic data was created in Python using random distributions to simulate test scores, treatment assignment, and outcomes.

Analysis in Stata:

Fuzzy RDD analysis was performed using the rdrobust package in Stata.

A vertical cutoff of 50 on the forcing variable was applied to determine treatment assignment probabilities.

Steps in Analysis:

Visualizing the discontinuity in treatment and outcome variables.

Estimating the Local Average Treatment Effect (LATE) at the cutoff.

Testing the robustness of results with different bandwidths and specifications.
