/// PATCH

/// AFTER
            for (__i = 0; __i < 48; __i++)
            {
                if (__i <= __itemcount)
                    global.weapon[__i] = __weapon[__i]
                else
                    global.weapon[__i] = 0
            }
/// CODE
count_item(get_weapon_name(argument0));
/// END