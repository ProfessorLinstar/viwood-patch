.class public Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemMediaRoute2Provider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method public constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;Lcom/android/server/media/SystemMediaRoute2Provider-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 698
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 699
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 703
    :cond_0
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    :goto_0
    return-void

    .line 709
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
