# MiniCPM_FT

## Introduction

MiniCPM_FT is a repository for fine-tuning the base model [MiniCPM-2B-sft-fp32](https://huggingface.co/openbmb/MiniCPM-2B-sft-fp32) using datasets from [Hugging Face Datasets](https://huggingface.co/datasets/mandarjoshi/trivia_qa) and [Cosmos](https://wilburone.github.io/cosmos/). This repository provides the necessary tools and code to finetune the model and evaluate its performance on various datasets.

## Paper

The paper associated with this repository is available [here](待补充).

## Dataset

This repository utilizes the following datasets:
- [Hugging Face Datasets - Trivia QA](https://huggingface.co/datasets/mandarjoshi/trivia_qa)
- [Cosmos](https://wilburone.github.io/cosmos/)

## Repository Structure

- **Cleandata**: Contains separately reconstructed datasets from Cosmos, Trivia QA Wikipedia, and Trivia QA Web. Data is reformatted into standard question-answer pairs.
- **Mergedata**: Represents a composite dataset split into train, development, and test datasets derived from the cleaned datasets.
- **Finetune**: Contains all the code necessary for the complete process of fine-tuning the base model. To produce a fine-tuned model, use `bash {}_finetune.sh`.
- **Models**: Stores examples of the base and fine-tuned models.
- **Evaluate**: Contains codes and sample data for evaluating the fine-tuned model's performance on given datasets. Results are stored in the `result` folder.

## Usage

To finetune the base model, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/MiniCPM_FT.git
   ```

2. Navigate to the Finetune folder:
   ```bash
   cd MiniCPM_FT/finetune
   ```
3. Execute the finetuning script:
   ```
   bash xxx_finetune.sh
   ```
