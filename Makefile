.PHONY: bootstrap quarto clean

bootstrap:
	@echo "Bootstrapping R environment..."
	Rscript scripts/bootstrap.R

quarto:
	@echo "Rendering Quarto project..."
	quarto render notebooks/example.qmd --to html

presentation:
	@echo "Rendering Quarto presentation..."
	mkdir -p outputs/quarto
	quarto render notebooks/presentation.qmd --to revealjs --output outputs/quarto/presentation.html

clean:
	@echo "Cleaning outputs..."
	rm -rf _site/ _book/ outputs/quarto/* || true
