.class public Lcom/android/server/appop/AppOpsService$2;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidProcessDeath(I)V
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$monUidProcessDeath(Lcom/android/server/appop/AppOpsService;I)V

    return-void
.end method

.method public onUidStateChanged(IIZ)V
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 473
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->-$$Nest$monUidStateChanged(Lcom/android/server/appop/AppOpsService;IIZ)V

    return-void
.end method
