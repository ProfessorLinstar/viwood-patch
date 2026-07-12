.class public final Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "WakefulnessSessionObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;Lcom/android/server/power/WakefulnessSessionObserver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;)V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 0

    .line 841
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {p0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmContext(Lcom/android/server/power/WakefulnessSessionObserver;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->updateSettingScreenOffTimeout(Landroid/content/Context;)V

    return-void
.end method
