.PHONY: clean
clean:
	$(MAKE) clean distclean -C vrml_engine_internals/
	$(MAKE) clean -C shadow_maps_x3d/
	$(MAKE) clean -C shadow_maps_x3d/slides/
	$(MAKE) clean -C compositing_shaders/
	$(MAKE) clean -C compositing_shaders_doc/
	$(MAKE) clean -C compositing_shaders/slides/
	$(MAKE) clean -C compositing_shaders/slides_pl_seminarium_doktoranckie/
