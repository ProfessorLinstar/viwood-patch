.class public Lcom/android/server/connectivity/MultipathPolicyTracker$2;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "MultipathPolicyTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public static synthetic $r8$lambda$DHrfOYDrWbb_U_OnZeW9KAD_ew4(Lcom/android/server/connectivity/MultipathPolicyTracker$2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->lambda$onMeteredIfacesChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onMeteredIfacesChanged$0()V
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->-$$Nest$mupdateAllMultipathBudgets(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    return-void
.end method

.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 1

    .line 529
    iget-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->-$$Nest$fgetmHandler(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
