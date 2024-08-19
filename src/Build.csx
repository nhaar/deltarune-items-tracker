#load "ump.csx"

class Loader : UMPLoader
{
    public override string CodePath => "mod/";

    public override bool UseGlobalScripts => true;

    public override string[] GetCodeNames (string filePath)
    {
        return new string[] { Path.GetFileNameWithoutExtension(filePath) };
    }

    public Loader (UMPWrapper wrapper) : base(wrapper)
    {
    }
}

Loader loader = new(UMP_WRAPPER);
loader.Load();