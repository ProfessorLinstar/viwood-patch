.class public final Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultipathPolicyTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/os/Handler;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 541
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 546
    invoke-static {}, Lcom/android/server/connectivity/MultipathPolicyTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Should never be reached."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 551
    const-string/jumbo p1, "network_default_daily_multipath_quota_bytes"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 552
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 553
    invoke-static {}, Lcom/android/server/connectivity/MultipathPolicyTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected settings observation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->-$$Nest$mupdateAllMultipathBudgets(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    return-void
.end method
