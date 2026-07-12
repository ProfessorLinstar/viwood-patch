.class public Lcom/android/server/os/NativeTombstoneManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NativeTombstoneManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method public constructor <init>(Lcom/android/server/os/NativeTombstoneManager;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$1;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 261
    const-string p1, "android.intent.extra.UID"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-void

    .line 264
    :cond_0
    const-string v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 267
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$1;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {p0, p1, p2}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$mpurgePackage(Lcom/android/server/os/NativeTombstoneManager;IZ)V

    return-void
.end method
