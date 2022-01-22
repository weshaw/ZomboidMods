require 'Definitions/AttachedWeaponDefinitions'

print(type(AttachedWeaponDefinitions))

AttachedWeaponDefinitions.chanceOfAttachedWeapon = 10; -- previously 6

AttachedWeaponDefinitions.handgunHolster.chance = 80 -- previously: 50
AttachedWeaponDefinitions.shotgunPolice.change = 60 -- previously: 30
AttachedWeaponDefinitions.assaultRifleOnBack.change = 40 -- previously: 20
AttachedWeaponDefinitions.huntingRifleOnBack.change = 60 -- previously: 30

AttachedWeaponDefinitions.katanaStomach.chance = 5 -- previously: 1
AttachedWeaponDefinitions.axeBack.chance = 10 -- previously: 2
