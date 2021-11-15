---
title: "RNA-seq Demystified Workshop"
author: "UM Bioinformatics Core"
output:
        html_document:
            includes:
                in_header: header.html
            theme: paper
            toc: true
            toc_depth: 4
            toc_float: true
            number_sections: false
            fig_caption: true
            markdown: GFM
            code_download: false
---

<style type="text/css">

body, td {
   font-size: 18px;
}
code.r{
  font-size: 12px;
}
pre {
  font-size: 12px
}
</style>

## Wrapping up

We hope you now have more familiarity with key concepts, data types, tools, and how they all
connect to enable gene expression analysis from bulk RNA-Seq data.

- Day 1: UNIX/Bash, sequence files, QC, trimming, alignment
- Day 2: Count table, advanced QC, R, DESeq2
- Day 3: QC visualizations, Differential expression analysis

- Learning bioinformatic analyses more like a process than a task. Resources to
  consider:
  - <a href="https://brcf.medicine.umich.edu/cores/bioinformatics-core/training/" target="_blank">Training resources/workshops</a>
  - <a href="https://umcoderspaces.slack.com" target="_blank">UMcoderspaces Slack</a>
  - <a href="https://datascience.isr.umich.edu/events/coderspaces/" target="_blank">UM CoderSpaces</a>

---

## Housekeeping

- Please take our optional <a href="https://forms.gle/XcSnsfDMF6hwBJXBA" target="_blank">post-workshop survey</a> (5-10 minutes) <br />

- We will email you a link to the final session recordings by next week.

- The website/notes for this workshop and [UMcoderspaces Slack channel](https://umcoderspaces.slack.com) channel
  will be available.

- BASH/RStudio workshop compute environment (at Amazon) will be available until next Monday.
  - You can install necessary programs to run programs locally. Note
    that for typical data, the Day 1 programs assume your computer has sizable
    compute and storage capacity. (i.e. It may not be practical to run these on
    your laptop.)
  - Installing bioinformatics software is non-trivial and comprehensive instructions
    to setup a complete compute environment are outside the scope of this workshop.
    (We are considering offering a Computational Reproducibility workshop that
    would cover this.) For the intrepid, see relevant links below:
    - [Installing Conda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html#regular-installation)
    - [Conda environment YAML](https://github.com/umich-brcf-bioinf/2021-11-15-umich-rnaseq-demystified/blob/master/server_setup/conda_setup/workshop-rsd.yaml)
    - [Setting up R/R-Studio](workshop_setup/setup_instructions_advanced.html)

---

## Thank you

![Sponsors](images/Module00_sponsor_logos.png)

| ![](images/Module00_headshots/headshot_cgates.jpg) | ![](images/Module00_headshots/headshot_mbradenb.jpg)| ![](images/Module00_headshots/headshot_trsaari.jpg) |
|:-:|:-:|:-:|
| **Chris** | **Marci** | **Travis** |
| | | |
| ![](images/Module00_headshots/headshot_damki.jpg) | ![](images/Module00_headshots/headshot_rtagett.jpg) | ![](images/Module00_headshots/headshot_grkenney.jpg) | 
|  **Dana** | **Becky** | **Grace** |
| | | |
| ![](images/Module00_headshots/headshot_ncarruth.jpg)| ![](images/Module00_headshots/headshot_rcavalca.jpg)| ![](images/Module00_headshots/headshot_weishwu.jpg)|
| **Nick** | **Raymond** | **Weisheng** |
<br/>

YOU!

Thank you for participating on our workshop. We welcome your questions and feedback now and in the future.

Bioinformatics Workshop Team

[bioinformatics-workshops@umich.edu](mailto:bioinformatics-workshops@umich.edu) <br/>
[https://brcf.medicine.umich.edu/bioinformatics](https://brcf.medicine.umich.edu/bioinformatics)
