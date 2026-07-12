.class public final Lcom/android/server/pm/MultiPackageVerifyingSession;
.super Ljava/lang/Object;
.source "MultiPackageVerifyingSession.java"


# instance fields
.field public final mChildVerifyingSessions:Ljava/util/List;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mUser:Landroid/os/UserHandle;

.field public final mVerificationState:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerifyingSession;Ljava/util/List;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/android/server/pm/VerifyingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mUser:Landroid/os/UserHandle;

    .line 49
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iput-object p2, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/VerifyingSession;

    .line 57
    iput-object p0, v1, Lcom/android/server/pm/VerifyingSession;->mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance p2, Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    .line 60
    iget-object p1, p1, Lcom/android/server/pm/VerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iput-object p1, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-void

    .line 50
    :cond_1
    const-string p0, "No child sessions found!"

    const/16 p1, -0x15

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 64
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const-string/jumbo v0, "queueVerify"

    .line 66
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 65
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 67
    const-string/jumbo v0, "startVerify"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/VerifyingSession;

    .line 69
    invoke-virtual {v1}, Lcom/android/server/pm/VerifyingSession;->handleStartVerify()V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VerifyingSession;

    .line 72
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    goto :goto_1

    .line 74
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPackageVerifyingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trySendVerificationCompleteNotification(Lcom/android/server/pm/VerifyingSession;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VerifyingSession;

    .line 85
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getRet()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    move v2, v3

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 93
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0, v1, v2, p1, v0}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 96
    :catch_0
    const-string p0, "PackageManager"

    const-string p1, "Observer no longer exists."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
