/// PATCH

/// AFTER
            for (__i = 0; __i < 48; __i++)
            {
                if (__i <= __itemcount)
                    global.armor[__i] = __armor[__i]
                else
                    global.armor[__i] = 0
            }
/// CODE
count_item(get_armor_name(argument0));
/// END