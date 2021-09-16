---
title: "RNA-seq Demystified Workshop"
author: "UM Bioinformatics Core"
output:
        html_document:
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

- Day 1: UNIX, sequence file types, QC, process of producing a count table
- Day 2: R, DESeq2, QC visualizations, process of differential expression analysis
- Learning bioinformatic analyses more like a process than a task. Resources to
  consider:
  - [Training resources/workshops](https://brcf.medicine.umich.edu/cores/bioinformatics-core/training/)
  - [UMcoderspaces Slack](https://umcoderspaces.slack.com)

---

## Housekeeping

- Please take our optional [post-workshop survey](https://forms.gle/7CQYuKBAcH94tqng8) (5-10 minutes) <br />
  https://forms.gle/7CQYuKBAcH94tqng8

- We will email you a link to the session recordings by next week.

- The website/notes for this workshop and [UMcoderspaces Slack channel](https://umcoderspaces.slack.com) channel
  will be available.

- BASH/RStudio workshop compute environment (at Amazon) will be available until this Friday.
  - You can install necessary programs to run programs locally. Note
    that for typical data, the Day 1 programs assume your computer has sizable
    compute and storage capacity. (i.e. It may not be practical to run these on
    your laptop.)
  - Installing bioinformatics software is non-trivial and comprehensive instructions
    to setup a complete compute environment are outside the scope of this workshop.
    (We are considering offering a Computational Reproducibility workshop that
    would cover this.) For the intrepid, see relevant links below:
    - [Installing Conda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html#regular-installation)
    - [Conda environment YAML](https://github.com/umich-brcf-bioinf/2021-08-09-umich-rnaseq-demystified/blob/master/server_setup/conda_setup/workshop-rsd.yaml)
    - [Setting up R/R-Studio](https://umich-brcf-bioinf.github.io/2021-08-09-umich-rnaseq-demystified/setup_instructions_advanced)

---

## Thank you

![Sponsors](images/Module00_sponsor_logos.png)

| ![](images/Module00_headshots/headshot_cgates.jpg) | ![](images/Module00_headshots/headshot_mbradenb.jpg)| ![](images/Module00_headshots/headshot_trsaari.jpg)| ![](images/Module00_headshots/headshot_damki.jpg)|
|:-:|:-:|:-:|:-:|
| **Chris** | **Marci** | **Travis** | **Dana** |
| | | | |
| ![](images/Module00_headshots/headshot_rtagett.jpg) | ![](images/Module00_headshots/headshot_ncarruth.jpg)| ![](images/Module00_headshots/headshot_rcavalca.jpg)| ![](images/Module00_headshots/headshot_weishwu.jpg)|
| **Becky** | **Nick** | **Raymond** | **Weisheng** |

YOU!

Thank you for participating on our workshop. We welcome your questions and feedback now and in the future.

Bioinformatics Workshop Team

[bioinformatics-workshops@umich.edu](mailto:bioinformatics-workshops@umich.edu) <br/>
[https://brcf.medicine.umich.edu/bioinformatics](https://brcf.medicine.umich.edu/bioinformatics)
