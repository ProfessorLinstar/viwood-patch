.class public Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;
.super Landroid/os/RemoteCallbackList;
.source "Notifier.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

.field public final synthetic val$this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 1382
    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    iput-object p2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->val$this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 1382
    check-cast p1, Landroid/os/IScreenTimeoutPolicyListener;

    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->onCallbackDied(Landroid/os/IScreenTimeoutPolicyListener;)V

    return-void
.end method

.method public onCallbackDied(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 0

    .line 1385
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    invoke-static {p0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->-$$Nest$fgetmLastReportedState(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
