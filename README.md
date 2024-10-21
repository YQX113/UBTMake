# UBTMake

## UBTMake_API
```csharp
namespace UBTMake// 【UBTMake_API】
{
    public class CMakeBuilder
    {
	public CMakeBuilder(ReadOnlyTargetRules target, ModuleRules rules)       // (build parameters, module rules) => Set path parameters
            
	public CMakeBuilder Add(string targetName, string gitPath, string gitTag)// (external library name, external library git path, external library tag, version, branch) => Add external library information to CMakeLists.txt

	public void Build()                                                      // Execute CMake configuration and build commands

	public virtual void AutoAddIncludeLib()                                  // Set UBT-related parameters
    }
}
```  



## XXX.build.cs
```csharp
using UnrealBuildTool;// 【XXX.build.cs】

public class XXX : ModuleRules
{
	public XXX(ReadOnlyTargetRules Target) : base(Target)
	{
		PublicDependencyModuleNames.AddRange(new string[] {});
		PrivateDependencyModuleNames.AddRange(new string[] 

#if true                          
		CMakeBuilder builder = UBTMake.Init(Target, this);
		builder.Add("targetName", "gitPath", "gitTag").Build();
		builder.AutoAddIncludeLib();
#endif
	}
}
```
-----
> [!NOTE]
> · Ensure the network connection is normal and stable.\
> · If you inherit from `CMakeBuilder` and override the `AutoAddIncludeLib` function, you need to manually create\
> &nbsp;&nbsp;an instance of the subclass.\
> · Now, feel free to expand and create your own Unreal Engine!



