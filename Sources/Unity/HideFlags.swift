import Swift

/// Bit mask that controls object destruction, saving and visibility in inspectors.
@frozen public enum HideFlags : String, Equatable, Hashable {
    /// A normal, visible object. This is the default.
    case none
    
    /// The object will not appear in the hierarchy.
    case hideInHierarchy
    
    /// It is not possible to view it in the inspector.
    case hideInInspector
    
    /// The object will not be saved to the Scene in the editor.
    case dontSaveInEditor
    
    /// The object will not be editable in the inspector.
    case notEditable
    
    /// The object will not be saved when building a player.
    case dontSaveInBuild
    
    /// The object will not be unloaded by Resources.UnloadUnusedAssets.
    case dontUnloadUnusedAsset
    
    /// The object will not be saved to the Scene. It will not be destroyed when a new Scene is loaded. It is a shortcut for HideFlags.dontSaveInBuild | HideFlags.dontSaveInEditor | HideFlags.dontUnloadUnusedAsset.
    case dontSave
    
    /// The GameObject is not shown in the Hierarchy, not saved to to Scenes, and not unloaded by Resources.UnloadUnusedAssets
    case hideAndDontSave
}
