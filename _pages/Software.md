---
title: "Aomic group - Software"
layout: textlay
excerpt: "Aomic group -- Software"
sitemap: false
permalink: /software/
---
<BR>

## Atomic Programs & Tools for Many-Particle Physics



In the study of complex atoms and ions, much research work is nowadays guided and supported by large and rather sophisticated computer codes. Many of these codes have been developed and maintained over many years. This page intends to facilitate the distribution and the exchange of those programs which have previously been developed in our group during the last decade.

- [**JAC**](#jac): The JAC code for the computation of atomic representations, processes, and cascades. [GitHub Repository](https://github.com/OpenJAC/JAC.jl)

- [**RATIP**](#ratip): The RATIP code which supports the generation of reliable and accurate atomic data for laser-, astro- and plasma physics.

- Computer-algebra in theoretical and many-particle physics, including in particular:
  - [**Coupling of Angular Momenta**](#angular_momentum)
  - [**Behavior of Hydrogen-like Ions**](#h_like)
  - [**Simulation of n-qubit Spin Systems**](#n_qubit)

This page includes both published and unpublished material. Apart from the various source codes, some of the files which can be downloaded below also include examples to demonstrate typical applications of the individual programs.




## The JAC Package

Electronic structure computations of atoms and ions have a long tradition in physics with applications in basic research, spectroscopy, life sciences, and technology. Various theoretical methods (and codes) have therefore been developed to account for the many-particle structure of atoms, from simple semi-empirical estimates to accurate predictions of selected data, and up to highly advanced time-independent and time-dependent numerical techniques. 

Here, I present a fresh concept and implementation of (relativistic) atomic structure theory that supports the computation of interaction amplitudes, properties, as well as a large number of excitation and decay processes for open-shell atoms and ions across the whole periodic table. This implementation will facilitate also studies on atomic cascades, responses as well as the time-evolution of atoms and ions. It is based on Julia, a new programming language for scientific computing, and provides an easy-to-use but powerful platform to extend atomic theory towards new applications (CPC 240, 1-14, 2019).

The code and further description are available via [https://github.com/OpenJAC/JAC.jl](https://github.com/OpenJAC/JAC.jl).




## The RATIP Package

A number of modifications have made GRASP92 [F.A. Parpia, C. Froese Fischer, and I.P. Grant, CPC 94, 249 (1996)] a very flexible and powerful tool for systematic, relativistic investigations of atoms. Owing to its user-friendly interface, GRASP92 and some further developments on this package are now widely used by several atomic physics groups who, by themselves, have developed new modules to study properties other than level energies, hyperfine structures, and radiative transition probabilities.

During the past twenty years, we developed in our group the package RATIP to calculate a number of 'Relativistic Atomic Transition, Ionization and Recombination Properties'.

### [The Ratip program for relativistic calculations of atomic transition, ionization, and recombination properties](../pub/Ratip-cpc-2012b.pdf) (CPC 183, 1525-1559, 2012)

During the past decade, the RATIP program has been developed to calculate the electronic structure and properties of atoms and ions. This code, which is now organized as a suite of programs, provides a powerful platform today to generate and evaluate atomic data for open-shell atoms, including level energies and energy shifts, transition probabilities, Auger parameters as well as a variety of excitation, ionization, and recombination amplitudes and cross sections. Although the RATIP program focuses on properties with just one electron within the continuum, recent emphasis was placed also on second-order processes as well as on the combination of different types of transition amplitudes in order to explore more complex spectra. Here, I present and discuss the (design of the) RATIP program and make available a major part of the code for public use. Selected examples show a few of its possible applications, while reference is made to a much wider range of computations as supported by the program. The RATIP program has been developed as a scalar Fortran 90/95 code and provides a simple make feature that helps port the code to different platforms and architectures.

The [RATIP package](../programexchange/ratip-2012.tgz) is distributed as a compressed tar-file (created with -cvzf); for a few components of this program, a long write-up was published previously and is available below:

- [CESD99: Expansion of symmetry-adapted functions in a determinant basis](../pub/p042.b00.cpc-cesd99-revised.pdf) (CPC 124, 354-57, 2000)

This program performs a complete expansion of symmetry-adapted functions and has been found useful in a number of applications. For accurate transition probability studies, however, often large wave function expansions of several ten or even hundred thousand determinants are required. To overcome difficulties with a previous version of this program (CESD97 in CPC 103, 277, 1997) and to facilitate the transfer to other architectures, CESD97 has entirely been rewritten according to the ANSI standard Fortran 90/95. The new version, CESD99, considerably improves the efficiency of large computations and, now, enables wave function expansions based on several (hundred) thousand determinants.

- [REOS99: Relaxed-orbital transition probabilities](../pub/p041.b00.cpc-reos99-revised.pdf) (CPC 124, 340-53, 2000)

Recent years have seen an increasing demand for accurate transition probability calculations for open-shell atoms and ions. To facilitate such investigations, the program REOS [S. Fritzsche and C.F. Fischer, CPC 103, 323, 1997] has been developed, which includes the effects of relativity, correlation, and the rearrangement of the bound-state electron density within the framework of the multiconfiguration Dirac-Fock model. Often, very large wave function expansions are needed to obtain sufficiently accurate results, which cannot be handled by the original program. Care has been taken to exploit the advantages of this new standard and to improve the efficiency and portability of the program.

- [RCFP: Reduced coefficients and matrix elements in jj-coupling](../pub/p055.b01.cpc-gediminas-rme.pdf) (CPC 134, 86-96, 2001)

The component RCFP facilitates the calculation of standard quantities in the decomposition of many-electron matrix elements in atomic structure theory. The list of quantities supported by the present program includes the coefficients of fractional parentage, the reduced coefficients of fractional parentage, the reduced matrix elements of the unit operator T^{(k)} as well as the completely reduced matrix elements of the operator W^{(k_jk_q)} in jj-coupling. These quantities are now available for all subshells (nj) with j <= 9/2, including partially filled 9/2-shells. Our program is based on a recently developed new approach on the spin-angular integration which combines second quantization and quasispin methods with the theory of angular momentum in order to obtain a more efficient evaluation of many-electron matrix elements.

- [ANCO: Pure angular momentum coefficients in jj-coupling](../pub/p067.b01.cpc-gediminas-anco.pdf) (CPC 139, 263-83, 2001)

A program for computing pure angular momentum coefficients in relativistic atomic structure for any scalar one- and two-particle operator is presented. The program, written in Fortran 90/95 and based on techniques of second quantization, irreducible tensorial operators, quasispin, and the theory of angular momentum, is intended to replace existing angular coefficient modules from GRASP92. The new module uses a different decomposition of the coefficients as sums of products of pure angular momentum coefficients, which depend only on the tensor rank of the interaction but not on its details, with effective interaction strengths of specific interactions. This saves memory and reduces the computational cost of big calculations significantly.

- [UTILITIES for the RATIP package](../pub/p074.b01.cpc-ratip-utilities.pdf) (CPC 141, 163-74, 2001)

During recent years, the RATIP package has been applied successfully for studying the behavior and properties of open-shell atoms and ions within a relativistic framework. A series of case studies on the transition probabilities and lifetimes as well as for autoionization processes of different open-shell ions showed that it is possible today to make accurate predictions if all the dominant effects from relativity, correlation, and from the rearrangement of the electron density are treated on the same footings.

Here, a 'toolbox' is presented for the RATIP package which supports the data handling and the interpretation of (complex) spectra. These UTILITIES have been found useful, in particular when large-scale applications ought to be carried out.

- [RELCI: Relativistic configuration interaction calculations](../pub/p090.b02.cpc-relci-original-2002.pdf) (CPC 148, 103-23, 2002)

The set-up and diagonalization of (large) Hamiltonian matrices are two 'key elements' in studying the structure and properties of many-electron atoms and ions. The efficiency in dealing with these tasks eventually determines for which atomic systems useful ab-initio predictions can be made today and how accurate these predictions are. To facilitate further structure calculations, in particular for open-shell atoms and ions, here we present a new configuration interaction (CI) program in the framework of the RATIP package which helps incorporate different approximations to the electron-electron interaction in the Hamiltonian matrix and, thus, into the representation of the wave functions. Our new program also supports several computational modes to allow for a flexible choice between particular time and storage requirements of the user. Emphasis has been paid to provide a modern and user-friendly component of the RATIP package which carefully applies the concepts of Fortran 90/95.

- [Pure spin-angular momentum coefficients for non-scalar one-particle operators in jj-coupling](../pub/p091.b02.cpc-ancoII-original-2002.pdf) (CPC 148, 349-52, 2002)

A revised program for generating the spin-angular coefficients in relativistic atomic structure calculations is presented. When compared with our previous version [G. Gaigalas, S. Fritzsche and I. P. Grant, CPC 139 (2001) 263], the new version of the ANCO^2 program now provides these coefficients for both, scalar as well as 'non-scalar' one-particle operators as they arise frequently in the study of transition probabilities, electron capture processes, the alignment transfer through excited atomic states, collision strengths, and in many other investigations.

	 


## Maple Procedures for the Coupling of Angular Momenta

The theory of angular momentum and spherical tensor operators often leads to algebraic expressions written in terms of generalized Clebsch-Gordan coefficients and/or Wigner n-j symbols. While the evaluation and simplification of such expressions are straightforward in principle, they can become extremely cumbersome in more complex applications, such as atomic and nuclear structure theory or the study of angular-dependent properties. In these fields, simplification techniques are either based on graphical methods or the explicit knowledge of special values and sum rules found in the literature. The direct application of these rules is often laborious due to a large number of symmetric forms of the Wigner and related symbols and the complexity of expressions in Racah algebra.

### [I. Data structures and numerical computations](../pub/p018.a97.cpc-Racah-I.pdf) (CPC 103, 51-57, 1997)

This part defines proper data structures to deal with Racah algebra, which form the basis for supporting numerical computations of Racah algebra expressions, recursion formulas, and special values.

### [II. Sum rule evaluation](../pub/p025.a98.cpc-Racah-II.pdf) (CPC 111, 167-84, 1998)

This part supports the analytic evaluation of Racah algebra expressions by applying the orthogonality properties of the Wigner symbols and various useful sum rules. Over 40 sum rules involving products of up to six Wigner n-j symbols have been implemented and are available for interactive use.

### [III. Standard quantities for evaluating many-particle matrix elements](../pub/p056.b01.Racah-cpc-03.pdf) (CPC 135, 219-37, 2001)

This extension to the RACAH program provides standard quantities for the decomposition of many-electron matrix elements in atomic structure theory. These quantities include the coefficients of fractional parentage (cfp), the reduced coefficients of fractional parentage (rcfp), and reduced and completely reduced matrix elements for several operators within LS- and jj-coupling schemes.

### [IV. Spherical harmonics](../pub/p068.b01.Racah-cpc-04.pdf) (CPC 139, 297-313, 2001)

This extension of the RACAH program incorporates the behavior and properties of spherical harmonics and the algebraic evaluation of integrals over these functions.

### [V. Recoupling coefficients](../pub/p069.b01.Racah-cpc-05.pdf) (CPC 139, 314-25, 2001)

This part presents an extension to the RACAH program that supports the application and evaluation of general recoupling coefficients, with a focus on improved evaluation efficiency.

### [VI. LS-jj transformations](../pub/p095.b02.Racah-cpc-06.pdf) (CPC 149, 39-60, 2002)

This extension to the RACAH program provides transformation matrices between different coupling schemes, facilitating a reliable classification of the level structure for open-shell atoms and ions.

### [VII. Extended and accelerated computations](../pub/p110.b03.Racah-cpc-07.pdf) (CPC 153, 424-44, 2003)

This revision of the RACAH program provides fast and extended access to standard quantities from the theory of angular momentum within the framework of MAPLE. It offers support for both default software model and fast hardware floating-point computations.

### [VIII. Spin-angular coefficients for single-shell configurations](../pub/p144.b05.cpc-racahVIII-original.pdf) (CPC 166, 141-69, 2005)

This extension to the RACAH program provides standard quantities and pure spin-angular coefficients in LS- and jj-coupling schemes for the calculation of matrix elements of physical operators.

### [IX. Wigner D-functions and rotation matrices](../pub/p186.b06.cpc-racahIX-original.pdf) (CPC 174, 616-30, 2006)

This extension to the RACAH program implements the properties and algebraic rules of the Wigner D-functions and reduced rotation matrices, simplifying expressions involving these functions.

### [An up-date of the Racah module](../pub/p278.b09.cpc-racah-new-original.pdf) (CPC 180, 2021-23, 2009)

This update of the Racah module is adapted to Maple 11 and 12, supporting algebraic manipulations of expressions from Racah's algebra as well as numerical computations of many functions and symbols from the theory of angular momentum.

The source code of the present version is available [here](../programexchange/xxx). It includes more than 350 procedures, a brief description of all commands, as well as a number of help pages. This source also contains corrections of a few 'bugs' that were discovered in previous versions of the RACAH program.

 


## Properties and Behavior of Hydrogen-Like Ions

Many areas in many-particle physics are based on our knowledge of the hydrogen atom. Indeed, "hydrogenic" solutions have inspired various models in classical and quantum many-particle physics. Although analytical solutions are often available for many physical properties and processes, including hydrogen-like ions, the mathematics behind Schrödinger's equation is by no means trivial, especially when studying relativistic effects based on Dirac's equation.

With the **DIRAC** program, we have recently developed a very useful and powerful *symbolic* tool for studying the properties and behavior of hydrogen-like and few-electron ions across the entire periodic table of elements. This tool, written in Maple, contains numerous representations of 'hydrogenic solutions' within various contexts and coordinate frames. It also includes the knowledge required to calculate general matrix elements, cross sections, and distribution functions. The **DIRAC** program will soon be made publicly available.

### [I. Wavefunctions and Integrals](../pub/p142.b05.Dirac-cpc-01.pdf) (CPC 165, 139-56, 2005)

Today, the 'hydrogen atom model' plays a crucial role not only in teaching the basic elements of quantum mechanics but also in building effective theories in various fields of physics, including atomic and molecular physics, quantum optics, plasma physics, and semiconductor device design. Therefore, the analytical and numerical solutions of hydrogen-like ions are frequently required for analyzing experimental data and conducting advanced theoretical studies.

To provide a fast and 'consistent' access to these Coulomb-field solutions, we present the **DIRAC** program. This program was originally developed for studying the properties and dynamical behavior of hydrogen-like ions. In the present version, a set of Maple procedures is provided for Coulomb wave and Green's functions, utilizing equations from both nonrelativistic and relativistic theory. In addition to interactive access to these functions, the **DIRAC** program also implements a variety of radial integrals, aiding users in constructing transition amplitudes and cross sections, as frequently encountered in the theory of ion-atom and ion-photon collisions.

 

## FEYNMAN Tools: Simulation of n-Qubit Spin Systems and Quantum Registers

The **FEYNMAN** program has been developed over the last few years to support case studies on the dynamics and entanglement of n-qubit quantum registers. In addition to basic transformations and gate operations, it currently supports various separability and entanglement measures, quantum channels, and the parametrization of frequently used objects in quantum information theory, such as pure and mixed quantum states, Hermitian and unitary matrices, or classical probability distributions.

Recently, there was a need for a redesign to cover different topics without significantly increasing the complexity of the program. A small but powerful set of keystring-driven commands was desired to facilitate common computations encountered in quantum register simulations.

To achieve this goal, the **FEYNMAN** tools have been redesigned to create a high-level language capable of handling most computational tasks related to finite n-qubit systems. Special emphasis was placed on defining a compact set of keystring-driven commands for both symbolic and numerical computations. While the tools are implemented in Maple, the design is flexible enough to be implemented in other languages and environments.

### [The Feynman Tools for Quantum Information Processing: Design and Implementation](../pub/Feynman-cpc-2014.pdf) (CPC 185, 1697-1718, 2014)

The Feynman tools have undergone a redesign with the goal of establishing and implementing a high-level computer language capable of dealing with the physics of finite n-qubit systems. The redesign emphasizes a compact set of keystring-driven commands to support both symbolic and numerical computations. Though implemented in Maple, the design is general and flexible for use with other languages and computational environments. The Feynman tools facilitate a wide range of computational tasks, including the definition, manipulation, and parametrization of quantum states, evaluation of quantum measures and operations, modeling quantum noise in discrete systems, quantum measurements, and state estimation, among others. The design is based on a few high-level commands, with syntax closely resembling mathematical notation, making it accessible for solving complex computational tasks. The Feynman tools are provided as a Maple library and can be used on all platforms where this computer algebra system is available.

The **Feynman tools** are distributed as a compressed archive *Feynman-2013.tgz*, containing the *Feynman.ind* and *Feynman.lib* library files in the *lib* subdirectory, the source code *Feynman-source-2013.txt*, and the manual *Feynman-manual-2013.pdf*. Additionally, the archive includes the Maple worksheets *Feynman-commands-all-2013.mw* and *Feynman-commands-measures-2013.mw*, which contain small examples for almost all implemented functions and argument options.

The present version of the **FEYNMAN** tools is based on previous write-ups that provide further details on the implementation:

- [I. Quantum Registers and Quantum Gates](../pub/p170.b05.cpc-feynman-I-thomas-orig.pdf) (CPC 173, 91-113, 2005)
- [II. Separability and Entanglement](../pub/p189.b06.cpc-feynman-II-thomas-orig.pdf) (CPC 175, 145-66, 2006)
- [III. Quantum Operations](../pub/p225.b07.cpc-feynman-III-orig.pdf) (CPC 176, 617-33, 2007)
- [IV. Parametrizations of Quantum States, Matrices, and Probability Distributions](../pub/p257.b08.cpc-feynman-IV-thomas-original.pdf) (CPC 179, 647-64, 2008)
- [V. Quantum Measurements](../pub/p282.b09.cpc-feynman-V-thomas-original.pdf) (CPC 181, 440-53, 2010)
