# R Packages for Genomics & Computational Biology

*93 packages across 11 categories*

---

## Contents

- [Single-Cell RNA Sequencing Analysis](#-ingle-ell-equencing-nalysis) (13)
- [Spatial Transcriptomics and Imaging](#-patial-ranscriptomics-and-maging) (6)
- [Differential Expression and RNA-Seq](#-ifferential-xpression-and-eq) (13)
- [Epigenomics and Chromatin Analysis](#-pigenomics-and-hromatin-nalysis) (8)
- [Multi-Omics Integration](#-ulti-mics-ntegration) (2)
- [Mass Spectrometry and Metabolomics](#-ass-pectrometry-and-etabolomics) (9)
- [Cancer Genomics and Biomarkers](#-ancer-enomics-and-iomarkers) (8)
- [Functional Annotation and Pathways](#-unctional-nnotation-and-athways) (3)
- [Genomic Data Infrastructure](#-enomic-ata-nfrastructure) (16)
- [Microbiome and Phylogenetics](#-icrobiome-and-hylogenetics) (6)
- [Data Resources and Knowledge Graphs](#-ata-esources-and-nowledge-raphs) (9)

---

## Single-Cell RNA Sequencing Analysis

*Single-cell transcriptomics analysis including cell type annotation, scRNA-seq workflows, SingleCellExperiment objects, and Seurat-based methods*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| Nick Borcherding | immLynx is an R package that integrates Python-based immune repertoire tools with Hugging Face protein language models for TCR analysis. The package provides unified interfaces ... | T cell receptor sequencing, TCR repertoire analysis, protein language models, single-cell sequencing |
| Jinming Cheng | RankMap is an R package for reference-based cell type annotation in single-cell and spatial transcriptomics data. The method transforms gene expression matrices into sparse rank... | single-cell transcriptomics, spatial transcriptomics, cell type annotation, gene expression |
| Anestis Gkanogiannis | jvecfor implements fast k-nearest neighbor search for single-cell genomics by wrapping the jvector Java library. The package offers HNSW-DiskANN approximate search with SIMD acc... | single-cell genomics, k-nearest neighbor search, HNSW algorithm, DiskANN |
| Nick Borcherding | immGLIPH implements GLIPH and GLIPH2 algorithms in R to cluster T cell receptor beta chain CDR3 sequences predicted to recognize identical HLA-restricted peptide antigens. The p... | T cell receptors, TCR clustering, CDR3 sequences, immune repertoire analysis |
| haimei wen | EMTscore is an R package for quantifying epithelial-mesenchymal transition using multiple gene set scoring methods (nnPCA, AUCell, ssGSEA, JASMINE, SCSE) applied to bulk and sin... | epithelial-mesenchymal transition (EMT), gene expression analysis, single-cell RNA-seq, bulk RNA-seq |
| Daniela Corbetta | The scConform package implements conformal prediction methods for cell type annotation in single-cell datasets. Split conformal inference generates prediction sets containing mu... | cell type annotation, conformal prediction, conformal inference, cell ontology |
| Christian Halter | The scECODA package performs exploratory compositional data analysis of single-cell datasets at the population scale. It creates ECODA objects from Seurat, SingleCellExperiment,... | single-cell RNA-seq, compositional data analysis, cell type abundance, differential abundance analysis |
| Josep Garnica | scTypeEval is an R package providing a ground-truth-agnostic framework for evaluating cell type annotation quality in scRNA-seq data. The package quantifies inter-sample label c... | single-cell RNA sequencing, scRNA-seq, cell type annotation, cell type classification |
| <UNKNOWN> | scMetaLink is an R package that infers metabolite-mediated cell-cell communication from single-cell RNA-seq data. The workflow involves creating an analysis object from expressi... | single-cell RNA-seq, cell-cell communication, metabolite signaling, metabolic pathways |
| <UNKNOWN> | Seqtometry analyzes single cell RNA sequencing data using gene signatures to identify cell populations through progressive biaxial partitioning, analogous to flow cytometry gati... | single cell RNA sequencing, scRNA-seq, gene expression analysis, gene signatures |
| Andrei-Florian Stoica | The hammers package provides utilities for scRNA-seq analysis including extracting aggregate gene statistics, identifying and removing rare genes based on cell expression thresh... | single-cell RNA sequencing, scRNA-seq analysis, gene expression, SingleCellExperiment objects |
| Elena Zuin, Chiara Romualdi, Davide Risso, Gabriele Sales | BatChef is an R/Bioconductor package for correcting batch effects in single-cell RNA sequencing datasets aggregated from multiple sources. The package implements multiple correc... | single-cell RNA sequencing, scRNA-seq, batch effects, batch correction |
| Samarendra Das, Satyajit Chhatoi | SwarnSeq is an R package for differential expression analysis of single-cell RNA-seq data that incorporates cell capture efficiency adjustments and cell-level auxiliary informat... | single-cell RNA-seq, differential expression analysis, scRNA-seq, UMI counts |

## Spatial Transcriptomics and Imaging

*Spatial gene expression analysis, spatial transcriptomics data processing, boundary detection, artifact identification, and image-based genomics*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| Harriet Jiali He, Stephanie C. Hicks | SpatialArtifacts is an R/Bioconductor package implementing a two-step workflow to detect and classify spatial artifacts in 10x Visium and VisiumHD data. The method combines medi... | spatial transcriptomics, quality control, artifact detection, 10x Visium |
| Ilaria Billato, Eslam Abousamra | The imageTCGAutils package integrates multi-modal whole-slide imaging data from TCGA by combining tile-level embeddings from the Prov-GigaPath foundation model with nuclei-level... | whole-slide imaging, histopathology image analysis, The Cancer Genome Atlas, spatial transcriptomics |
| Jinming Cheng | SpNeigh is an R package for boundary-aware spatial neighborhood analysis in high-resolution spatial transcriptomics. It detects region boundaries, constructs neighborhood rings,... | spatial transcriptomics, gene expression, 10x Xenium, MERFISH |
| <UNKNOWN> | PANORAMIC is a Bioconductor package implementing a pooled framework for analyzing cell-type colocalization across multiple spatial omics samples. The method computes pairwise sp... | spatial omics, cell-type colocalization, spatial transcriptomics, spatial statistics |
| Artur Manukyan | The ImageArray Bioconductor package enables memory-efficient handling of pyramidal and non-pyramidal bioimages through DelayedArray infrastructure. Images stored on disk as HDF5... | image processing, pyramidal images, multi-resolution imaging, digital pathology |
| Max Woollard, Pratibha Panwar, Linh Nghiem, Shila Ghazanfar | Weighted Sliced Inverse Regression (wSIR) performs supervised dimension reduction on spatial transcriptomics data by using gene expression as covariates and spatial position as ... | spatial transcriptomics, gene expression, dimension reduction, supervised learning |

## Differential Expression and RNA-Seq

*Bulk RNA-seq analysis, differential gene expression using DESeq2/edgeR, transcriptomic profiling, and gene expression normalization*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| Safa Rafique | GExPipe is a Shiny-based platform for end-to-end bulk transcriptomic analysis integrating GEO dataset retrieval, quality control, normalization, batch correction, differential e... | gene expression analysis, transcriptomics, RNA-seq, microarray |
| VISTA Development Team | VISTA is a Bioconductor package that unifies RNA-seq differential expression workflows by integrating DESeq2, edgeR, and limma-voom backends with consistent S4 class output. The... | RNA-seq, differential expression analysis, transcriptomics, DESeq2 |
| Lancelle, Leonie Johanna | DgeaHeatmap is an R package for preprocessing NanoString GeoMx DSP read counts from dcc and pkc files, enabling extraction and normalization of raw RNA expression data. The pack... | RNA expression, gene expression analysis, NanoString GeoMx DSP, differential gene expression |
| Soon Yi | RBPSpecificity is an R/Bioconductor package that quantifies RNA-Binding Protein binding characteristics through two metrics: Inherent Specificity (IS), which measures how select... | RNA-Binding Proteins, RBP binding specificity, k-mer enrichment, RBNS |
| Soon Yi | RBPEqBind is an R package that simulates competitive binding of multiple RNA-binding proteins to RNA sequences using equilibrium binding models. The framework calculates equilib... | RNA-binding proteins, RBP-RNA interactions, equilibrium binding kinetics, competitive binding |
| Cristóbal Gallardo | TSENAT is an R package implementing Tsallis entropy for analyzing transcript-level expression data from RNA-seq experiments. The toolbox quantifies isoform diversity within gene... | Tsallis entropy, transcript isoforms, RNA-seq analysis, differential transcript usage |
| Katarzyna Górczak, Laure Cougnaud | The daVis R package provides visualization tools for differential expression analysis output from limma, edgeR, and DESeq2. Functions generate volcano plots, log-ratio plots, he... | differential expression analysis, gene expression, visualization, fold change |
| Krzysztof J. Szkop, Kathleen Watt, Ola Larsson | postNet is a Bioconductor package that identifies, integrates, and models mRNA features influencing post-transcriptional gene expression regulation at transcriptome-wide scale. ... | post-transcriptional regulation, mRNA features, 5' UTR, 3' UTR |
| Miyeon Yeon, Won-Young Choi, Hyo Young Choi | RNAshapeQC is a Bioconductor package implementing protocol-specific quality control metrics based on RNA coverage shapes at the gene level rather than isoform quantification. Fo... | RNA-seq, quality control, coverage profiling, mRNA degradation |
| Jan Pawel Jastrzebski, Damian Czopek, Mariusz Jankowski, Stefano Pascarella, Wiktor Babis, Monika Gawronska | The lncRna package provides an integrated Bioconductor pipeline for identifying and analyzing long non-coding RNAs from RNA-Seq data. The workflow extracts transcript features f... | long non-coding RNA, lncRNA, RNA-Seq, coding potential prediction |
| Abdulaziz Albeshri | RFGeneRank is a Bioconductor package implementing leakage-aware machine-learning workflows for ranking genes from bulk RNA-seq expression matrices. It performs out-of-fold prepr... | RNA-seq, gene expression, transcriptomics, machine learning |
| Zachary Wakefield, Ana Fiszbein | SpliceImpactR is a Bioconductor R package that links differential alternative splicing events to protein-level consequences. It imports splicing quantifications from rMATS and H... | alternative splicing, differential splicing, alternative RNA processing, protein domains |
| Zhaolian Lu, Keenan Berry, Zhenbin Hu, Yu Zhan, Tae-Hyuk Ahn, Zhenguo Lin | TSSr is an R package for analyzing transcription start sites (TSS) from high-throughput sequencing data. The software processes BAM files to identify TSS positions, merges biolo... | transcription start sites, TSS clustering, core promoter architecture, differential gene expression |

## Epigenomics and Chromatin Analysis

*ChIP-seq analysis, chromatin accessibility, DNA methylation, histone modifications like H3K27ac, and transcription factor activity inference*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| Pierre-Luc Germain | betterChromVAR is a faster, deterministic reimplementation of chromVAR for inferring transcription factor activity from chromatin accessibility data. The package computes expect... | transcription factors, chromatin accessibility, ATAC-seq, motif analysis |
| Alex M. Mawla, Mark O. Huising | epiRomics is an R package for integrating multi-omics data to identify and visualize enhancer regions by combining ChIP-seq, histone modification marks (H3K4me1, H3K27ac), and c... | enhancers, chromatin accessibility, ATAC-seq, ChIP-seq |
| Ying ZHANG, Xingze HUANG, Liang XU | Looplook is an R Bioconductor toolkit that integrates three-dimensional chromatin architecture data from HiChIP, ChIA-PET, and Hi-C with transcriptomics, chromatin accessibility... | chromatin interactions, 3D genome architecture, HiChIP, ChIA-PET |
| Konstantin Okonechnikov | The atacInferCnv package processes single-cell ATAC-seq data to detect copy number variations using the InferCNV toolkit. The workflow requires raw epigenetic signal matrices an... | copy number variation, scATAC-seq, single-cell ATAC-seq, epigenomics |
| Paul Ruiz, Divya Metha | The dnaEPICO package provides a reproducible computational pipeline for preprocessing and analyzing Illumina DNA methylation arrays (EPICv2, EPIC, 450K). The workflow integrates... | DNA methylation, Illumina array preprocessing, EPICv2 array, EPIC array |
| Angelika Feldmann, Samuel Krall, Belinda Blum | PostChicago is a Bioconductor toolbox that processes CHiCAGO pipeline outputs for Capture-C data, providing functions for integration, annotation, visualization, and quantificat... | Capture-C, Capture-Hi-C, chromatin interactions, CHiCAGO pipeline |
| Vasileios Lemonidis | The DMRsegaldata package supplies preprocessed DNA methylation beta values from Illumina HumanMethylation450K arrays, comprising 10 cancer and 10 normal samples. The package inc... | DNA methylation, CpG sites, Illumina HumanMethylation450K arrays, differentially methylated positions |
| Sara Lopez Ruiz de Vargas, Trisevgeni Rapakoulia | CENTRE is a Bioconductor package implementing a gradient boosting algorithm to predict cell-type specific enhancer-target gene interactions. The pipeline integrates histone modi... | enhancer-promoter interactions, gene regulation, epigenomics, ChIP-seq |

## Multi-Omics Integration

*Integration of multiple omics datasets, exposure-aware analysis, cross-platform data harmonization, and multi-modal biological data analysis*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| <UNKNOWN> | ExpoRiskR is a Bioconductor package for exposure-aware multi-omics integration, emphasizing interoperability with SummarizedExperiment objects. The package aligns and preprocess... | multi-omics integration, microbiome, metabolome, exposome |
| Alessio Albanese | The carmon R package reconstructs multi-omics networks using Gaussian copulas to transform non-normalized omics data from various statistical distributions to the normal realm. ... | multi-omics networks, copula-based statistical methods, RNA-seq gene expression, metabolomics |

## Mass Spectrometry and Metabolomics

*Mass spectrometry data analysis, metabolomics workflows, lipidomics, proteomics, and small molecule identification*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| Gonçalo Graça | MetaboAnnotatoR performs metabolite annotation of LC-MS all-ion fragmentation datasets using ion fragment databases. The R package requires centroid mode chromatograms and integ... | metabolite annotation, LC-MS, mass spectrometry, all-ion fragmentation |
| Samuel de la Cámara Fuentes | TraianProt is an R/Shiny package for downstream analysis of proteomics data from Data-Dependent Acquisition and Data-Independent Acquisition mass spectrometry experiments. The p... | proteomics, mass spectrometry, protein quantification, differential expression analysis |
| Manon Gaudin, Samuel Wieczorek, Thomas Burger | The DaparToolshed package provides a workflow for analyzing label-free bottom-up proteomics data at peptide or precursor level. The workflow includes data import into QFeatures ... | proteomics, mass spectrometry, peptide quantification, protein aggregation |
| Torben Kimhofer | This vignette describes the metabom8 R package workflow for importing and preprocessing NMR-based metabolomics data. The package reads TopSpin-processed frequency-domain spectra... | NMR spectroscopy, metabolomics, metabom8 R package, spectral preprocessing |
| Xiaotao Shen | The masstools R package provides computational tools for mass spectrometry data analysis. Functions validate and parse chemical formulas, calculate exact and average molecular m... | mass spectrometry, chemical formulas, metabolomics, MS/MS spectra |
| Sara Gosline | This vignette demonstrates the spammR package for integrating spatial lipidomics and proteomics data from rat brain tissue measured via mass spectrometry imaging. The workflow i... | lipidomics, proteomics, spatial omics, mass spectrometry imaging |
| <UNKNOWN> | The sfi package processes Single File Injection mode gas and liquid chromatography-mass spectrometry data by extracting and aligning features from interleaved samples within a s... | metabolomics, mass spectrometry, gas chromatography-mass spectrometry, liquid chromatography-mass spectrometry |
| Yonatan Ayalew Mekonnen | This tutorial introduces enrichmet, an R/Bioconductor package for streamlined pathway enrichment, metabolite set enrichment analysis (MetSEA), and network analysis in metabolomi... | metabolomics, pathway enrichment analysis, metabolite set enrichment analysis, KEGG pathways |
| Joel Parker | The MetabolomicsPipeline R package streamlines targeted metabolomics analysis following metabolite identification and peak quantification. The package performs median standardiz... | metabolomics, targeted metabolomics, data processing, principal component analysis |

## Cancer Genomics and Biomarkers

*Cancer-specific analysis, oncology biomarker discovery, tumor genomics, cancer transcriptomic signatures, and aging-related biomarkers*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| Ashley L Weir | IdentifiHR is an R package implementing a machine learning model that predicts homologous recombination (HR) repair status in high-grade serous ovarian carcinoma (HGSC) using ge... | homologous recombination repair, HR deficiency, high-grade serous ovarian carcinoma, HGSC |
| Nicolas Alcala | The sigvar package analyzes relationships between mutational signature variability and driver alterations in lung cancer never-smokers from the Sherlock-Lung study. The vignette... | mutational signatures, SBS signatures, driver mutations, TP53 |
| Sydney Grant, Aritro Nath | PhenoMapper is a computational tool that infers GSVA-like pathway activity scores from somatic mutation and copy number alteration data, trained on GSEA gene sets from MSigDB. T... | somatic mutations, copy number alterations, cancer genomics, pathway activity scores |
| Carmelo Catalano | This R package implements a drug repurposing system using transcriptome signature reversion methodology. The software analyzes differential gene expression between diseased and ... | drug repurposing, transcriptome signature reversion, differential gene expression, RNA-seq |
| Maharani Ahsani Ummi, Arief Gusnanto | The wavFeatExt package extracts multiresolution features from copy-number alteration profiles using non-decimated Haar wavelet transforms. It decomposes correlated genomic CNA s... | copy-number alteration, wavelet transform, feature extraction, genomic segmentation |
| Gabriele Bucci | ClonalSim is an R/Bioconductor package that simulates tumor clonal evolution with realistic sequencing noise for benchmarking variant callers and clonal deconvolution algorithms... | tumor clonal evolution, somatic mutations, variant allele frequency, tumor heterogeneity |
| Gulden Olgun | CATS (Cancer Specific Transcriptomic Signature) is a computational tool that contextualizes generic gene signatures to specific cancer types. Given a reference geneset represent... | gene signatures, transcriptomics, cancer genomics, protein-protein interaction networks |
| Banabithi Bose | This vignette demonstrates the GXwasR R package for computing standard and sex-aware polygenic scores (PGS). The workflow includes quality control of discovery GWAS summary stat... | polygenic scores, polygenic risk scores, sex-stratified genetic analysis, GWAS summary statistics |

## Functional Annotation and Pathways

*Gene Ontology analysis, KEGG pathway enrichment, functional enrichment analysis, and biological pathway interpretation*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| Aleksander Jankowski | GOaGO is a Bioconductor package for identifying overrepresented Gene Ontology terms shared by both genes within pairs, particularly useful for annotating chromatin contacts and ... | Gene Ontology enrichment analysis, gene pairs, chromatin loops, chromatin contacts |
| Guillermo de Anda Jáuregui | punKEGGer is a Bioconductor package that parses KEGG pathway KGML files into annotated igraph network objects, preserving topological and visual metadata. Unlike standard enrich... | KEGG pathways, network science, pathway visualization, graph analysis |
| <UNKNOWN> | scToppR is a Bioconductor package enabling workflow-based interaction with ToppGene for gene enrichment analysis. The vignette demonstrates integration with differential express... | functional enrichment analysis, differential gene expression, ToppGene database, gene ontology |

## Genomic Data Infrastructure

*DelayedArray implementations, GenomicRanges/IRanges utilities, SummarizedExperiment extensions, and memory-efficient data structures*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| Vincent J. Carey | PlinkMatrix provides a DelayedArray interface for accessing PLINK bed-type genetic files within Bioconductor. The package retrieves and processes bed/bim/fam files from cloud st... | PLINK bed files, DelayedArray, genotype data, SNP |
| <UNKNOWN> | The hcocena package provides conversion utilities between legacy list-based hcobject workflows and modern S4 container architecture. Functions as_hcobject and as_hcocena enable ... | Bioconductor package migration, S4 object-oriented programming, workflow conversion utilities, data structure transformation |
| Malte Thodberg | S4Cartographer is an R/Bioconductor package that visualizes S4 class inheritance hierarchies. S4 classes underpin Bioconductor infrastructure but have complex inheritance struct... | S4 object system, Bioconductor, software package development, data structures |
| <UNKNOWN> | fastRanges provides high-performance genomic interval operations for Bioconductor workflows using GRanges and IRanges objects. The package implements overlap detection (find_ove... | genomic intervals, GRanges, IRanges, interval overlap analysis |
| Paul Heisig | The spectreasy package provides a workflow for spectral unmixing in flow cytometry. Users organize single-color control and experimental FCS files, generate quality control repo... | spectral flow cytometry, spectral unmixing, fluorescence compensation, FCS file analysis |
| Hervé Pagès | ZarrArray is a Bioconductor infrastructure package that uses Rarr to represent Zarr datasets as DelayedArray objects in R. The ZarrArray class provides array-like objects suppor... | Zarr datasets, DelayedArray, array operations, genomic data storage |
| Jinyi Che | parati is an R package that infers parental transmitted and non-transmitted alleles from phased VCF trio genotype data. The workflow accepts phased VCF files containing father-m... | parental allele transmission, trio genotype analysis, transmitted alleles, non-transmitted alleles |
| Aaron Lun | This vignette provides a reference link to the scrapbook package documentation book. The document uses BiocStyle formatting to generate a URL link to the scrapper.book resource.... | R programming, Bioconductor, software documentation, vignette |
| Aaron Lun | The augere.core package provides utilities for building automated bioinformatics analysis pipelines that generate fully-parametrized Rmarkdown reports. Pipeline functions combin... | bioinformatics pipelines, Rmarkdown report generation, differential expression analysis, SummarizedExperiment |
| <UNKNOWN> | fraq is a high-throughput toolkit for processing FASTQ sequencing data using Intel TBB flow graphs to enable concurrent input-output and multithreaded compression. The package p... | FASTQ file processing, high-throughput sequencing, parallel computing, data compression |
| Marcel Ramos | AnVILVRS provides an R interface to the AnVIL VRS Toolkit Python library for working with the GA4GH Variation Representation Specification standard. The package enables translat... | variant representation, GA4GH VRS standard, variant identifiers, allele frequencies |
| Marcel Ramos | BiocPkgDash is a Shiny application enabling Bioconductor package maintainers to monitor build status and code coverage through an interactive dashboard. Users filter packages by... | Bioconductor packages, package maintenance, build status monitoring, code coverage |
| Jacques Serizay | The GenomicCoordinates package extends Bioconductor string parsing capabilities to support diverse genomic coordinate formats including comma-separated numbers, space-delimited ... | genomic coordinates, coordinate parsing, GRanges, GPos |
| <UNKNOWN> | <UNKNOWN> | <UNKNOWN> |
| <UNKNOWN> | BenchHub is an R-based data storage framework for living benchmarks in biosciences. It comprises three components: Trio (a data structure with Dataset, Evidence, and Metric fiel... | benchmarking, data storage framework, reproducibility, R programming |
| Margot Henry, Caitlin Kostna, Leanne Von Giese, Aleeza Gerstein | ploidyPeaks is a Bioconductor package for quantifying genome size and detecting karyotypic subpopulations from flow cytometry fluorescence intensity data. The package implements... | flow cytometry, genome size quantification, karyotypic variation, ploidy analysis |

## Microbiome and Phylogenetics

*Microbiome analysis, compositional data analysis, phylogenetic analysis, and microbial community profiling*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| Hassan Sadiq | The queeems R package provides Bayesian methods to assess genetic data quality for phylogenetic and evolutionary analyses. Using simulated sequences generated under an Ornstein-... | molecular sequences, phylogeny reconstruction, natural selection, substitution saturation |
| Amarinder Singh Thind | CGRphylo2 implements Chaos Game Representation for alignment-free phylogenetic analysis of viral genomes. The method converts DNA sequences into k-mer frequency matrices by iter... | viral genomes, phylogenetic analysis, SARS-CoV-2, DNA sequences |
| <UNKNOWN> | This vignette demonstrates phylogeny-aware visualization of the Human Intestinal Tract (HITChip) Atlas 1006 dataset using the phylobar R package. The workflow constructs taxonom... | gut microbiome, HITChip, microbial abundances, taxonomic classification |
| Abdullah El-Kurdi | MSTree is an R package that constructs minimum spanning trees from chewBBACA pipeline output for Multi-Locus Sequence Typing and Core Genome MLST analysis. The package uses two ... | minimum spanning tree, Multi-Locus Sequence Typing, MLST, Core Genome MLST |
| Nathan Bresette | MeLSI (Metric Learning for Statistical Inference) learns optimal distance metrics for microbiome beta diversity analysis, adapting to dataset-specific characteristics rather tha... | microbiome, beta diversity, machine learning, metric learning |
| Chengxin Li | CrcBiomeScreen is a Bioconductor package providing a disease-agnostic workflow for microbiome-based classification and screening. The package integrates preprocessing (taxonomic... | microbiome, colorectal cancer, machine learning classification, Random Forest |

## Data Resources and Knowledge Graphs

*Biomedical databases, knowledge graph querying, reference datasets, benchmarking frameworks, and data harmonization platforms*

| Package Authors | Description | Key Topics |
|:----------------|:------------|:-----------|
| Vincent J. Carey | The ontoProc2 package facilitates access to ontologies transformed to semantic SQL format from the INCAtools project and simplifies ontology operations in Bioconductor. The retr... | ontologies, semantic SQL, Cell Ontology, SQLite databases |
| Zhaozhen Du, Andrew E. Teschendorff | OmniAgeRData is a Bioconductor package that provides aging omic biomarker model parameters and example datasets for the OmniAgeR package through ExperimentHub. The package deliv... | aging biomarkers, epigenetic clocks, DNA methylation, ExperimentHub |
| Jeffrey Tang | This document describes curation of a ligand-receptor interaction database focused on cytokines for CytoSig benchmarking. The author creates a mapping between 45 cytokine names ... | ligand-receptor interactions, cytokines, cell signaling, gene expression |
| <UNKNOWN> | This vignette demonstrates the AnnotationGx R package for querying the Cellosaurus cell line knowledge resource. The package provides mapCell2Accession function to convert cell ... | cell lines, Cellosaurus database, cell line authentication, biomedical research resources |
| Shawn T O'Neil | MonarchR is an R package for querying biomedical knowledge graphs (KGs) in KGX format, particularly the Monarch Initiative KG. The package provides functions to fetch nodes by I... | knowledge graphs, biomedical ontologies, genes, diseases |
| Giovanni Micale, Giulia Cavallaro, Grete Francesca Privitera | Geneslator is an R package that integrates cross-organism databases (NCBI, Ensembl, UniProt, Alliance of Genome Resources, GO, KEGG, Reactome, WikiPathways) and organism-specifi... | gene identifiers, genome annotation, ortholog mapping, NCBI Gene |
| <UNKNOWN> | This vignette demonstrates the HumanRetinaLRSData package, which provides access to nanopore long-read RNA sequencing data from human stem cell-derived retinal organoids across ... | retinal organoids, long-read RNA sequencing, nanopore sequencing, isoform diversity |
| Marc Subirana-Granés | This vignette describes CLAMPData, an ExperimentHub data package that provides curated resources for the CLAMP software package for prior-informed latent variable modeling. CLAM... | ExperimentHub data package, gene-set libraries, pathway priors, gene expression matrices |
| Mangiola et al. | cellNexus provides unified programmatic access to over 40 million harmonized human cells from the CELLxGENE atlas. The package implements standardized quality control including ... | single-cell RNA sequencing, human cell atlas, CELLxGENE, transcriptomics |

