![header](figure.png)

# OmegaFold: High-resolution de novo Structure Prediction from Primary Sequence

**This is the first release for paper [High-resolution de novo structure prediction from primary sequence](https://www.biorxiv.org/content/10.1101/2022.07.21.500999v1).**

We will continue to optimize this repository for more ease of use, for
instance, reducing the GRAM required to inference long proteins and
releasing possibly stronger models.

## Setup

Run the following command:

```bash
./scripts/download_weights.sh
conda env create -f environment.yml [-n <name>]
conda activate <name>
pip3 install .
```

The environment name is default to `omegafold`.

## Running

There should be only one way to use the model:

```commandline
omegafold INPUT_FILE.fasta OUTPUT_DIRECTORY
```

And voila!

The `INPUT_FILE.fasta` should be a normal fasta file with possibly many
sequences with a comment line starting with `>` or `:` above the amino
acid sequence itself.

However, since we have implemented sharded execution, it is possible to

1. trade computation time for GRAM: by changing `--subbatch_size`. The
   smaller
   this value is, the longer the execution can take, and the less memory is
   required, or,
2. trade computation time for average prediction quality, by changing
   `--num_cycle`

For more information, run

```commandline
omegafold --help
```

where we provide several options for both speed and weights utilities.

## Output

We produce one pdb for each of the sequences in `INPUT_FILE.fasta` saved in
the `OUTPUT_DIRECTORY`. We also put our confidence value the place of
b_factors in pdb files.

## Cite

If this is helpful to you, please consider citing the paper with

```tex
@article{OmegaFold,
	author = {Wu, Ruidong and Ding, Fan and Wang, Rui and Shen, Rui and Zhang, Xiwen and Luo, Shitong and Su, Chenpeng and Wu, Zuofan and Xie, Qi and Berger, Bonnie and Ma, Jianzhu and Peng, Jian},
	title = {High-resolution de novo structure prediction from primary sequence},
	elocation-id = {2022.07.21.500999},
	year = {2022},
	doi = {10.1101/2022.07.21.500999},
	publisher = {Cold Spring Harbor Laboratory},
	URL = {https://www.biorxiv.org/content/early/2022/07/22/2022.07.21.500999},
	eprint = {https://www.biorxiv.org/content/early/2022/07/22/2022.07.21.500999.full.pdf},
	journal = {bioRxiv}
}

```

## Note

Also some of the comments might be out-of-date as of now, and will be
updated very soon
