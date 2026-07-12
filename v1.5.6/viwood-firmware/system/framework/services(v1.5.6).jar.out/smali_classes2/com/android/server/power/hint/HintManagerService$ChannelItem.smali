.class public Lcom/android/server/power/hint/HintManagerService$ChannelItem;
.super Ljava/lang/Object;
.source "HintManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mConfig:Landroid/hardware/power/ChannelConfig;

.field public mLinked:Z

.field public final mTgid:I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;IILandroid/os/IBinder;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    .line 1034
    iput p3, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    .line 1035
    iput-object p4, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    .line 1036
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    const/4 p1, 0x0

    .line 1037
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/power/hint/HintManagerService;->removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public closeChannel()V
    .locals 3

    .line 1041
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1043
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    if-eqz v0, :cond_1

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHal(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/IPower;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    invoke-interface {v0, v1, v2}, Landroid/hardware/power/IPower;->closeSessionChannel(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 1051
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    return-void

    :catch_0
    move-exception p0

    .line 1049
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to close session channel!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method

.method public getConfig()Landroid/hardware/power/ChannelConfig;
    .locals 0

    .line 1077
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    return-object p0
.end method

.method public openChannel()V
    .locals 3

    .line 1056
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    if-nez v0, :cond_0

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 1062
    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1060
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client already dead"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1064
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    if-nez v0, :cond_1

    .line 1068
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHal(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/IPower;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    invoke-interface {v0, v1, v2}, Landroid/hardware/power/IPower;->getSessionChannel(II)Landroid/hardware/power/ChannelConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1070
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/power/hint/HintManagerService;->removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1071
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create session channel!"

    invoke-direct {p0, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    return-void
.end method
