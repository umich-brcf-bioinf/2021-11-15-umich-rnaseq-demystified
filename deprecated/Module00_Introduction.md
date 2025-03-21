---
title: "RNA-Seq Demystified Workshop"
author: "UM Bioinformatics Core Workshop Team"
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

# Welcome

## About the Bioinformatics Core

- The University of Michigan Bioinformatics Core is a team of analysts that help
  researchers **design, analyze, and interpret** high-throughput genomics experiments.
- Last year we helped about 60 researchers design and execute about 100 projects
  including gene expression, epigenetic, variant identification, functional
  enrichment and many other kinds of analyses.
- We provide letters of support for grant proposals.
- We are creating a series of bioinformatics-focused workshops.
- https://brcf.medicine.umich.edu/bioinformatics

## About the workshop team
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

## Workshop sponsors
![Sponsors](images/Module00_sponsor_logos.png)

- [University of Michigan Library](https://www.lib.umich.edu/)

  Our mission is to support, enhance, and collaborate in the instructional, research, and
  service activities of faculty, students, and staff, and contribute to the common good by
  collecting, organizing, preserving, communicating, sharing, and creating the record of human
  knowledge.

- [Biomedical Research Core Facilities](https://brcf.medicine.umich.edu/)

  Biomedical Research Core Facilities (BRCF) helps researchers economically take advantage of
  the latest technology and collaborate with top experts in the field. Established in 1986, the
  BRCF was formed to offer centralized access to research services and equipment.
<br/>
<br/>

# Code of Conduct

- Be kind to others. Do not insult or put down others. Behave professionally. Remember that
  harassment and sexist, racist, or exclusionary jokes are not appropriate for the workshop.

- All communication should be appropriate for a professional audience including people of many
  different backgrounds. Sexual language and imagery is not appropriate.

- The Bioinformatics Core is dedicated to providing a harassment-free community for everyone,
  regardless of gender, sexual orientation, gender identity and expression, disability, physical
  appearance, body size, race, or religion. We do not tolerate harassment of participants in any
  form.

- Thank you for helping make this a welcoming, friendly community for all.

- If you have questions about the CoC please reach out to the hosts during the workshop, or
  email us at bioinformatics-workshops@umich.edu.

- To report a CoC incident/concern, please email Chris Gates (Bioinformatics Core, Managing
  Director) at cgates@umich.edu or contact the University of Michigan Office of Institutional
  Equity at institutional.equity@umich.edu.
<br/>
<br/>

# Using Zoom and Slack

- We will be recording this session. Recordings will be available to participants  
  following the workshop.


## <img src="images/Module00_zoom_logo.png" alt="Zoom" width=120/>

- Zoom controls are at the bottom of the Zoom window:
![Zoom controls](images/Module00_zoom_controls.png?s)

- To minimize distractions, we encourage participants to keep their audio muted
  (unless actively asking a question).
- To maximize engagement, we encourage participants to keep their video on.
- Slack works better than Zoom's Chat function so avoid Zoom Chat for now.
- You can enable transcription subtitles for your view.
- We will be using Breakout Rooms occasionally for ad-hoc 1-1 helper support.
  We will review this in detail together in a few minutes.
- Zoom's "non-verbal controls" are a useful way to interact
  - Depending on your version of Zoom you can access these either
    - in the **Reactions** button on you main Zoom window
    - at the bottom of the **Participant** pane

![Zoom non verbals](images/Module00_zoom_nonverbals.png)

  - **Raise Hand** to request clarification or ask a question. (Same an in-person workshop.)
  - **Gray chevron [Slow down / Give me a moment]** when you need more time to complete
    an exercise or you would like the instructor to repeat an idea
  - Instructors will use **Green check** and **Red X** to poll the group
    at checkpoints along the way.
<br/>
<br/>

### Exercise: Use Zoom non-verbals
  - Everyone use Zoom to raise your hand. <img src="images/Module00_zoom_raise_hand.png" width=50/>
<br/>
<br/>


### Exercise: Using Zoom Breakout Rooms
Take a moment to briefly introduce yourself (name, dept/lab, area of study) in a
breakout room.

  - Zoom: Click Breakout Rooms
  - Find the room corresponding to the first letter of your first name
  - Hover over the number to the right and click **Join**.
  - When you have completed introductions, you can leave the breakout room to rejoin the main room.

  ![Breakout rooms](images/Module00_zoom_breakout_room.png)
<br/>
<br/>


## <img src="images/Module00_slack_logo.png" alt="Slack" width=120/>

- **Slack** can be used to communicate to the group or to individuals and has a
  few features/behaviors that we prefer over Zoom's Chat functionality.

![Posting messages to Slack](images/Module00_slack.png)

  - Slack messages will be posted to the **2021-november-rsd-workshop** channel.  
    Click on the channel in the left pane (1) to select this channel.
  - You can type in the **message field** (2); click **send** (3) to
    post your message to everyone.
  - Helpers will respond in a Slack thread (or pose the question to the instructor)
  - You can respond in a message thread by hovering over a message to trigger
    the message menu and clicking the **speech bubble** (4).


### Exercise: Responding in Slack thread
What is one thing you hope to learn today or tomorrow?
<br/>
<br/>


## Review of Key communication patterns
| | <img src="images/Module00_zoom_logo.png" alt="Zoom" width=120/> | <img src="images/Module00_Slack_logo.png" alt="Slack" width=120/> |
|-|:-:|-|
| "I have an urgent question" | <img src="images/Module00_zoom_raise_hand.png" width=50/> | **Post a question** |
| "I have a general question" | | **Post a question** |
| "I'm stuck / I need a hand" | | **Post a note** |
| Instructor check-in | <img src="images/Module00_zoom_green_check.png" width=50/> -or- <img src="images/Module00_zoom_red_x.png" width=50/> | |
| Instructor Slack question | | **Respond in Slack thread** |
<br/>
<br/>

### Exercise: Group checkpoint
  - Using Zoom, give me a **green-check** if you feel like you understand
    communication patterns or **red-X** if you need clarification.
<br/>
<br/>

## Arranging your screens
It is important that you can see:

 - Zoom (instructor's shared screen + reactions)
 - Your terminal/command window (days 1-2) or R/Studio (days 2-3)
 - Slack
 - Lesson plan web page

![arranged screens](images/Module00_arranged_screens.png?)
<br/>
<br/>


# Workshop goals and topics

 - By the end of the workshop, attendees will be able to
   - Transform raw sequencing data into annotated differential expression values using a suite of
     open-source tools.
   - Identify common data quality problems and understand their impact and possible mitigations
   - Visualize differential expression data in RStudio plots.

 - This workshop is targeted toward researchers who would like to be able to run
   RNA-Seq analysis on their own. It assumes a very basic familiarity with
   genetics, the command line, and R or R-Studio.

 - The first day will be a mix of hands-on content and lecture-style components,
   while the second day will primarily be a hands-on experience.

 - Please let us know if there is anything we can do to improve the workshop experience.

 - Our purpose is not to be exhaustive, there is a lot that we cannot cover in
   the allotted time, and we don't expect anyone to be an expert at the end of
   the workshop. But we hope you will have a familiarity with key concepts, data types,
   tools, and how they all connect to one another in the service of a biological question.


## Workshop topics at a glance
![](images/wayfinder/wayfinder-00.png)

# Any questions?
 -
 -


---

* This workshop content is licensed under a [Creative Commons Attribution 4 License](https://creativecommons.org/licenses/by/4.0/).

* The workshop Code of Conduct has been adapted the NumFocus Code of Conduct (https://numfocus.org/code-of-conduct) which itself draws frin from numerous sources, including the Geek Feminism wiki, created by the Ada Initiative and other volunteers, which is under a Creative Commons Zero license, the Contributor Covenant version 1.2.0, the Bokeh Code of Conduct, the SciPy Code of Conduct, the Carpentries Code of Conduct, and the NeurIPS Code of Conduct.

* Sections of the workshop content have been adapted and extended from materials created by the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license (CC BY 4.0)](http://creativecommons.org/licenses/by/4.0/), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.
