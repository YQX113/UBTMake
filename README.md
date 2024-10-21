# UBTMake

```csharp
namespace UBTMake
{
    public class CMakeBuilder
    {
	public CMakeBuilder(ReadOnlyTargetRules target, ModuleRules rules)// (build parameters, module rules) => Set path parameters
            
	public CMakeBuilder Add(string targetName, string gitPath, string gitTag)// (external library name, external library git path, external library tag, version, branch) => Add external library information to CMakeLists.txt

	public void Build()// Execute CMake configuration and build commands

	public virtual void AutoAddIncludeLib()// Set UBT-related parameters
    }
}
```
