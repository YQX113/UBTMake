# UBTMake

```csharp
namespace UBTMake
{
    public class CMakeBuilder
    {
		public CMakeBuilder(ReadOnlyTargetRules target, ModuleRules rules)// target(构建参数)、rules(模块规则) => 设置路径参数        
            
         public CMakeBuilder Add(string targetName, string gitPath, string gitTag)// targetName(外部库名称)、gitPath(外部库git路径)、gitTag(外部库标签、版本、分支) => 添加外部库信息至CMakeLists.txt
            
         public void Build()// 执行CMake配置、构建命令
            
         public virtual void AutoAddIncludeLib()// 设置UBT相关参数
    }
}
```
