.class public final Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultipathPolicyTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Lcom/android/server/connectivity/MultipathPolicyTracker-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->-$$Nest$mupdateAllMultipathBudgets(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    return-void
.end method
