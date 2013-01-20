DATE=$(shell date +%I:%M%p)
CHECK=\033[32m✔\033[39m
HR=\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
#
# default build target does nothing
#
build:
	@echo "\n${HR}"
	@echo "To build specific flash card type \nplease one of available non-defualt target"
	@echo "${HR}\n"
#
#	build Pleco single flashcard file
#
pleco:
# header
	@echo "\n${HR}"
	@echo "Building flashcards compatible with Pleco software"
	@echo "${HR}\n"
# remove old file and suppress errors
	@-rm -f flashcards/genki-one-for-pleco.txt
	@echo "Removing old merged files ...             ${CHECK} Done"
# merge existing files into new one
	@cat flashcards/greetings.txt flashcards/lesson-one.txt flashcards/lesson-two.txt > flashcards/genki-one-for-pleco.txt
	@echo "Merging flashcard files ...             ${CHECK} Done"
	@echo "\n${HR}\n"
# display summary
	@echo "Pleco flashcards successfully created at ${DATE}."
	@echo "Thanks for using genki-flascards"