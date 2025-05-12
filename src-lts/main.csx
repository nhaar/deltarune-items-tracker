#load "ump.csx"

using System.Linq;
using System.Drawing;

class ItemTrackerLoader : UMPLoader
{
    public override string CodePath => "mod/";

    public override bool UseGlobalScripts => true;

    public override string[] Symbols => chnum switch
    {
        1 => new[] { "CHAPTER_1" },
        2 => new[] { "CHAPTER_2" },
        3 => new[] { "CHAPTER_3" },
        4 => new[] { "CHAPTER_4" },
        5 => new[] { "CHAPTER_5" },
        6 => new[] { "CHAPTER_6" },
        7 => new[] { "CHAPTER_7" },
        _ => throw new NotImplementedException()
    };

    public override string[] GetCodeNames(string filePath)
    {
        List<string> entries = new List<string>();
        string fileName = Path.GetFileNameWithoutExtension(filePath);

        if(filePath.Contains("all_chapters") || filePath.Contains($"chapter{chnum}"))
            entries.Add(fileName);

        return entries.ToArray();
    }

    public ItemTrackerLoader(UMPWrapper wrapper, int chapter) : base(wrapper)
    {
        chnum = chapter;
    }

    public int chnum { get; set; }
}

void BuildMod(int chapter)
{
    ItemTrackerLoader loader = new ItemTrackerLoader(UMP_WRAPPER, chapter);
    loader.Load();
}