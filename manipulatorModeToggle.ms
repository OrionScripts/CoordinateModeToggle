macroScript manipulatorModeToggle
	category:"Orion Scripts"
	toolTip:"Coordinate Mode Toggle"
	ButtonText:"CMT"
(
maniptype = toolMode.commandmode as string
varAxis = getRefCoordSys() as string
case of
(
(varAxis == "local"): toolMode.coordsys #world
(varAxis == "world"): toolMode.coordsys #parent
(varAxis == "parent"): toolMode.coordsys #screen
(varAxis == "screen"): toolMode.coordsys #view
(varAxis == "view"): toolMode.coordsys #gimbal
(varAxis == "gimbal"): toolMode.coordsys #grid
(varAxis == "grid"): toolMode.coordsys #working
(varAxis == "working"): toolMode.coordsys #hybrid
(varAxis == "hybrid"): toolMode.coordsys #local
)
)