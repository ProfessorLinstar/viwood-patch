.class public abstract Lcom/android/server/pm/ApexManager;
.super Ljava/lang/Object;
.source "ApexManager.java"


# static fields
.field public static final sApexManagerSingleton:Landroid/util/Singleton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/android/server/pm/ApexManager$1;

    invoke-direct {v0}, Lcom/android/server/pm/ApexManager$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ApexManager;->sApexManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/ApexManager;
    .locals 1

    .line 93
    sget-object v0, Lcom/android/server/pm/ApexManager;->sApexManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ApexManager;

    return-object v0
.end method


# virtual methods
.method public abstract abortStagedSession(I)Z
.end method

.method public abstract destroyCeSnapshots(II)Z
.end method

.method public abstract destroyCeSnapshotsNotSpecified(I[I)Z
.end method

.method public abstract destroyDeSnapshots(I)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getActiveApexInfos()Ljava/util/List;
.end method

.method public abstract getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAllApexInfos()[Landroid/apex/ApexInfo;
.end method

.method public abstract getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApexSystemServices()Ljava/util/List;
.end method

.method public abstract getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBackingApexFile(Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract getSessions()Landroid/util/SparseArray;
.end method

.method public abstract getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;
.end method

.method public abstract getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
.end method

.method public abstract installPackage(Ljava/io/File;Z)Landroid/apex/ApexInfo;
.end method

.method public abstract isApexSupported()Z
.end method

.method public abstract markBootCompleted()V
.end method

.method public abstract markStagedSessionReady(I)V
.end method

.method public abstract markStagedSessionSuccessful(I)V
.end method

.method public abstract notifyScanResult(Ljava/util/List;)V
.end method

.method public abstract registerApkInApex(Lcom/android/server/pm/pkg/AndroidPackage;)V
.end method

.method public abstract reportErrorWithApkInApex(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
.end method

.method public abstract restoreCeData(IILjava/lang/String;)Z
.end method

.method public abstract revertActiveSessions()Z
.end method

.method public abstract snapshotCeData(IILjava/lang/String;)Z
.end method

.method public abstract submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
.end method

.method public abstract uninstallApex(Ljava/lang/String;)Z
.end method
