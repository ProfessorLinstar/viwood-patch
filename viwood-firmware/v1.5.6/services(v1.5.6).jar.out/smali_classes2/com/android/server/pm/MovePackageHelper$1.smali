.class public Lcom/android/server/pm/MovePackageHelper$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "MovePackageHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/MovePackageHelper;

.field public final synthetic val$freezer:Lcom/android/server/pm/PackageFreezer;

.field public final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$isCurrentLocationExternal:Z

.field public final synthetic val$moveId:I

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    iput-object p3, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput p4, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    iput-object p5, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$packageName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$isCurrentLocationExternal:Z

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 259
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz p1, :cond_0

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Install result for move: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 260
    const-string p3, "PackageManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 265
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 267
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    .line 279
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    const/4 p2, -0x6

    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    return-void

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    return-void

    .line 270
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p1, p1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    const/16 p3, -0x64

    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 272
    iget-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$packageName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$isCurrentLocationExternal:Z

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/MovePackageHelper;->-$$Nest$mlogAppMovedStorage(Lcom/android/server/pm/MovePackageHelper;Ljava/lang/String;Z)V

    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 253
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
