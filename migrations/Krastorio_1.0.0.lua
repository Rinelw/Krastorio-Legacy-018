function reapply_research(force, research) 
	if force.technologies[research] and force.technologies[research].researched then
		for _,effect in pairs(force.technologies[research].effects) do
			if effect.type == "unlock-recipe" then
				force.recipes[effect.recipe].enabled = true
			end
		end
	end
end

for _, force in pairs(game.forces) do
	force.reset_technologies()
	force.reset_recipes()
	for _,research in pairs({
	
	"k-advanced-processor",
	"advanced-electronics",
	"advanced-electronics-2",
	"k-filtration-plant",
	"steel-axe",
	"k-matter",
	"imersite-processing-1",
	"menarite-processing-1",
	"modules",
	"matter+minerals-processing",
	"matter-assembler-plus",
	"antimatter-reactor-prototype",
	"advanced-antimatter-reactor",
	"advanced-material-processing-2",
	"k-deep-mining",
	"k-advanced-logistics",
	"rocket-fuel",
	"space-science-pack",
	"atomic-bomb",
	"matter-converter",
	"k-air-purifier",
	"k-antimatter-power-cell"
	
	}) do
        reapply_research(force, research)
    end
end