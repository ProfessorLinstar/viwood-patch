.class public abstract Lcom/android/server/pm/parsing/PackageInfoUtils;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# static fields
.field public static final SYSTEM_DATA_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    return-void
.end method

.method public static appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 976
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result p1

    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result p1

    or-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 3

    .line 938
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v0

    .line 939
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHardwareAccelerated()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 940
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupAllowed()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 941
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isKillAfterRestoreAllowed()Z

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 942
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRestoreAnyVersion()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 943
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFullBackupOnly()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 944
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 945
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 946
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result v1

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 947
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 948
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTaskReparentingAllowed()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 949
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataAllowed()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 950
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeHeap()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 951
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCleartextTrafficAllowed()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 952
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRtlSupported()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 953
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTestOnly()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 954
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 955
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 956
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isGame()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 957
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    move-result v1

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 958
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 959
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    move-result v1

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 960
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 961
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 962
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 963
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 964
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFactoryTest()Z

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result p0

    or-int/2addr p0, v0

    .line 966
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public static appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 0

    .line 0
    return p0
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 3

    .line 986
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v0

    .line 987
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResourceOverlay()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 988
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 989
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHasDomainUrls()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 990
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isProfileableByShell()Z

    move-result v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 991
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupInForeground()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 992
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 993
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 994
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 995
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPartiallyDirectBootAware()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 996
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataOnFailedRestoreAllowed()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 997
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowAudioPlaybackCapture()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 998
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 999
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1000
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUserDataFragile()Z

    move-result v1

    const/high16 v2, 0x1000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1001
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSaveStateDisallowed()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1002
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1003
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowNativeHeapPointerTagging()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1004
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystemExt(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1005
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1006
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1007
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isVendor(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1008
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isProduct(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1009
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOdm(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1010
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 1012
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1014
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_0
    or-int/lit16 v0, v0, 0x800

    .line 1021
    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public static appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 1055
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result p1

    or-int/2addr p0, p1

    :cond_1
    return p0
.end method

.method public static assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .locals 1

    .line 887
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 888
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 889
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 890
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 891
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 892
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    return-void
.end method

.method public static assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .locals 0

    .line 909
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 911
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    move-result-object p1

    .line 913
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 914
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/content/pm/ComponentInfo;->icon:I

    return-void
.end method

.method public static assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .locals 1

    .line 897
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getNonLocalizedLabel(Lcom/android/internal/pm/pkg/component/ParsedComponent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 898
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 899
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 900
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 901
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 902
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 903
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .locals 0

    .line 920
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 922
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    move-result-object p1

    .line 924
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 925
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    return-void
.end method

.method public static checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 866
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v0, p3, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v0, :cond_0

    return v1

    .line 873
    :cond_0
    invoke-static {p2, p0, p1}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    .line 874
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->matchUninstalledOrHidden(J)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z
    .locals 4

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 851
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 852
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 858
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p0

    if-nez p0, :cond_2

    .line 859
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p3, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->matchUninstalledOrHidden(J)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static flag(ZI)I
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static generate(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 113
    invoke-static/range {p0 .. p12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    .line 537
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 550
    :cond_0
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-nez p5, :cond_2

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    .line 554
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    goto :goto_0

    :cond_2
    move-wide v3, p2

    move v6, p6

    move-object v7, p7

    :goto_0
    if-nez p5, :cond_3

    return-object v0

    .line 562
    :cond_3
    new-instance p0, Landroid/content/pm/ActivityInfo;

    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 563
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 564
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 565
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 566
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 567
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 568
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 569
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 570
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 571
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 572
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 573
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 574
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 575
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 576
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 577
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 578
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPersistableMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 579
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 580
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 581
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 582
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 583
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 584
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 585
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 586
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRotationAnimation()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 587
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getColorMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 588
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 589
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getAttributionTags()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    const-wide/16 p6, 0x0

    cmp-long p2, p2, p6

    if-eqz p2, :cond_5

    .line 591
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    .line 593
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_2

    .line 595
    :cond_5
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 597
    :goto_2
    iput-object p5, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 598
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequiredDisplayCategory()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 599
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequireContentUriPermissionFromCaller()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    .line 600
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 601
    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 462
    :cond_0
    invoke-static {p0, p5, p3, p1, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 463
    invoke-static {p5, p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 468
    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 470
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    .line 472
    invoke-static {v1, p0, p4, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V

    .line 475
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    .line 476
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result p1

    iput-boolean p1, v1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 477
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object p1

    .line 478
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object p0

    .line 479
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    move p4, p3

    .line 480
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p4, v2, :cond_2

    .line 481
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->getInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 483
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, v0

    goto :goto_1

    .line 484
    :cond_3
    new-array p0, p3, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_1
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 488
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    move-object p2, v0

    :cond_4
    iput-object p2, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 489
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    .line 513
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_5

    .line 514
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getCategoryOverride()I

    move-result p0

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 517
    :cond_5
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 518
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 519
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 521
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p1

    or-int/2addr p0, p1

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 522
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p1

    or-int/2addr p0, p1

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 523
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p1

    or-int/2addr p0, p1

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    return-object v1

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 1

    if-eqz p0, :cond_1

    .line 609
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 615
    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 616
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    if-eqz p0, :cond_2

    .line 437
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(JLcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 441
    :cond_0
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 442
    invoke-virtual {v0, p4}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 443
    sget-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz p0, :cond_1

    iget p0, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    if-eqz p0, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    :goto_0
    iput p0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 445
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 727
    :cond_0
    invoke-static {p1, p6, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 731
    :cond_1
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 732
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 733
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 734
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isHandleProfiling()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 735
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isFunctionalTest()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 737
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 738
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 739
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    .line 740
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 741
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3

    move-object v2, v0

    goto :goto_1

    .line 742
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 743
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v0

    goto :goto_2

    .line 744
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    :goto_2
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 746
    invoke-static {v1, p1, p5, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V

    .line 748
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 749
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 750
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 751
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 753
    invoke-static {v1, p0, p6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    const-wide/16 p4, 0x80

    and-long p1, p2, p4

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_5

    .line 756
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object v1

    .line 758
    :cond_5
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 760
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, p0

    :goto_3
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 800
    :cond_0
    new-instance v1, Landroid/content/pm/PermissionGroupInfo;

    .line 801
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getRequestDetailRes()I

    move-result v2

    .line 802
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestRes()I

    move-result v3

    .line 803
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestDetailRes()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PermissionGroupInfo;-><init>(III)V

    .line 806
    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 807
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 808
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPriority()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 809
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 810
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    .line 813
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object v1

    .line 815
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 817
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 774
    :cond_0
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    .line 776
    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 778
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 779
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 780
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 781
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 782
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 783
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getKnownCerts()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    .line 786
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object v1

    .line 788
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 790
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 830
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    .line 831
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2, p1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 832
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 833
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 834
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ProcessInfo;

    .line 835
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/util/ArraySet;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 836
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    move-result v5

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    move-result v6

    .line 837
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v7

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->isUseEmbeddedDex()Z

    move-result v8

    invoke-direct/range {v2 .. v8}, Landroid/content/pm/ProcessInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;IIIZ)V

    .line 834
    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 678
    :cond_0
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-eqz p5, :cond_3

    .line 681
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v3, p2

    move v6, p6

    move-object v7, p7

    goto :goto_2

    .line 682
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfo\'s package name is different. Expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_4

    .line 683
    const-string p5, "(null AppInfo)"

    goto :goto_1

    .line 684
    :cond_4
    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 682
    const-string v1, "PackageParsing"

    invoke-static {v1, p5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    .line 685
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    :goto_2
    if-nez p5, :cond_5

    return-object v0

    .line 692
    :cond_5
    new-instance p0, Landroid/content/pm/ProviderInfo;

    invoke-direct {p0}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 693
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 694
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 695
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 696
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 697
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 698
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 699
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 700
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 701
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 702
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 703
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 704
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    new-array p4, p3, [Landroid/os/PatternMatcher;

    invoke-interface {p2, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/PatternMatcher;

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 705
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object p2

    new-array p3, p3, [Landroid/content/pm/PathPermission;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/PathPermission;

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const-wide/16 p2, 0x800

    and-long/2addr p2, v3

    const-wide/16 p6, 0x0

    cmp-long p2, p2, p6

    if-nez p2, :cond_6

    .line 707
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :cond_6
    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    cmp-long p2, p2, p6

    if-eqz p2, :cond_8

    .line 710
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    .line 712
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, p2

    :goto_3
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 714
    :cond_8
    iput-object p5, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 715
    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    .line 627
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 640
    :cond_0
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-nez p5, :cond_2

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    .line 644
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    goto :goto_0

    :cond_2
    move-wide v3, p2

    move v6, p6

    move-object v7, p7

    :goto_0
    if-nez p5, :cond_3

    return-object v0

    .line 652
    :cond_3
    new-instance p0, Landroid/content/pm/ServiceInfo;

    invoke-direct {p0}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 653
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 654
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 655
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 656
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 657
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getForegroundServiceType()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 658
    iput-object p5, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_5

    .line 660
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    .line 662
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 664
    :cond_5
    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateWithComponents(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .locals 21

    move-object/from16 v6, p9

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p10

    move/from16 v4, p11

    move-object/from16 v5, p12

    .line 125
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-wide v8, v1

    const/4 v0, 0x0

    if-nez v7, :cond_0

    return-object v0

    .line 131
    :cond_0
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 132
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 133
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    move-object/from16 v2, p0

    .line 134
    invoke-static {v2, v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->fillVersionCodes(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfo;)V

    .line 135
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 136
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 137
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 138
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 139
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserLabelResourceId()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 140
    iput-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 141
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstallLocation()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 142
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    .line 144
    :cond_1
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequiredForAllUsers()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 146
    :cond_2
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRestrictedAccountType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 147
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequiredAccountType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 148
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 149
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 150
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 151
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayPriority()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 152
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isOverlayIsStatic()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 153
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersion()I

    move-result v3

    iput v3, v1, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 154
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersionCodeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    move-wide/from16 v3, p4

    .line 155
    iput-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v3, p6

    .line 156
    iput-wide v3, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 157
    invoke-interface/range {p10 .. p10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 158
    invoke-interface/range {p10 .. p10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageInfo;->setArchiveTimeMillis(J)V

    :cond_3
    const-wide/16 v3, 0x100

    and-long/2addr v3, v8

    const-wide/16 v18, 0x0

    cmp-long v3, v3, v18

    if-eqz v3, :cond_4

    move-object/from16 v3, p1

    .line 161
    iput-object v3, v1, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_4
    const-wide/16 v3, 0x4000

    and-long/2addr v3, v8

    cmp-long v3, v3, v18

    if-eqz v3, :cond_7

    .line 164
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 166
    new-array v3, v3, [Landroid/content/pm/ConfigurationInfo;

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 167
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 169
    :cond_5
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 171
    new-array v3, v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 172
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 174
    :cond_6
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 176
    new-array v3, v3, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 177
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_7
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v8

    cmp-long v3, v3, v18

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    .line 181
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v3

    if-lez v3, :cond_9

    .line 183
    new-array v5, v3, [Landroid/content/pm/PermissionInfo;

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_9

    .line 185
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 186
    invoke-static {v10, v8, v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v11

    .line 187
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, p8

    invoke-interface {v12, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 188
    iget v10, v11, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v13, 0x40000000    # 2.0f

    or-int/2addr v10, v13

    iput v10, v11, Landroid/content/pm/PermissionInfo;->flags:I

    .line 190
    :cond_8
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    aput-object v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    :cond_9
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissions()Ljava/util/List;

    move-result-object v3

    .line 194
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 196
    new-array v10, v5, [Ljava/lang/String;

    iput-object v10, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 197
    new-array v10, v5, [I

    iput-object v10, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move v10, v4

    :goto_1
    if-ge v10, v5, :cond_d

    .line 199
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 200
    iget-object v12, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    .line 202
    iget-object v12, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v13, v12, v10

    or-int/lit8 v13, v13, 0x1

    aput v13, v12, v10

    if-eqz v6, :cond_a

    .line 205
    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 206
    iget-object v12, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v13, v12, v10

    or-int/lit8 v13, v13, 0x2

    aput v13, v12, v10

    .line 209
    :cond_a
    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v11

    const/high16 v12, 0x10000

    and-int/2addr v11, v12

    if-eqz v11, :cond_b

    .line 211
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v13, v11, v10

    or-int/2addr v12, v13

    aput v12, v11, v10

    .line 214
    :cond_b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v12, v12, v10

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 215
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v12, v11, v10

    or-int/lit8 v12, v12, 0x4

    aput v12, v11, v10

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_d
    const-wide v5, 0x80000000L

    and-long/2addr v5, v8

    cmp-long v3, v5, v18

    if-eqz v3, :cond_11

    .line 222
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v3

    if-lez v3, :cond_f

    .line 224
    new-array v5, v3, [Landroid/content/pm/Attribution;

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_f

    .line 226
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    if-eqz v6, :cond_e

    .line 228
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    new-instance v11, Landroid/content/pm/Attribution;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v12

    .line 229
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getLabel()I

    move-result v6

    invoke-direct {v11, v12, v6}, Landroid/content/pm/Attribution;-><init>(Ljava/lang/String;I)V

    aput-object v11, v10, v5

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 233
    :cond_f
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isAttributionsUserVisible()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 234
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_3

    .line 237
    :cond_10
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v5, v5, -0x5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_3

    .line 241
    :cond_11
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v5, v5, -0x5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 245
    :goto_3
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    .line 246
    invoke-static {v3, v8, v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;

    move-result-object v5

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-wide/32 v5, 0x8000000

    and-long/2addr v5, v8

    cmp-long v5, v5, v18

    if-eqz v5, :cond_13

    .line 250
    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v3, v5, :cond_12

    .line 252
    new-instance v5, Landroid/content/pm/SigningInfo;

    invoke-direct {v5, v3}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v5, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_4

    .line 254
    :cond_12
    iput-object v0, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 258
    :cond_13
    :goto_4
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 259
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isCoreApp()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 260
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 262
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v3

    if-nez v3, :cond_14

    .line 264
    iput-object v0, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 265
    iput v4, v1, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    :cond_14
    const-wide/16 v5, 0x1

    and-long/2addr v5, v8

    cmp-long v0, v5, v18

    if-eqz v0, :cond_18

    .line 269
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    const-wide v5, 0x200000000L

    or-long v16, v8, v5

    .line 275
    new-array v3, v0, [Landroid/content/pm/ActivityInfo;

    move v5, v4

    move v6, v5

    :goto_5
    if-ge v5, v0, :cond_17

    .line 277
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v20, v10

    check-cast v20, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 278
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v12

    .line 279
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    move-result v13

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v14

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p10

    .line 278
    invoke-static/range {v10 .. v17}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 280
    sget-object v10, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 281
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v11

    .line 280
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_15
    move v13, v0

    move-object v12, v1

    move-object v14, v3

    move v15, v5

    move v11, v6

    move-wide/from16 v2, v16

    move-object/from16 v16, v7

    goto :goto_6

    :cond_16
    add-int/lit8 v10, v6, 0x1

    move-object/from16 v4, p10

    move v13, v0

    move-object v12, v1

    move-object v0, v2

    move-object v14, v3

    move v15, v5

    move v11, v6

    move-object v5, v7

    move-wide/from16 v2, v16

    move-object/from16 v1, v20

    move/from16 v6, p11

    move-object/from16 v7, p12

    .line 284
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    move-object/from16 v16, v5

    aput-object v1, v14, v11

    move v6, v10

    goto :goto_7

    :goto_6
    move v6, v11

    :goto_7
    add-int/lit8 v5, v15, 0x1

    move-object v1, v12

    move v0, v13

    move-object/from16 v7, v16

    const/4 v4, 0x0

    move-wide/from16 v16, v2

    move-object v3, v14

    move-object/from16 v2, p0

    goto :goto_5

    :cond_17
    move-object v12, v1

    move-object v14, v3

    move v11, v6

    move-object/from16 v16, v7

    .line 288
    invoke-static {v14, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_8

    :cond_18
    move-object v12, v1

    move-object/from16 v16, v7

    :goto_8
    const-wide/16 v0, 0x2

    and-long/2addr v0, v8

    cmp-long v0, v0, v18

    if-eqz v0, :cond_1b

    .line 292
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1b

    .line 295
    new-array v11, v10, [Landroid/content/pm/ActivityInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_9
    if-ge v13, v10, :cond_1a

    .line 297
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 298
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    .line 299
    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    move-result v3

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v4

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p10

    move-wide v6, v8

    .line 298
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_19

    add-int/lit8 v8, v14, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    move-object v1, v15

    move-object/from16 v5, v16

    .line 300
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    aput-object v1, v11, v14

    move v14, v8

    :cond_19
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v8, p2

    goto :goto_9

    .line 304
    :cond_1a
    invoke-static {v11, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_1b
    const-wide/16 v0, 0x4

    and-long v0, p2, v0

    cmp-long v0, v0, v18

    if-eqz v0, :cond_1e

    .line 308
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1e

    .line 311
    new-array v9, v8, [Landroid/content/pm/ServiceInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_a
    if-ge v10, v8, :cond_1d

    .line 313
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 314
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    .line 315
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedService;->isEnabled()Z

    move-result v3

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedService;->isDirectBootAware()Z

    move-result v4

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v6, p2

    move-object/from16 v0, p10

    .line 314
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1c

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    move-object v1, v13

    move-object/from16 v5, v16

    .line 316
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    aput-object v1, v9, v11

    move v11, v14

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 320
    :cond_1d
    invoke-static {v9, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ServiceInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_1e
    const-wide/16 v0, 0x8

    and-long v0, p2, v0

    cmp-long v0, v0, v18

    if-eqz v0, :cond_21

    .line 324
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_21

    .line 327
    new-array v9, v8, [Landroid/content/pm/ProviderInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_b
    if-ge v10, v8, :cond_20

    .line 329
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 330
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 331
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    .line 332
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isEnabled()Z

    move-result v3

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isDirectBootAware()Z

    move-result v4

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v6, p2

    move-object/from16 v0, p10

    .line 331
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1f

    add-int/lit8 v14, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    move-object v1, v13

    move-object/from16 v5, v16

    .line 333
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    aput-object v1, v9, v11

    move v11, v14

    goto :goto_c

    :cond_1f
    move-object/from16 v5, v16

    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v16, v5

    goto :goto_b

    .line 337
    :cond_20
    invoke-static {v9, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_21
    const-wide/16 v0, 0x10

    and-long v0, p2, v0

    cmp-long v0, v0, v18

    if-eqz v0, :cond_22

    .line 341
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_22

    .line 343
    new-array v0, v7, [Landroid/content/pm/InstrumentationInfo;

    iput-object v0, v12, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v7, :cond_22

    .line 345
    iget-object v9, v12, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 346
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p10

    move/from16 v5, p11

    move-object/from16 v6, p12

    .line 345
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    aput-object v0, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_22
    return-object v12
.end method

.method public static getDataDir(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/io/File;
    .locals 2

    .line 1165
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 1169
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1170
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1176
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1178
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 1179
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1178
    invoke-static {v0, p1, p0}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 1181
    :cond_2
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 1182
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1181
    invoke-static {v0, p1, p0}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;
    .locals 2

    const-wide/16 v0, 0x40

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 365
    new-array p1, p1, [Landroid/content/pm/Signature;

    .line 366
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p0

    aget-object p0, p0, v0

    aput-object p0, p1, v0

    return-object p1

    .line 368
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 370
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p1

    array-length p1, p1

    .line 371
    new-array p2, p1, [Landroid/content/pm/Signature;

    .line 372
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object p2
.end method

.method public static initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V
    .locals 4

    .line 1063
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 1064
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1067
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    sget-object p1, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void

    .line 1072
    :cond_0
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p1, 0x0

    .line 1075
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 1081
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1083
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1084
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_0

    .line 1087
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 1088
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 1089
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1090
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p3, -0x2

    add-int/lit8 p3, p3, -0x1

    .line 1091
    invoke-virtual {v2, v3, p3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1092
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1094
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, p3, -0x2

    add-int/lit8 p3, p3, -0x1

    .line 1097
    invoke-virtual {v2, v0, p3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1098
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1102
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1104
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void

    .line 1106
    :cond_3
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void
.end method

.method public static initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/pkg/PackageUserStateInternal;)V
    .locals 4

    .line 1114
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 1115
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1116
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1117
    sget-object p1, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void

    .line 1121
    :cond_0
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p1, 0x0

    .line 1124
    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 1130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1131
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1133
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_0

    .line 1136
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 1137
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 1138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1139
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p3, -0x2

    add-int/lit8 p3, p3, -0x1

    .line 1140
    invoke-virtual {v2, v3, p3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1141
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 1143
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1145
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, p3, -0x2

    add-int/lit8 p3, p3, -0x1

    .line 1146
    invoke-virtual {v2, v0, p3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1147
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 1151
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1153
    iget-object p1, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void

    .line 1155
    :cond_3
    iget-object p1, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void
.end method

.method public static matchUninstalledOrHidden(J)Z
    .locals 2

    .line 0
    const-wide v0, 0x120402000L

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;)V
    .locals 9

    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 382
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_0
    const-wide/16 v4, 0x400

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 385
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 386
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 390
    :cond_1
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_2

    .line 391
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 394
    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v4

    const/high16 v5, 0x200000

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v4

    .line 395
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    const/high16 v6, 0x800000

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    .line 396
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 397
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v4

    .line 398
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v5

    const/high16 v6, 0x10000

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    .line 399
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v5

    or-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 400
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 401
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v4

    const/16 v5, 0x40

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v4

    or-int/2addr v0, v4

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 402
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x0

    if-ne v0, v6, :cond_3

    .line 403
    iput-boolean v6, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_1

    .line 404
    :cond_3
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    const-wide/32 v7, 0x8000

    and-long/2addr p1, v7

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v6, v4

    .line 406
    :goto_0
    iput-boolean v6, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_1

    .line 407
    :cond_5
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    .line 408
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    .line 410
    :cond_6
    iput-boolean v4, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 412
    :cond_7
    :goto_1
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p1

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 413
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    .line 414
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 416
    :cond_8
    invoke-static {p3}, Lcom/android/server/pm/pkg/SELinuxUtil;->getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 417
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 419
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 422
    :cond_9
    invoke-static {p3}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz p1, :cond_a

    .line 424
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 426
    :cond_a
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p1

    if-nez p1, :cond_b

    .line 429
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :cond_b
    return-void
.end method
