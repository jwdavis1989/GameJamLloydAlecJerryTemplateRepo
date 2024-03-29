/// @description Reload
if (equipped_weapon.currentAmmo < equipped_weapon.maxAmmo && !equipped_weapon.reloading) {
    equipped_weapon.currentAmmo = 0;
}

