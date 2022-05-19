# hello_thesis
Here I show how I used LaTeX for formatting my PhD thesis. It is meant for inspiration for
others. I am not a LaTeX expert, so please don't ask me questions about how to do things in
LaTeX. If you have improvements, then I am happy to receive pull requests.

Software used, apart from LaTeX:
- [CMake](https://www.cmake.org) for generating project files to drive the generation of a
  PDF.
- [UseLATEX](https://gitlab.kitware.com/kmorel/UseLATEX) which contains a CMake function for
  defining a LaTeX PDF target. A copy is available in this repository.
- [ClassicThesis](https://ctan.org/pkg/classicthesis) which is a style specifically made
  for theses. Your LaTeX distribution probably already provides it.
- A build system for driving the generation of the PDF. See
  https://cmake.org/cmake/help/latest/manual/cmake-generators.7.html for a list of supported
  build systems.

To test things out, generate a PDF of the thesis like this:

```bash
git clone https://github.com/kordejong/hello_thesis.git

# Create a directory in which to store the PDF and all intermediate files
# created.
mkdir build
cd build

# Ask CMake to generate project files for the Ninja build too. Change Ninja
# to something else if you want to use another build tool.
cmake -G "Ninja" ../hello_thesis

# Tell Ninja to build the PDF
ninja
```

If all went well and you like the result, you can use the scripts and LaTeX sources as inspiration
for your own thesis project.

I made various changes to the default ClassicThesis configuration. Just compare the one in the
repository with the default one from the ClassicThesis zip file.
- Use biber instead of bibtex.
- I prefer the lines to be a little bit wider.
- I prefer to have black fonts, also for headers and links.
- ...
