---
tags:
  - cv
  - latex
  - resume
  - wsl
  - linux
link: 
aliases:
---

### Example Workflow

Here's a simple command-line session assuming you have a `.tex` file named `cv.tex`:

```bash
# Update and install LaTeX
sudo apt update
sudo apt install texlive-full

# Navigate to the directory containing the .tex file
cd /mnt/c/Users/YourUsername/Documents/

# Compile the .tex file to PDF
pdflatex cv.tex

# If needed, compile again to resolve cross-references
pdflatex cv.tex
```

This will produce a `cv.pdf` file in your directory. You can then open this file with any PDF viewer on your Windows system.

### 1. **Install LaTeX on WSL 2**

- First, make sure your WSL 2 environment is up to date:

```bash
sudo apt update
sudo apt upgrade
```


- Then, install the LaTeX distribution. The most common one is `texlive`:

```bash
sudo apt install texlive-full
```

- This command will install the full TeX Live distribution, which includes all the necessary packages.


### 2. **Navigate to Your `.tex` File**

- Open your WSL terminal and navigate to the directory where your `.tex` file is located:

```bash
cd /path/to/your/tex/file
```

- If your `.tex` file is on the Windows filesystem, you can access it through `/mnt/c/`:

```bash
cd /mnt/c/Users/YourUsername/Documents/
```


### 3. **Compile Your `.tex` File**

- To compile your `.tex` file into a PDF, use the following command:

```bash
pdflatex your_cv.tex
```

- This will generate a `your_cv.pdf` file in the same directory as your `.tex` file.








