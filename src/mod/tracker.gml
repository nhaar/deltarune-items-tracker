/// FUNCTIONS

function create_array()
{
    if (argument_count == 0)
    {
        return array_create(0)
    }
    var new_array
    new_array[argument_count - 1] = 0;
    for (var i = 0; i < argument_count; i++)
    {
        new_array[i] = argument[i]
    }
    return new_array;
}

function get_items()
{
    return create_array(
        "revivemint",
        "darkcandy",
        "brokencake",
        "topcake",
        "darkburger",
        "lancercookie",
        "chocodiamond",
        "heartsdonut",
        "clubssandwich",
        "rouxlsroux",
        "tensionbit",
        "lightcandy",
        "cdbagel",
        "ddburger",
        "butlerjuice",
        "spaghetticode",
        "tensiongem",
        "revivedust",
        "glowshard",
        "manual",
        "spoison",
        "dogdollar",
        "kristea",
        "noelletea",
        "ralseitea",
        "susietea",
        "hotchocolate",
        "spincake",
        "bandage",
        "boxofheartcandy",
        "whiteribbon",
        "ambercard",
        "ironshackle",
        "dicebrace",
        "pinkribbon",
        "jevilstail",
        "dealmaker",
        "glowwrist",
        "silverwatch",
        "mannequin",
        "royalpin",
        "silvercard",
        "twinribbon",
        "spikeband",
        "chainmail",
        "bshotbowtie",
        "tensionbow",
        "frayedbowtie",
        "woodblade",
        "mechasaber",
        "bounceblade",
        "spookysword",
        "brokensword",
        "devilsknife",
        "braveax",
        "maneax",
        "autoaxe",
        "ragger",
        "daintyscarf",
        "fiberscarf",
        "ragger2",
        "redscarf",
        "puppetscarf",
        "freezering",
        "thornring",
        "snowring",
        "brokenkeya",
        "brokenkeyb",
        "brokenkeyc",
        "doorkey",
        "egg",
        "cellphone",
        "shadowcrystal",
        "keygen",
        "emptydisk",
        "loadeddisk",
        "lancer",
        "rouxlskaard",
        "starwalker",
        "bouquet",
        "ballofjunk",
        "hotchocolate",
        "cards",
        "boxofheartcandy"
    );
}

function get_item_tracker_ini()
{
    return "itemtracker.ini";
}

function initialize_tracker()
{
    var items = get_items();
    var size = array_length(items);
    ini_open(get_item_tracker_ini());
    for (var i = 0; i < size; i++)
    {
        ini_write_real("items", items[i], 0);
    }
    // this one is basically... trivial so just always gonna count
    count_item("cellphone");
    ini_close();
}

function load_items_total()
{
    global.items_collected = 0;
    if (!file_exists(get_item_tracker_ini()))
    {
        initialize_tracker();
    }
    else
    {
        ini_open(get_item_tracker_ini());
        var items = get_items();
        var size = array_length(items);
        for (var i = 0; i < size; i++)
        {
            var value = ini_read_real("items", items[i], 0);
            if (value == 1)
            {
                global.items_collected++;
            }
        }
        ini_close();
    }
}

function count_item(name)
{
    ini_open(get_item_tracker_ini());
    var previous_value = ini_read_real("items", name, 0);
    if (previous_value == 0)
    {
        ini_write_real("items", name, 1);
        global.items_collected++;
    }
    ini_close();
}

function get_weapon_name(_id)
{
    switch (_id)
    {
        case 1: return "woodblade";
        case 2: return "maneax";
        case 3: return "redscarf";
        case 5: return "spookysword";
        case 6: return "braveax";
        case 7: return "devilsknife";
        case 9: return "ragger";
        case 10: return "daintyscarf";
        case 12: return "snowring";
        case 13: return "thornring";
        case 14: return "bounceblade";
        case 16: return "mechasaber";
        case 17: return "autoaxe";
        case 18: return "fiberscarf";
        case 19: return "ragger2";
        case 20: return "brokensword";
        case 21: return "puppetscarf";
        case 22: return "freezering";
    }
}

function get_armor_name(_id)
{
    switch (_id)
    {
        case 1: return "ambercard";
        case 2: return "dicebrace";
        case 3: return "pinkribbon";
        case 4: return "whiteribbon";
        case 5: return "ironshackle";
        case 7: return "jevilstail";
        case 8: return "silvercard";
        case 9: return "twinribbon";
        case 10: return "glowwrist";
        case 11: return "chainmail";
        case 12: return "bshotbowtie";
        case 13: return "spikeband";
        case 14: return "silverwatch";
        case 15: return "tensionbow";
        case 16: return "mannequin";
        case 20: return "frayedbowtie";
        case 21: return "dealmaker";
        case 22: return "royalpin";
    }
}

function get_item_name(_id)
{
    switch (_id)
    {
        case 1: return "darkcandy";
        case 2: return "revivemint";
        case 3: return "glowshard";
        case 4: return "manual";
        case 6: return "topcake";
        case 7: return "spincake";
        case 8: return "darkburger";
        case 9: return "lancercookie";
        case 11: return "clubssandwich";
        case 12: return "heartsdonut";
        case 13: return "chocodiamond";
        case 15: return "rouxlsroux";
        case 16: return "cdbagel";
        case 18: return "kristea";
        case 19: return "noelletea";
        case 20: return "ralseitea";
        case 21: return "susietea";
        case 22: return "ddburger";
        case 23: return "lightcandy";
        case 24: return "butlerjuice";
        case 25: return "spaghetticode";
        case 27: return "tensionbit";
        case 28: return "tensiongem";
        case 30: return "revivedust";
        case 32: return "spoison";
        case 33: return "dogdollar";
    }
}

function get_keyitem_name(_id)
{
    switch (_id)
    {
        case 1: return "cellphone";
        case 2: return "egg";
        case 3: return "brokencake";
        case 4: return "brokenkeya";
        case 5: return "doorkey"
        case 6: return "brokenkeyb";
        case 7: return "brokenkeyc";
        case 8: return "lancer";
        case 9: return "rouxlskaard";
        case 10: return "emptydisk";
        case 11: return "loadeddisk";
        case 12: return "keygen";
        case 13: return "shadowcrystal";
        case 14: return "starwalker";
    }
}

function get_litem_name(_id)
{
    switch (_id)
    {
        case 1: return "hotchocolate";
        case 2: return "woodblade";
        case 3: return "bandage";
        case 4: return "bouquet";
        case 5: return "ballofjunk"
        case 6: return "spookysword";
        case 8: return "egg";
        case 9: return "cards";
        case 10: return "boxofheartcandy";
        case 11: return "glass";
        case 12: return "eraser";
        case 13: return "mechasaber";
        case 14: return "wristwatch";
    }
}