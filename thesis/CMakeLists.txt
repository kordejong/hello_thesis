set(thesis_version 0.0.0)
set(PDFLATEX_COMPILER lualatex)

add_subdirectory(figure)


add_latex_document(thesis.tex
    INPUTS
        classicthesis-config.tex

        front_matter/title_page-1.tex
        front_matter/title_page_back-1.tex
        front_matter/title_page-2.tex
        front_matter/title_page_back-2.tex
        front_matter/contents.tex

        main_matter/introduction.tex
        main_matter/paper-1.tex
        main_matter/paper-2.tex
        main_matter/paper-3.tex
        main_matter/paper-4.tex
        main_matter/synthesis.tex

        back_matter/bibliography.tex
        back_matter/summary.tex
        back_matter/samenvatting.tex
        back_matter/acknowledgements.tex
        back_matter/author.tex

    CONFIGURE classicthesis-config.tex
    # IMAGES
    #    figure/some_image.png
    BIBFILES
        phd.bib
        thesis.bib
    USE_BIBLATEX
    DEPENDS
        thesis.paper_1.my_figure_pdf
)

add_custom_command(
    TARGET
        thesis
    POST_BUILD
    COMMAND
        ${CMAKE_COMMAND} -E copy
            thesis.pdf thesis-${thesis_version}.pdf
    DEPENDS
        thesis.pdf
)
