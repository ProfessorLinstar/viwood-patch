.class public Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;
.super Landroid/util/Pools$SimplePool;
.source "AttributedOp.java"


# instance fields
.field public mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;I)V
    .locals 0

    .line 884
    invoke-direct {p0, p2}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 885
    iput-object p1, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    return-void
.end method


# virtual methods
.method public acquire(JJLandroid/os/IBinder;Ljava/lang/String;ILjava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p9

    .line 896
    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 900
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    :goto_0
    move-object v14, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_1

    .line 905
    iget-object v0, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, v0

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->reinit(JJLandroid/os/IBinder;Ljava/lang/String;ILjava/lang/Runnable;IILandroid/app/AppOpsManager$OpEventProxyInfo;IILandroid/util/Pools$Pool;)V

    return-object v3

    .line 911
    :cond_1
    new-instance v4, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    move/from16 v10, p7

    move-object/from16 v12, p8

    move/from16 v13, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-direct/range {v4 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;ILjava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V

    return-object v4
.end method
