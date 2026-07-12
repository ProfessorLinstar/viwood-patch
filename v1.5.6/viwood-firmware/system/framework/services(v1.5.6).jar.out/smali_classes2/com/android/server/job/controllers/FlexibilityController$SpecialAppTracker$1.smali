.class public Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "FlexibilityController.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;


# direct methods
.method public static synthetic $r8$lambda$Hgjj75vw81McR-idN_pmXrZVdXg(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mupdatePowerAllowlistCache(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .locals 0

    .line 1649
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1652
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string p2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1654
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mupdateCarrierPrivilegedCallbackRegistration(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    return-void

    .line 1658
    :cond_1
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/FlexibilityController;)Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    new-instance p2, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
