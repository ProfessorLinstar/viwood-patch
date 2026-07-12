.class public Lcom/android/server/pm/local/PackageManagerLocalImpl;
.super Ljava/lang/Object;
.source "PackageManagerLocalImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal;


# instance fields
.field public final mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public static withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;Lcom/android/server/pm/pkg/PackageState;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
    .locals 2

    .line 85
    check-cast p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 85
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;Lcom/android/server/pm/pkg/PackageState;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V
    .locals 0

    .line 100
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 103
    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureVerifier;->addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V

    return-void

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This test API is only available on debuggable builds"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearOverrideSigningDetails()V
    .locals 1

    .line 116
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 119
    invoke-static {}, Landroid/util/apk/ApkSignatureVerifier;->clearOverrideSigningDetails()V

    return-void

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "This test API is only available on debuggable builds"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reconcileSdkData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;I)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/pm/PackageManagerService;->reconcileSdkData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;I)V

    return-void
.end method

.method public removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V
    .locals 0

    .line 108
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 111
    invoke-static {p1}, Landroid/util/apk/ApkSignatureVerifier;->removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V

    return-void

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This test API is only available on debuggable builds"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot()Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object p0

    return-object p0
.end method

.method public withFilteredSnapshot()Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
    .locals 2

    .line 69
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object p0

    return-object p0
.end method

.method public withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;Lcom/android/server/pm/pkg/PackageState;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object p0

    return-object p0
.end method

.method public final withFilteredSnapshot(ILandroid/os/UserHandle;Lcom/android/server/pm/pkg/PackageState;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
    .locals 7

    .line 92
    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V

    return-object v0
.end method

.method public bridge synthetic withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withUnfilteredSnapshot()Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    move-result-object p0

    return-object p0
.end method

.method public withUnfilteredSnapshot()Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;
    .locals 2

    .line 63
    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V

    return-object v0
.end method
