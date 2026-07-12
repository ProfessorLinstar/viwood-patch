.class public Lcom/android/server/pm/PackageInstallerSession$10;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "PackageInstallerSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    .line 4940
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageLoadingProgressChanged(F)V
    .locals 2

    .line 4943
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmProgressLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4944
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmIncrementalProgress(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 4945
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mcomputeProgressLocked(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4946
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
