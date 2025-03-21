---
title: "RNA-Seq Demystified: Advanced setup instructions"
author: "UM Bioinformatics Core Workshop Team"
output:
        html_document:
            theme: paper
            toc: true
            toc_depth: 6
            toc_float: true
            number_sections: false
            fig_caption: false
            markdown: GFM
            code_download: false
---

- The steps below are oriented toward advanced users who would like to install
  and configure select software on their local workstation. These steps are not
  necessary or recommended, but may provide context for advanced use-cases.

- These instructions build on the install detailed in the [basic setup
  instructions](setup_instructions.html); please see that document for more
  details on setting up Zoom, Slack, and also for getting help.

- Note that if you do not have Administrative privileges it will be tricky
  to install R/RStudio; you may need to coordinate with your
  System Admin/IT Support team to get these installed.

  #### Table of Contents
  -   [Windows setup](#windows-setup)
      -   Git-Bash
      -   Installing R/RStudio
      -   Notes
  -   [Macintosh setup](#macintosh-setup)
      -   Terminal
      -   Installing R/RStudio
      -   Notes


## Windows setup

### Windows PowerShell / git-bash

Git-bash and Windows Subsystem for Linux (WSL) are programs that enable
you to connect to our workshop Linux environment. WSL is a powerful
option, but can be difficult to install/configure. If you have WSL
installed and you are comfortable using it, you can use that and skip to
the next section.

1.  To download git-bash, in a web browser, go to:
    <https://git-scm.com/downloads>
    and click on **Windows**. Save and open the executable file to launch
    the installer.

2.  The git-bash installer presents *many* options; repeatedly click
    **Next** to simply accept all the default options. At the end of
    this series of questions, you can click **Install**.

3.  The installer will show a progress bar; this should take less than a
    minute. *Note: you may see a warning towards the end "Unable to run
    post-install scripts; no output?"; this will not impact your
    installation and you can ignore it by clicking **Ok**.*

4.  On the final screen (Completing the Git Setup Wizard) you can
    uncheck **View Release Notes** option and click **Finish**. The
    installer will close.

5.  To launch git-bash, from Start Menu, select "Git Bash"; this will
    create a new window with a command prompt that looks something like
    this:

-   your_username\@WSRTS001 MINGW64 \~ \$


If you can't install or launch git-bash, or if it returns an
    unexpected result, please see [**How to get
    help**](#how-to-get-help) for more assistance.

### Installing R/RStudio (Windows)

1.  RStudio depends on the R programming environment, so we have to
    install that first. In a web browser, open:
    <https://cran.rstudio.com/bin/windows/base/>
    and click "Download R 4.0.3 for Windows" (the version may be
    slightly different). Open the downloaded executable to launch the R
    installer.

2.  The installer will walk through several options; accept all the
    defaults (by repeatedly clicking **Next**) and when prompted, click
    **Install**. The installer will show a progress bar; the process
    takes about 2 minutes; click **Finish** when prompted to close the
    installer.

3.  To install RStudio, in a web-browser, open:
    <https://rstudio.com/products/rstudio/download/#download>
    and click on **Download RStudio Desktop for Windows**. Open the
    downloaded executable to launch the installer.

4.  The installer will either prompt you to login as an Admin user or
    (if your current account has Admin privileges) simply ask you to
    allow it to make changes. Click **Yes**

5.  The installer will walk through several options; accept all the
    defaults (by repeatedly clicking **Next**) and when prompted, click
    **Install**. The installer will show a progress bar; the process
    takes less than one minute; click **Finish** when prompted to close
    the installer.

6.  Press Windows+R keys to open the **Run** dialog; type **"RStudio"**
    in the text box and hit enter. This will launch a new RStudio
    window. The RStudio window is divided into several panes. The lower
    left pane shows the **Console** tab and will show some text followed
    by a command prompt (\>):

> R version 4.0.3 (2020-10-10) \-- \"Bunny-Wunnies Freak Out\"\
    Copyright (C) 2020 The R Foundation for Statistical Computing\
    Platform: x86_64-w64-mingw32/x64 (64-bit)\
    \
    R is free software and comes with ABSOLUTELY NO WARRANTY.\
    You are welcome to redistribute it under certain conditions.\
    Type \'license()\' or \'licence()\' for distribution details.\
    \
    Natural language support but running in an English locale\
    \
    R is a collaborative project with many contributors.\
    Type \'contributors()\' for more information and\
    \'citation()\' on how to cite R or R packages in publications.\
    \
    Type \'demo()\' for some demos, \'help()\' for on-line help, or\
    \'help.start()\' for an HTML browser interface to help.\
    Type \'q()\' to quit R.\
    \
    \>

7.  The workshop exercises requires the installation of special R
    libraries. To install them into RStudio, copy the block of text
    below, paste into the RStudio **Console** tab, and press **Enter**
    to execute. *(Note: These installations automatically trigger the
    installation of a litany of dependent libraries so you will see
    repeated progress bars and code flying by in the Console window.
    This step takes about 15 minutes, so now is a good time to get
    coffee/tea while RStudio cooks.)*

>  install.packages(\"tidyr\")\
    install.packages(\"ggplot2\")\
    install.packages(\"pheatmap\")\
    install.packages(\"ggrepel\")\
    install.packages(\"formattable\")\
    install.packages(\"RColorBrewer\")\
    install.packages(\"matrixStats\")\
    install.packages(\"dplyr\")\
    if (!requireNamespace(\"BiocManager\", quietly = TRUE))\
    install.packages(\"BiocManager\")\
    BiocManager::install(\"biomaRt\", ask=FALSE)\
    BiocManager::install(\"DESeq2\", ask=FALSE)\
    missing \<- setdiff(c(\"tidyr\", \"ggplot2\", \"pheatmap\",
    \"ggrepel\", \"formattable\", \"RColorBrewer\", \"matrixStats\",
    \"dplyr\", \"biomaRt\", \"DESeq2\"),
    rownames(installed.packages()))\
    if (!length(missing)) { cat(\"Ready for Computational Foundations workshop\\n\")}
    else {cat(\"PROBLEM: could not install:\", missing, \"\\n\")}

8.  The Console output should conclude with the text:\
    **Ready for Computational Foundations workshop**.

9.  Press **Control-Q** close RStudio; when prompted to *Save workspace
    image...*, click **Don't Save**.

#### Your Windows workstation is ready for the workshop. Thank you for your patience and fortitude.

### Notes (Windows)

-   Following the workshop, you can remove any of Git-bash, R and
    RStudio. As an Admin user, go Start \> Settings \> Apps & Features.
    Click on the program to remove and click Uninstall.

## Macintosh setup

### Terminal

1.  Macintosh has a built in command window called Terminal. Press
    Command + Space to launch Spotlight. In the search field, type
    "Terminal" and double-click on the top result.

    You will see a new Terminal window containing something like this
    (your may have more text and the last line may look a bit different;
    that's ok)

> Last login: Thu Dec 10 12:44:03 on ttys003\
   MacBook: \~ your_username\$

2.  At the command prompt, type **date** and press **Return**.
     The Terminal should print the current date and time.

### Installing R/RStudio (Macintosh)

1.  RStudio depends on the R programming environment, so we have to
    install that first. In a web browser, open:

-   <https://cran.rstudio.com/bin/macosx/>

    and click the link "R-4.0.3.pkg" (the version may be slightly
    different). Open the downloaded executable to launch the R
    installer.

2.  The installer will walk through several options; accept all the
    defaults (by repeatedly clicking **Continue**) and when prompted,
    click **Install**. The installer will prompt you to confirm your
    username/password. The installer will show a progress bar; the
    process takes about 1 minutes; click **Finish** when prompted to
    close the installer.

3.  To install RStudio, in a web-browser, open:
-   <https://rstudio.com/products/rstudio/download/#download>
    and click on **Download RStudio Desktop for Mac**.

4.  Opening the downloaded executable opens a window with "RStudio" and
    your Applications folder icons. Drag the RStudio into the
    Applications folder. (If you see a dialog that claims RStudio
    already exists, click **Keep Both**.) The installer will prompt you
    to confirm your username/password.

5.  The installer will walk through several options; accept all the
    defaults (by repeatedly clicking **Next**) and when prompted, click
    **Install**. The installer will show a progress bar; the process
    takes less than one minute.

6.  When completed, open the Applications folder and double-click on the
    RStudio application. You will see a dialog
    "*RStudio.app is an app downloaded from Internet. Are you sure you
     want to open it?*"
    Click **Open**.
    This will launch a new RStudio window. The RStudio window is divided
    into several panes. The lower left pane shows the **Console** tab and
    will show some text followed by a command prompt (\>):

>  R version 4.0.3 (2020-10-10) \-- \"Bunny-Wunnies Freak Out\"\
    Copyright (C) 2020 The R Foundation for Statistical Computing\
    Platform: x86_64-apple-darwin17.0 (64-bit)\
    \
    R is free software and comes with ABSOLUTELY NO WARRANTY.\
    You are welcome to redistribute it under certain conditions.\
    Type \'license()\' or \'licence()\' for distribution details.\
    \
    Natural language support but running in an English locale\
    \
    R is a collaborative project with many contributors.\
    Type \'contributors()\' for more information and\
    \'citation()\' on how to cite R or R packages in publications.\
    \
    Type \'demo()\' for some demos, \'help()\' for on-line help, or\
    \'help.start()\' for an HTML browser interface to help.\
    Type \'q()\' to quit R.\
    \
    \>

7.  The workshop exercises require the installation of special R
    libraries. To install them into RStudio, copy the block of text
    below, paste into the RStudio **Console** tab, and press **Enter**
    to execute. *(Note: These installations automatically trigger the
    installation of a litany of dependent libraries so you may see
    repeated progress bars and lots of code flying by in the Console
    window. This step takes about 15 minutes, so now is a good time to
    get coffee/tea while RStudio cooks.)*

>   install.packages(\"tidyr\")\
    install.packages(\"ggplot2\")\
    install.packages(\"pheatmap\")\
    install.packages(\"ggrepel\")\
    install.packages(\"formattable\")\
    install.packages(\"RColorBrewer\")\
    install.packages(\"matrixStats\")\
    install.packages(\"dplyr\")\
    if (!requireNamespace(\"BiocManager\", quietly = TRUE))\
    install.packages(\"BiocManager\")\
    BiocManager::install(c(\"biomaRt\",\"DESeq2\"), update=FALSE,
    ask=FALSE)\
    missing \<- setdiff(c(\"tidyr\", \"ggplot2\", \"pheatmap\",
    \"ggrepel\", \"formattable\", \"RColorBrewer\", \"matrixStats\",
    \"dplyr\", \"biomaRt\", \"DESeq2\"),
    rownames(installed.packages()))\
    if (!length(missing)) { cat(\"Ready for Computational Foundations workshop\\n\")}
    else {cat(\"PROBLEM: could not install:\", missing, \"\\n\")}

8.  The Console output should conclude with the text
  **Ready for Computational Foundations workshop**

9.  Press **Command-Q** close RStudio; when prompted to *Save workspace
    image...*, click **Don't Save**.

####  Your Macintosh workstation is ready for the workshop. Thank you for your patience and fortitude.

### Notes (Macintosh)

-   Following the workshop, you can remove any of R and RStudio. Open
    your Applications directory, and drag the R or RStudio application
    into the Trash.
