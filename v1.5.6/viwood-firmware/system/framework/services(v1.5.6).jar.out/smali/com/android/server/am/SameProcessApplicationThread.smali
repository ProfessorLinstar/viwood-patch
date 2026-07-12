.class public Lcom/android/server/am/SameProcessApplicationThread;
.super Landroid/app/IApplicationThread$Default;
.source "SameProcessApplicationThread.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mWrapped:Landroid/app/IApplicationThread;


# direct methods
.method public static synthetic $r8$lambda$30wFUSGfb92ROcaDhzRGaDhM0Kc(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/am/SameProcessApplicationThread;->lambda$scheduleReceiver$0(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T10F33W428xJvDMVID4LfAZYOho(Lcom/android/server/am/SameProcessApplicationThread;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/SameProcessApplicationThread;->lambda$schedulePing$3(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ktjy8NKvnU9AoAuPRkAnHObQCdU(Lcom/android/server/am/SameProcessApplicationThread;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/SameProcessApplicationThread;->lambda$scheduleReceiverList$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xSNZcV-izZZ4vzJCToJP1hgj54U(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/am/SameProcessApplicationThread;->lambda$scheduleRegisteredReceiver$1(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/IApplicationThread;Landroid/os/Handler;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/IApplicationThread$Default;-><init>()V

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$schedulePing$3(Landroid/os/RemoteCallback;)V
    .locals 0

    .line 94
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    invoke-interface {p0, p1}, Landroid/app/IApplicationThread;->schedulePing(Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final synthetic lambda$scheduleReceiver$0(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .locals 1

    .line 55
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    invoke-interface/range {p0 .. p12}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 59
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final synthetic lambda$scheduleReceiverList$2(Ljava/util/List;)V
    .locals 0

    .line 83
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    invoke-interface {p0, p1}, Landroid/app/IApplicationThread;->scheduleReceiverList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final synthetic lambda$scheduleRegisteredReceiver$1(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .locals 1

    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    invoke-interface/range {p0 .. p12}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 74
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public schedulePing(Landroid/os/RemoteCallback;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .locals 15

    .line 53
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleReceiverList(Ljava/util/List;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .locals 15

    .line 68
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
