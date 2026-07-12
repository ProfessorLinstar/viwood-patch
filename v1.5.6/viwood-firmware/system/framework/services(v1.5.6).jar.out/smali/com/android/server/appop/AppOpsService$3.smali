.class public Lcom/android/server/appop/AppOpsService$3;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public static synthetic $r8$lambda$tCrK7GHyC4CL9PmON8WCNADuzSQ(Lcom/android/server/appop/AppOpsService;IIZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnotifyOpChangedForAllPkgsInUid(Lcom/android/server/appop/AppOpsService;IIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFJESR2-a5QZ8IO7g6cs3rQ3Zdc(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;III)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnotifyOpChangedForPkg(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModeChanged(Ljava/lang/String;III)V
    .locals 7

    .line 1043
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    .line 1044
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$3$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$3$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 1046
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, p1

    .line 1044
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUidModeChanged(IIILjava/lang/String;)V
    .locals 6

    .line 1034
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    .line 1035
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p3, p3, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$3$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 1037
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v5, p4

    .line 1035
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
