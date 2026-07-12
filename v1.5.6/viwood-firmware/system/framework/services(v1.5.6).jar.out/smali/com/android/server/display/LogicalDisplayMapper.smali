.class public Lcom/android/server/display/LogicalDisplayMapper;
.super Ljava/lang/Object;
.source "LogicalDisplayMapper.java"

# interfaces
.implements Lcom/android/server/display/DisplayDeviceRepository$Listener;


# static fields
.field public static final DEBUG:Z

.field public static sNextNonDefaultDisplayId:I


# instance fields
.field public mBootCompleted:Z

.field public mCurrentLayout:Lcom/android/server/display/layout/Layout;

.field public final mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

.field public mDeviceState:Landroid/hardware/devicestate/DeviceState;

.field public final mDeviceStateManagerFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

.field public mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

.field public final mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

.field public final mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

.field public final mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

.field public final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field public final mDisplayGroupIdsByName:Landroid/util/ArrayMap;

.field public final mDisplayGroups:Landroid/util/SparseArray;

.field public final mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

.field public final mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

.field public final mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

.field public final mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

.field public final mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

.field public mInteractive:Z

.field public final mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

.field public final mLogicalDisplays:Landroid/util/SparseArray;

.field public final mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

.field public mNextNonDefaultGroupId:I

.field public mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSingleDisplayDemoMode:Z

.field public final mSupportsConcurrentInternalDisplays:Z

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public final mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

.field public final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field public final mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

.field public final mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

.field public final mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

.field public mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static synthetic $r8$lambda$180v0r73SgWuHOXH9KeuIhm0OfE(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 228
    :cond_0
    sget p0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    add-int/lit8 v0, p0, 0x1

    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    return p0
.end method

.method public static synthetic $r8$lambda$CLkgta2MkaptkxpiszN50MW0yV0(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 209
    :cond_0
    sget p0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    add-int/lit8 v0, p0, 0x1

    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    return p0
.end method

.method public static synthetic $r8$lambda$N8BYO3VRk9SxOshZBRw21dnZJC8(Lcom/android/server/display/LogicalDisplayMapper;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->lambda$setDeviceStateLocked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ltxpdCphLYKBtSHlpUiAJoWLQCA(Lcom/android/server/display/LogicalDisplayMapper;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->lambda$setDeviceStateLocked$3(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncRoot(Lcom/android/server/display/LogicalDisplayMapper;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfinishStateTransitionLocked(Lcom/android/server/display/LogicalDisplayMapper;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-string v0, "LogicalDisplayMapper"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    const/4 v0, 0x1

    .line 109
    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/DeviceStateToLayoutMap;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/SyntheticModeManager;)V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 115
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 150
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 159
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 164
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    .line 179
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 188
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 193
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 198
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 207
    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 208
    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 211
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 212
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 213
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 238
    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 239
    const-class p6, Landroid/os/PowerManager;

    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/os/PowerManager;

    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    .line 240
    invoke-virtual {p6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p6

    iput-boolean p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 241
    new-instance p6, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p6, p0, p7}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;-><init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V

    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 242
    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 243
    iput-object p5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    .line 244
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 245
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    .line 246
    const-string/jumbo p2, "persist.demo.singledisplay"

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110269

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSupportsConcurrentInternalDisplays:Z

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1070048

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070047

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 254
    invoke-virtual {p4, p0}, Lcom/android/server/display/DisplayDeviceRepository;->addListener(Lcom/android/server/display/DisplayDeviceRepository$Listener;)V

    .line 255
    iput-object p8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 256
    iput-object p9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 257
    iput-object p10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 258
    new-instance p1, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;

    invoke-direct {p1}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateManagerFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 11

    move-object/from16 v9, p8

    .line 225
    new-instance v8, Lcom/android/server/display/DeviceStateToLayoutMap;

    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v8, v0, v9}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    new-instance v10, Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-direct {v10, v9}, Lcom/android/server/display/mode/SyntheticModeManager;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/LogicalDisplayMapper;-><init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/DeviceStateToLayoutMap;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/SyntheticModeManager;)V

    return-void
.end method


# virtual methods
.method public final applyLayoutLocked()V
    .locals 10

    .line 1195
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 1196
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Previous layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogicalDisplayMapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v0}, Lcom/android/server/display/layout/Layout;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    .line 1202
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v4, v3}, Lcom/android/server/display/layout/Layout;->getAt(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v4

    .line 1208
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    .line 1209
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyLayoutLocked: The display device ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "), is not available for the display state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 1212
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1211
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1218
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v5

    .line 1220
    invoke-virtual {p0, v5}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    .line 1223
    invoke-virtual {p0, v7, v5}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v7

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 1229
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    if-eq v7, v8, :cond_3

    if-nez v5, :cond_2

    .line 1233
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    if-eqz v5, :cond_2

    .line 1234
    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    invoke-interface {v5, v9}, Lcom/android/server/policy/WindowManagerPolicy;->onDisplaySwitchStart(I)V

    .line 1237
    :cond_2
    invoke-virtual {v7, v8}, Lcom/android/server/display/LogicalDisplay;->swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1239
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v5

    .line 1241
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getPosition()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/server/display/LogicalDisplay;->setDevicePositionLocked(I)V

    .line 1242
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getLeadDisplayId()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/server/display/LogicalDisplay;->setLeadDisplayLocked(I)V

    .line 1244
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getRefreshRateZoneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRange(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v6

    .line 1243
    invoke-virtual {v7, v6}, Lcom/android/server/display/LogicalDisplay;->updateLayoutLimitedRefreshRateLocked(Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 1248
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getRefreshRateThermalThrottlingMapId()Ljava/lang/String;

    move-result-object v6

    .line 1247
    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    .line 1246
    invoke-virtual {v7, v5}, Lcom/android/server/display/LogicalDisplay;->updateThermalRefreshRateThrottling(Landroid/util/SparseArray;)V

    .line 1251
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v5

    invoke-virtual {p0, v7, v5}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 1253
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getThermalBrightnessThrottlingMapId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_2

    .line 1255
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getThermalBrightnessThrottlingMapId()Ljava/lang/String;

    move-result-object v5

    .line 1252
    :goto_2
    invoke-virtual {v7, v5}, Lcom/android/server/display/LogicalDisplay;->setThermalBrightnessThrottlingDataIdLocked(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getPowerThrottlingMapId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    .line 1259
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getPowerThrottlingMapId()Ljava/lang/String;

    move-result-object v6

    .line 1256
    :goto_3
    invoke-virtual {v7, v6}, Lcom/android/server/display/LogicalDisplay;->setPowerThrottlingDataIdLocked(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getDisplayGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/display/LogicalDisplay;->setDisplayGroupNameLocked(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final areAllTransitioningDisplaysOffLocked()Z
    .locals 6

    .line 677
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 679
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 680
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 684
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 686
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    .line 687
    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-eq v4, v3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final assignDisplayGroupIdLocked(ZLjava/lang/String;ZLjava/lang/Integer;)I
    .locals 0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1313
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 1316
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 1317
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    .line 1322
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    .line 1324
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1325
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 10

    .line 1053
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 1057
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1059
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    .line 1060
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    .line 1061
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    .line 1062
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1065
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v3

    if-eqz v2, :cond_1

    .line 1067
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 1068
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 1069
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1071
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v5

    .line 1074
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayGroupNameLocked()Ljava/lang/String;

    move-result-object v6

    .line 1076
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1080
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_3

    .line 1082
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v7

    :goto_2
    if-eqz v3, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    move v6, v8

    :goto_3
    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    move v9, v7

    goto :goto_4

    :cond_5
    move v9, v8

    :goto_4
    if-eqz v4, :cond_6

    .line 1088
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_6

    goto :goto_5

    :cond_6
    move v7, v8

    :goto_5
    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    if-ne v6, v0, :cond_7

    if-eq v7, v9, :cond_8

    .line 1094
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayGroupNameLocked()Ljava/lang/String;

    move-result-object v3

    .line 1093
    invoke-virtual {p0, v0, v3, v9, v2}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupIdLocked(ZLjava/lang/String;ZLjava/lang/Integer;)I

    move-result v3

    .line 1099
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1101
    new-instance v0, Lcom/android/server/display/DisplayGroup;

    invoke-direct {v0, v3}, Lcom/android/server/display/DisplayGroup;-><init>(I)V

    .line 1102
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_9
    if-eq v5, v0, :cond_c

    if-eqz v5, :cond_a

    .line 1106
    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 1108
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayGroup;->addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1109
    invoke-virtual {p1, v3}, Lcom/android/server/display/LogicalDisplay;->updateDisplayGroupIdLocked(I)V

    .line 1110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Setting new display group "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for display "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", from previous group: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_b

    .line 1112
    invoke-virtual {v5}, Lcom/android/server/display/DisplayGroup;->getGroupId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_6

    :cond_b
    const-string/jumbo p1, "null"

    :goto_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1110
    const-string p1, "LogicalDisplayMapper"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_7
    return-void
.end method

.method public final assignLayerStackLocked(I)I
    .locals 0

    .line 0
    return p1
.end method

.method public associateDisplayDeviceWithVirtualDevice(Lcom/android/server/display/DisplayDevice;I)V
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;
    .locals 7

    .line 1273
    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->assignLayerStackLocked(I)I

    move-result v2

    .line 1274
    new-instance v0, Lcom/android/server/display/LogicalDisplay;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1275
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPixelAnisotropyCorrectionInLogicalDisplayEnabled()Z

    move-result v4

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1276
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAlwaysRotateDisplayDeviceEnabled()Z

    move-result v5

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1277
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSyncedResolutionSwitchEnabled()Z

    move-result v6

    move-object v3, p1

    move v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;ZZZ)V

    .line 1278
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 1280
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 1281
    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->size()I

    move-result p1

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    .line 1285
    invoke-virtual {v0, p1}, Lcom/android/server/display/LogicalDisplay;->setEnabledLocked(Z)V

    .line 1288
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final displayEventToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    const/4 p0, 0x4

    if-eq p1, p0, :cond_9

    const/16 p0, 0x8

    if-eq p1, p0, :cond_8

    const/16 p0, 0x10

    if-eq p1, p0, :cond_7

    const/16 p0, 0x20

    if-eq p1, p0, :cond_6

    const/16 p0, 0x40

    if-eq p1, p0, :cond_5

    const/16 p0, 0x80

    if-eq p1, p0, :cond_4

    const/16 p0, 0x100

    if-eq p1, p0, :cond_3

    const/16 p0, 0x200

    if-eq p1, p0, :cond_2

    const/16 p0, 0x400

    if-eq p1, p0, :cond_1

    const/16 p0, 0x800

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1389
    :cond_0
    const-string p0, "committed_state_changed"

    return-object p0

    .line 1387
    :cond_1
    const-string/jumbo p0, "state_changed"

    return-object p0

    .line 1391
    :cond_2
    const-string/jumbo p0, "refresh_rate_changed"

    return-object p0

    .line 1385
    :cond_3
    const-string p0, "disconnected"

    return-object p0

    .line 1383
    :cond_4
    const-string p0, "connected"

    return-object p0

    .line 1381
    :cond_5
    const-string p0, "hdr_sdr_ratio_changed"

    return-object p0

    .line 1373
    :cond_6
    const-string/jumbo p0, "transition"

    return-object p0

    .line 1375
    :cond_7
    const-string p0, "framerate_override"

    return-object p0

    .line 1377
    :cond_8
    const-string/jumbo p0, "swapped"

    return-object p0

    .line 1379
    :cond_9
    const-string/jumbo p0, "removed"

    return-object p0

    .line 1393
    :cond_a
    const-string p0, "basic_changed"

    return-object p0

    .line 1371
    :cond_b
    const-string p0, "added"

    return-object p0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 8

    .line 450
    const-string v0, "LogicalDisplayMapper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    const-string v0, "---------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSingleDisplayDemoMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayout="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceStatesOnWhichToWakeUp="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceStatesOnWhichSelectiveSleep="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mInteractive="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBootCompleted="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingDeviceState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceStateToBeAppliedAfterBoot="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    .line 467
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 470
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logical Displays: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 472
    :goto_0
    const-string v3, ":"

    if-ge v2, p1, :cond_0

    .line 473
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 474
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 477
    invoke-virtual {v5, v0}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 478
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 479
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 483
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Groups: size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    if-ge v1, p1, :cond_1

    .line 486
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 487
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayGroup;

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Group "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 490
    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayGroup;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 491
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 492
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 496
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final finishStateTransitionLocked(Z)V
    .locals 5

    .line 705
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    sget-object v1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v0

    .line 713
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->shouldStayAwakeOnFold()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 716
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    if-nez v2, :cond_5

    if-eqz p1, :cond_3

    goto :goto_2

    .line 723
    :cond_3
    sget-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not yet ready to transition to state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with displays-off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mInteractive="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isReady="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogicalDisplayMapper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void

    .line 721
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    .line 722
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public forEachLocked(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 369
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forEachLocked(Ljava/util/function/Consumer;Z)V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 375
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 376
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_1

    .line 377
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(I)I
    .locals 4

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 391
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayGroup;

    .line 392
    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayGroup;

    return-object p0
.end method

.method public getDisplayIdsByGroupIdLocked()Landroid/util/SparseArray;
    .locals 4

    .line 360
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 361
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 363
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayIdsForGroupLocked(I)[I

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDisplayIdsForGroupLocked(I)[I
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 354
    new-array p0, p0, [I

    return-object p0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayGroup;->getIdsLocked()[I

    move-result-object p0

    return-object p0
.end method

.method public getDisplayIdsLocked(IZ)[I
    .locals 7

    .line 333
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 334
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 337
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 338
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_1

    .line 339
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 340
    invoke-virtual {v5, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 341
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v1, v4

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v4, v0, :cond_3

    .line 346
    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public getDisplayInfoForStateLocked(II)Landroid/view/DisplayInfo;
    .locals 5

    .line 418
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    const/4 v1, 0x0

    .line 419
    const-string v2, "LogicalDisplayMapper"

    if-nez v0, :cond_0

    .line 421
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot get layout for given state:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 425
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p1

    if-nez p1, :cond_1

    .line 428
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot get display for given layout:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {p1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 433
    const-string v3, "), is not available for the display state "

    if-nez v0, :cond_2

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The display device ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 435
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 434
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const/4 v4, 0x1

    .line 438
    invoke-virtual {p0, v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    if-nez v0, :cond_3

    .line 440
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The logical display associated with address ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 444
    :cond_3
    new-instance p0, Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 445
    iput p2, p0, Landroid/view/DisplayInfo;->displayId:I

    return-object p0
.end method

.method public getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;
    .locals 1

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LogicalDisplay;

    if-eqz p0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 1

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLocked(Lcom/android/server/display/DisplayDevice;Z)Lcom/android/server/display/LogicalDisplay;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 321
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 322
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 323
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 2

    .line 731
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 736
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->initializeDefaultDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    const/4 v1, 0x0

    .line 742
    invoke-interface {v0, v1}, Lcom/android/server/display/layout/DisplayIdProducer;->getId(Z)I

    move-result v0

    .line 741
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    .line 744
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 745
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void
.end method

.method public final handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 5

    .line 749
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    const/4 v1, 0x0

    .line 750
    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 754
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    .line 757
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-virtual {v2}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object p1

    iget-object v2, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 760
    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->removeDisplayLocked(I)V

    .line 763
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 764
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 765
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 769
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    .line 771
    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 773
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 774
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/layout/Layout;->createDefaultDisplayLocked(Landroid/view/DisplayAddress;Lcom/android/server/display/layout/DisplayIdProducer;)V

    .line 775
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final initializeDefaultDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    const/4 v1, 0x0

    .line 1336
    invoke-virtual {v0, v1}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 1340
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    .line 1341
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/layout/Layout;->createDefaultDisplayLocked(Landroid/view/DisplayAddress;Lcom/android/server/display/layout/DisplayIdProducer;)V

    return-void
.end method

.method public final synthetic lambda$setDeviceStateLocked$2()V
    .locals 4

    .line 563
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xc

    const-string/jumbo v3, "server.display:unfold"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$setDeviceStateLocked$3(I)V
    .locals 3

    .line 572
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 3

    .line 584
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, 0x1

    .line 585
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 586
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    sget-object v2, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->setDeviceStateLocked(Landroid/hardware/devicestate/DeviceState;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 589
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayDeviceChangedLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 2

    .line 283
    sget-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display device changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LogicalDisplayMapper"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 287
    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(I)V

    return-void
.end method

.method public onDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 2

    const/4 v0, 0x1

    .line 263
    const-string v1, "LogicalDisplayMapper"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return-void

    .line 272
    :cond_0
    sget-boolean p2, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 273
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display device removed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void

    .line 265
    :cond_2
    sget-boolean p2, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display device added: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method public onEarlyInteractivityChange(Z)V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 594
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    if-eq v1, p1, :cond_0

    .line 595
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    const/4 p1, 0x0

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 598
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTraversalRequested()V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {p0}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onTraversalRequested()V

    return-void
.end method

.method public onWindowManagerReady()V
    .locals 1

    .line 296
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    return-void
.end method

.method public final resetLayoutLocked(IIZ)V
    .locals 11

    .line 1129
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object p1

    .line 1130
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object p2

    .line 1132
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_e

    .line 1134
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1135
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v4

    .line 1136
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_a

    .line 1144
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 1148
    invoke-virtual {p1, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    if-eqz v5, :cond_2

    .line 1150
    invoke-virtual {p2, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v6

    :cond_2
    const/4 v5, 0x1

    if-nez v7, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    if-nez v6, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v1

    :goto_3
    if-eq v8, v9, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v1

    :goto_4
    if-eqz v7, :cond_7

    .line 1158
    invoke-virtual {v7}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    move v9, v1

    goto :goto_6

    :cond_7
    :goto_5
    move v9, v5

    :goto_6
    if-eqz v6, :cond_9

    .line 1159
    invoke-virtual {v6}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_7

    :cond_8
    move v10, v1

    goto :goto_8

    :cond_9
    :goto_7
    move v10, v5

    :goto_8
    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    .line 1162
    invoke-virtual {v7}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v6

    if-eq v7, v6, :cond_a

    move v6, v5

    goto :goto_9

    :cond_a
    move v6, v1

    .line 1172
    :goto_9
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v7

    if-nez v7, :cond_b

    if-ne v9, v10, :cond_b

    if-nez v6, :cond_b

    if-eqz v8, :cond_d

    .line 1178
    :cond_b
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isInTransitionLocked()Z

    move-result v6

    if-eq p3, v6, :cond_c

    .line 1179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set isInTransition on display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LogicalDisplayMapper"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_c
    invoke-virtual {v3, p3}, Lcom/android/server/display/LogicalDisplay;->setIsInTransitionLocked(Z)V

    .line 1186
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_d
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public final sendUpdatesForDisplaysLocked(I)V
    .locals 7

    .line 995
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    .line 996
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    goto :goto_3

    .line 1001
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 1002
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    .line 1003
    sget-boolean v4, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1004
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1005
    const-string/jumbo v4, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 1006
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->displayEventToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for display="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LogicalDisplayMapper"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne p1, v1, :cond_3

    .line 1011
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    .line 1013
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1016
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v4, v3, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    const/16 v3, 0x100

    if-ne p1, v3, :cond_5

    .line 1019
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final sendUpdatesForGroupsLocked(I)V
    .locals 3

    .line 1028
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1029
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 1034
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1035
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v2, v1, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onDisplayGroupEventLocked(II)V

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 1039
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 1041
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1043
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDeviceStateLocked(Landroid/hardware/devicestate/DeviceState;)V
    .locals 8

    .line 513
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    const-string v1, "Postponing transition to state: "

    const-string v2, "LogicalDisplayMapper"

    if-nez v0, :cond_1

    .line 516
    sget-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 518
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " until boot is completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    .line 529
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    const/4 v4, 0x1

    .line 528
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 530
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 531
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    .line 532
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, p1, v0, v3, v5}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v0

    .line 534
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v3

    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting Transition to state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", from state="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 538
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", interactive="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mBootCompleted="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", wakeDevice="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sleepDevice="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 546
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    return-void

    .line 550
    :cond_2
    sget-boolean p1, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 551
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    if-nez v0, :cond_4

    if-eqz v3, :cond_7

    :cond_4
    if-eqz v0, :cond_5

    .line 562
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/LogicalDisplayMapper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 569
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    invoke-virtual {p1}, Lcom/android/server/utils/FoldSettingProvider;->shouldSleepOnFold()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_0

    :cond_6
    const/4 p1, 0x2

    .line 571
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    new-instance v1, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/LogicalDisplayMapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 1

    .line 1399
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 1401
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Display is already "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string p2, "enabled"

    goto :goto_0

    :cond_0
    const-string p2, "disabled"

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1401
    const-string p1, "LogicalDisplayMapper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1405
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void
.end method

.method public setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 3

    .line 1293
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 1294
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1296
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    iget p0, v1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1298
    :goto_0
    const-string p0, "LogicalDisplayMapper"

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    .line 1299
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not creating a logical display for a secondary display because single display demo mode is enabled: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1299
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    .line 1304
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v1

    if-eq v1, p2, :cond_2

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetEnabled on display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setEnabledLocked(Z)V

    :cond_2
    return-void
.end method

.method public shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z
    .locals 1

    const/16 v0, 0xd

    .line 657
    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 658
    invoke-virtual {p2, p1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 659
    invoke-virtual {p2, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 662
    invoke-virtual {p0}, Lcom/android/server/utils/FoldSettingProvider;->shouldStayAwakeOnFold()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z
    .locals 2

    const/16 p0, 0xa

    .line 618
    filled-new-array {p0}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    filled-new-array {p0}, [I

    move-result-object p0

    .line 619
    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/16 p0, 0xe

    .line 625
    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 626
    invoke-virtual {p2, p1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 627
    invoke-virtual {p2, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final shouldStayAwakeOnFold()Z
    .locals 1

    .line 1363
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    invoke-virtual {v0}, Lcom/android/server/utils/FoldSettingProvider;->shouldStayAwakeOnFold()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 1364
    invoke-virtual {v0}, Lcom/android/server/utils/FoldSettingProvider;->shouldSelectiveStayAwakeOnFold()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    .line 1365
    invoke-virtual {p0}, Lcom/android/internal/foldables/FoldGracePeriodProvider;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;
    .locals 3

    .line 1351
    new-instance p0, Landroid/util/SparseBooleanArray;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 1352
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1353
    aget v1, p1, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final transitionToPendingStateLocked()V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 697
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    .line 696
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 698
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 699
    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 700
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 701
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void
.end method

.method public updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I
    .locals 3

    .line 976
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 980
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayListenerPerformanceImprovementsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    iget v2, p1, Landroid/view/DisplayInfo;->state:I

    if-eq v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x400

    .line 985
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isCommittedStateSeparateEventEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->committedState:I

    iget p1, p1, Landroid/view/DisplayInfo;->committedState:I

    if-eq p0, p1, :cond_2

    or-int/lit16 p0, v0, 0x800

    return p0

    :cond_2
    return v0
.end method

.method public updateLogicalDisplays()V
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 785
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 786
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateLogicalDisplaysLocked()V
    .locals 1

    const/4 v0, -0x1

    .line 790
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(I)V

    return-void
.end method

.method public final updateLogicalDisplaysLocked(I)V
    .locals 1

    const/4 v0, 0x0

    .line 794
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    return-void
.end method

.method public final updateLogicalDisplaysLocked(IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 812
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v7, 0x10

    if-ltz v2, :cond_12

    .line 813
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 814
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/LogicalDisplay;

    .line 815
    invoke-virtual {v0, v10}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 817
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->isDirtyLocked()Z

    move-result v11

    .line 818
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 819
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10, v12}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 821
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v13, v0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-virtual {v10, v12, v13}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 822
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v12

    .line 823
    iget-object v13, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    if-eqz v13, :cond_0

    move v14, v3

    goto :goto_1

    :cond_0
    move v14, v4

    .line 825
    :goto_1
    iget-object v15, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    .line 826
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v6

    .line 827
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 828
    invoke-virtual {v8, v9, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 829
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 830
    invoke-virtual {v4, v12, v3}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;Z)Z

    move-result v4

    .line 832
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v16

    if-nez v16, :cond_4

    .line 835
    invoke-virtual {v0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v4

    .line 834
    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 837
    invoke-virtual {v4, v10}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    :cond_1
    if-eqz v14, :cond_3

    .line 843
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v8, v8, 0x4

    move v5, v3

    goto :goto_2

    .line 848
    :cond_2
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->delete(I)V

    or-int/lit16 v8, v8, 0x100

    goto :goto_2

    .line 853
    :cond_3
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 855
    :goto_2
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_8

    :cond_4
    if-nez v14, :cond_5

    or-int/lit16 v4, v8, 0x80

    move v5, v3

    goto/16 :goto_7

    .line 864
    :cond_5
    iget-object v14, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v14, v14, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v3, v12, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v14, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    or-int/lit8 v4, v8, 0x8

    goto/16 :goto_7

    :cond_6
    if-eq v15, v6, :cond_8

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x4

    :goto_3
    or-int v4, v8, v6

    goto :goto_7

    :cond_8
    if-eqz v11, :cond_a

    if-ne v1, v7, :cond_9

    :goto_4
    or-int/lit8 v4, v8, 0x40

    goto :goto_7

    :cond_9
    or-int/lit16 v4, v8, 0x602

    goto :goto_7

    :cond_a
    if-eqz v4, :cond_f

    .line 881
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 882
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v3

    invoke-virtual {v12}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v6

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    if-ne v13, v3, :cond_c

    or-int/lit8 v4, v8, 0x20

    goto :goto_7

    .line 899
    :cond_c
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getPendingFrameRateOverrideUids()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    or-int/lit8 v4, v8, 0x10

    goto :goto_7

    .line 907
    :cond_d
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10, v3}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 908
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;Z)Z

    move-result v3

    if-nez v3, :cond_e

    or-int/lit8 v8, v8, 0x2

    .line 912
    :cond_e
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 913
    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I

    move-result v3

    :goto_5
    or-int v4, v8, v3

    goto :goto_7

    :cond_f
    :goto_6
    if-ne v1, v7, :cond_10

    goto :goto_4

    :cond_10
    if-nez v4, :cond_11

    or-int/lit8 v8, v8, 0x2

    .line 892
    :cond_11
    invoke-virtual {v0, v12}, Lcom/android/server/display/LogicalDisplayMapper;->updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I

    move-result v3

    goto :goto_5

    .line 915
    :goto_7
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 916
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_8
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 923
    :cond_12
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_9
    const/4 v3, 0x3

    if-ltz v2, :cond_18

    .line 924
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 925
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayGroup;

    .line 926
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_13

    const/4 v8, 0x1

    goto :goto_a

    :cond_13
    const/4 v8, 0x0

    .line 927
    :goto_a
    invoke-virtual {v6}, Lcom/android/server/display/DisplayGroup;->getChangeCountLocked()I

    move-result v9

    .line 929
    invoke-virtual {v6}, Lcom/android/server/display/DisplayGroup;->isEmptyLocked()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 930
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    if-eqz v8, :cond_17

    .line 932
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_c

    :cond_14
    if-nez v8, :cond_15

    .line 936
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_b

    .line 937
    :cond_15
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-eq v3, v9, :cond_16

    .line 938
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 940
    :cond_16
    :goto_b
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    :cond_17
    :goto_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_18
    const/16 v2, 0x20

    .line 945
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v6, 0x1

    .line 946
    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    const/4 v2, 0x4

    .line 947
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x100

    .line 948
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v4, 0x2

    .line 949
    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x200

    .line 950
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x400

    .line 951
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x800

    .line 952
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 953
    invoke-virtual {v0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x8

    .line 954
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x80

    .line 955
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v6, 0x1

    .line 956
    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x40

    .line 957
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v4, 0x2

    .line 958
    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 959
    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 961
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 962
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    if-eqz v5, :cond_1a

    if-eqz p2, :cond_19

    .line 966
    const-string v0, "LogicalDisplayMapper"

    const-string v1, "Trying to loop a third time"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    const/4 v6, 0x1

    .line 969
    invoke-virtual {v0, v1, v6}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    :cond_1a
    return-void
.end method
