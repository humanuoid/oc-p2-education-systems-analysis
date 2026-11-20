DATA_DIR := data
EDSTATS_URL := https://s3-eu-west-1.amazonaws.com/static.oc-static.com/prod/courses/files/Parcours_data_scientist/Projet+-+Donn%C3%A9es+%C3%A9ducatives/Projet+Python_Dataset_Edstats_csv.zip

.PHONY: jupyter stop download

jupyter:
	uv run jupyter lab

stop:
	pkill -f "jupyter-lab" || true

download:
	mkdir -p $(DATA_DIR)/input
	curl -L -o $(DATA_DIR)/input/edstats.zip "$(EDSTATS_URL)"
	unzip -o $(DATA_DIR)/input/edstats.zip -d $(DATA_DIR)/input/
	rm $(DATA_DIR)/input/edstats.zip
