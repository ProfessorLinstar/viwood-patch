.class public Lcom/android/server/am/AppStartInfoTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "AppStartInfoTracker.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppStartInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppStartInfoTracker;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$1;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 933
    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    return-void

    .line 935
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$1;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->onUserRemoved(I)V

    return-void
.end method
