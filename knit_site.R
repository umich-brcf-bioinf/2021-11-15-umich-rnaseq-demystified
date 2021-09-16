library(rmarkdown)

render('Module00_Introduction.md', output_dir = 'html')

render('Module01_Warming_Up.md', output_dir = 'html')
render('Module02_QC.md', output_dir = 'html')
render('Module02optional_Cutadapt_MultiQC.md', output_dir = 'html')
render('Module03_Reference_Genomes.md', output_dir = 'html')
render('Module04_Alignment.md', output_dir = 'html')
render('Module05_MultiQC_and_Count_Matrix.md', output_dir = 'html')
render('Module05optional_Additional_Details.md', output_dir = 'html')

render('Module06_DEAnalysisSetup.Rmd', output_dir = 'html')
render('Module07_DESeq2Init.Rmd', output_dir = 'html')
render('Module08_DESeq2DE.Rmd', output_dir = 'html')
render('Module09_SampleQCViz.Rmd', output_dir = 'html')
render('Module10_DEComparisons.Rmd', output_dir = 'html')
render('Module11_DEVisualizations.Rmd', output_dir = 'html')
render('Module11X_BonusContent.Rmd', output_dir = 'html')

render('Module99_Wrap_up.md', output_dir = 'html')
