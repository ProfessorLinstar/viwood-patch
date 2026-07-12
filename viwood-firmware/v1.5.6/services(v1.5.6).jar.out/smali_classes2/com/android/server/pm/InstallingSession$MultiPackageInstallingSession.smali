.class public Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;
.super Ljava/lang/Object;
.source "InstallingSession.java"


# instance fields
.field public final mChildInstallingSessions:Ljava/util/List;

.field public final mCurrentInstallRequests:Ljava/util/Set;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mUser:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/server/pm/InstallingSession;


# direct methods
.method public static synthetic $r8$lambda$FG4z4NCeCPsiEmF_i1M46hmAqCo(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->lambda$tryProcessInstallRequest$0(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallingSession;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->this$0:Lcom/android/server/pm/InstallingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 653
    iput-object p4, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 654
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mUser:Landroid/os/UserHandle;

    .line 655
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    const/4 p1, 0x0

    .line 656
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 657
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallingSession;

    .line 658
    iput-object p0, p2, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 660
    :cond_0
    new-instance p1, Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    return-void

    .line 650
    :cond_1
    const-string p0, "No child sessions found!"

    const/16 p1, -0x14

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final synthetic lambda$tryProcessInstallRequest$0(ILjava/util/List;)V
    .locals 1

    .line 706
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->this$0:Lcom/android/server/pm/InstallingSession;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0, p2}, Lcom/android/server/pm/InstallingSession;->-$$Nest$mprocessInstallRequests(Lcom/android/server/pm/InstallingSession;ZLjava/util/List;)V

    return-void
.end method

.method public start()V
    .locals 8

    .line 664
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    const-string/jumbo v0, "queueInstall"

    .line 666
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 665
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 667
    const-string/jumbo v0, "start"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 670
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_1

    .line 673
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/InstallingSession;

    .line 674
    new-instance v7, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v7, v6}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallingSession;)V

    .line 675
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-static {v6, v7}, Lcom/android/server/pm/InstallingSession;->-$$Nest$mhandleStartCopy(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v4, v0, :cond_2

    .line 679
    iget-object v5, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstallingSession;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/InstallRequest;

    invoke-static {v5, v6}, Lcom/android/server/pm/InstallingSession;->-$$Nest$mhandleReturnCode(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 681
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPackageInstallingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    .line 713
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tryProcessInstallRequest(Lcom/android/server/pm/InstallRequest;)V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 691
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 692
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    return-void

    .line 694
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 695
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v1

    .line 699
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    .line 700
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 702
    invoke-virtual {v2, v1}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 703
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 706
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
