.class public Lcom/android/server/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 420
    const-string p1, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 421
    iget-object p0, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0}, Lcom/android/server/content/SyncManager;->-$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->setClockValid()V

    :cond_0
    return-void
.end method
