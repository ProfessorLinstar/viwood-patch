.class public final Lcom/android/server/appop/AppOpsService$ModeCallback;
.super Lcom/android/server/appop/OnOpModeChangedListener;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Lcom/android/internal/app/IAppOpsCallback;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIIII)V
    .locals 6

    .line 784
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 785
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/OnOpModeChangedListener;-><init>(IIIII)V

    .line 786
    iput-object p2, v0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 788
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/appop/AppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public onOpModeChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 841
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 842
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 797
    const-string v1, "ModeCallback{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v1, " watchinguid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {p0}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 801
    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {p0}, Lcom/android/server/appop/OnOpModeChangedListener;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {p0}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchedOpCode()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 810
    const-string v1, " op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {p0}, Lcom/android/server/appop/OnOpModeChangedListener;->getWatchedOpCode()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 807
    :cond_0
    const-string v1, " op=(all)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_1
    :goto_0
    const-string v1, " from uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {p0}, Lcom/android/server/appop/OnOpModeChangedListener;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 816
    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {p0}, Lcom/android/server/appop/OnOpModeChangedListener;->getCallingPid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 818
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unlinkToDeath()V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
