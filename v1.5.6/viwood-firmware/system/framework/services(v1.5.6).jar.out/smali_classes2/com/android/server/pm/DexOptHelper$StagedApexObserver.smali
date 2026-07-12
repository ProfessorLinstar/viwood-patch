.class public Lcom/android/server/pm/DexOptHelper$StagedApexObserver;
.super Landroid/content/pm/IStagedApexObserver$Stub;
.source "DexOptHelper.java"


# instance fields
.field public final mArtManager:Lcom/android/server/art/ArtManagerLocal;


# direct methods
.method public static synthetic $r8$lambda$55crVKefZOQZZBXm7sxbxA0uhOs(I)[Ljava/lang/String;
    .locals 0

    .line 1019
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$rIDkxthGd_RrWXNoIn67o_0lSDo(Landroid/content/pm/StagedApexInfo;)Ljava/lang/String;
    .locals 0

    .line 1019
    iget-object p0, p0, Landroid/content/pm/StagedApexInfo;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/art/ArtManagerLocal;)V
    .locals 0

    .line 1012
    invoke-direct {p0}, Landroid/content/pm/IStagedApexObserver$Stub;-><init>()V

    .line 1013
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    return-void
.end method

.method public static registerForStagedApexUpdates(Lcom/android/server/art/ArtManagerLocal;)V
    .locals 3

    .line 998
    const-string/jumbo v0, "package_native"

    .line 999
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 998
    invoke-static {v0}, Landroid/content/pm/IPackageManagerNative$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;

    move-result-object v0

    .line 1000
    const-string v1, "PackageManager"

    if-nez v0, :cond_0

    .line 1001
    const-string p0, "No IPackageManagerNative"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1006
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;

    invoke-direct {v2, p0}, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;-><init>(Lcom/android/server/art/ArtManagerLocal;)V

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManagerNative;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1008
    const-string v0, "Failed to register staged apex observer"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    .locals 1

    .line 1018
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    iget-object p1, p1, Landroid/content/pm/ApexStagedEvent;->stagedApexInfos:[Landroid/content/pm/StagedApexInfo;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/pm/DexOptHelper$StagedApexObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/DexOptHelper$StagedApexObserver$$ExternalSyntheticLambda0;-><init>()V

    .line 1019
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/pm/DexOptHelper$StagedApexObserver$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/DexOptHelper$StagedApexObserver$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/server/art/ArtManagerLocal;->onApexStaged([Ljava/lang/String;)V

    return-void
.end method
