SOURCE_PNG := lets_take_a_walk_screen_side_no_tex.png \
  lets_take_a_walk_screen_top_no_tex.png \
  lets_take_a_walk_screen_side_tex.png \
  lets_take_a_walk_screen_top_tex.png \
  base_shadowed.png \
  material_transparency_stipple_regular_screen.png \
  material_transparency_stipple_random_screen.png \
  fog_culling_fog_screen.png \
  fog_culling_no_fog_screen.png \
  castle_forest_screen.png \
  break_no_transform_screen.png \
  break_no_transform_correct_screen.png \
  castle_alpha_bad_screen.png \
  castle_alpha_good_screen.png \
  multiple_viewports_dynamic_world_screen.png \
  multiple_viewports_teapot_screen.png \
  scene_manager_demos_1_screen.png

PNG_MINI_OUTPUT := $(SOURCE_PNG:screen.png=screen_mini.png)

EPS_OUTPUT := $(SOURCE_PNG:screen.png=screen.eps)

ALL_OUTPUT := $(PNG_MINI_OUTPUT)
# Do not automatically generate EPS images (see ../vrml_engine.xml comments)
# $(EPS_OUTPUT)

.PHONY: all
all: $(ALL_OUTPUT)

.PHONY: info
info:
	@echo 'Source PNG: $(SOURCE_PNG)'
	@echo 'PNG mini output: $(PNG_MINI_OUTPUT)'
	@echo 'EPS output: $(EPS_OUTPUT)'

.PHONY: clean
clean:
	rm -f $(ALL_OUTPUT)

# The size generated here must be synchronized with CSS
# width setting for figure in ../vrml_engine.css
DEFAULT_CONVERT = convert $< -geometry 300 $@

%_mini.png: %.png
	$(DEFAULT_CONVERT)

# The size generated here must be synchronized with CSS
# width setting for figure (within para_with_larger_screen_mini)
# in ../vrml_engine.css
CONVERT_TO_LARGER_MINI = convert $< -geometry 600 $@

lets_take_a_walk_screen_side_no_tex_mini.png: lets_take_a_walk_screen_side_no_tex.png
	$(CONVERT_TO_LARGER_MINI)

lets_take_a_walk_screen_top_no_tex_mini.png: lets_take_a_walk_screen_top_no_tex.png
	$(CONVERT_TO_LARGER_MINI)

lets_take_a_walk_screen_side_tex_mini.png: lets_take_a_walk_screen_side_tex.png
	$(CONVERT_TO_LARGER_MINI)

lets_take_a_walk_screen_top_tex_mini.png: lets_take_a_walk_screen_top_tex.png
	$(CONVERT_TO_LARGER_MINI)

base_shadowed_mini.png: base_shadowed.png
	$(CONVERT_TO_LARGER_MINI)

material_transparency_stipple_regular_screen_mini.png: material_transparency_stipple_regular_screen.png
	$(CONVERT_TO_LARGER_MINI)

material_transparency_stipple_random_screen_mini.png: material_transparency_stipple_random_screen.png
	$(CONVERT_TO_LARGER_MINI)

castle_forest_screen_mini.png: castle_forest_screen.png
	$(CONVERT_TO_LARGER_MINI)

CONVERT_PNG_TO_EPS = convert $< $@

%.eps: %.png
	$(CONVERT_PNG_TO_EPS)
