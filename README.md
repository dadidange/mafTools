# mafTools

**mafTools** is a collection of tools that operate on Multiple Alignment Fomat ([maf](http://genome.ucsc.edu/FAQ/FAQformat.html#format5)) files.

## Authors
[Dent Earl](https://github.com/dentearl/), [Benedict Paten](https://github.com/benedictpaten/), [Mark Diekhans](https://github.com/diekhans)

## Dependencies
With the exception of the python dependencies, when a component is missing a dependency it will not be built, tested or cleaned by the Makefile. If the python dependencies are missing then some of the modules will fail to function and all of the modules' tests will fail. The <code>sonLib</code> and <code>pinchesAndCacti</code> dependencies should be built and placed in the same parent directory as <code>mafTools</code>.
* [python 2.7](http://www.python.org/): all modules.
   * [scipy](http://www.scipy.org/)
   * [numpy](http://numpy.scipy.org/)
* [sonLib](https://github.com/benedictpaten/sonLib/): mafComparator, mafTransitiveClosure.
* [pinchesAndCacti](https://github.com/benedictpaten/sonLib/): mafTransitiveClosure.

## Installation
0. Install dependencies.
1. Download or clone the <code>mafTools</code> package. Consider making it a sibling directory to <code>sonLib/</code> and <code>pinchesAndCacti</code>.
2. <code>cd</code> into <code>mafTools</code> directory.
3. Type <code>make</code>.

## Components
* **mafBlockDuplicateFilter** A program to filter alignment blocks to remove duplicate species. One sequence per species is allowed to remain, chosen by comparing the sequence to the consensus for the block and computing a similarity bit score between the IUPAC formatted consensus and the sequence. The highest scoreing duplicate stays, or in the case of ties, the sequence closest to the start of the file stays.
* **mafBlockExtractor** A program to extract all alignment blocks that contain a region in a particular sequence. Useful for isolating regions of interest in large maf files.
* **mafBlockFinder** A program to search for a position in a particular sequence. Useful for determining where in maf a particular part of the alignment resides.
* **mafBlockSorter** A program to sort all of the blocks in a MAF based on the (absolute) start position of one of the sequences. Blocks without the sequence are placed at the start of the output in their original order.
* **mafComparator** A program to compare two maf files by sampling. Useful when testing predicted alignments against known true alignments.
* **mafCoveragePickles** A set of programs to assess the pairwise coverage between sequences and to extract the indel distribution of a set of sequences contained in the maf.
* **mafValidator** A program to assess whether or not a given maf file's formatting is valid. 

## External tools
* mafTools internal tests use Asim Jalis' [CuTest](http://cutest.sourceforge.net/) C unit testing framework. The license for CuTest is spelled out in external/license.txt.
* mafTools internal tests will use [valgrind](http://www.valgrind.org/) if installed on your system. 
