.class public Lcom/android/server/audio/MusicFxHelper$1;
.super Landroid/app/UidObserver;
.source "MusicFxHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MusicFxHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MusicFxHelper;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/server/audio/MusicFxHelper$1;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidGone(IZ)V
    .locals 3

    .line 181
    const-string p2, "AS.MusicFxHelper"

    const-string v0, " send MSG_EFFECT_CLIENT_GONE"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object p2, p0, Lcom/android/server/audio/MusicFxHelper$1;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {p2}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/MusicFxHelper;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper$1;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-static {p0}, Lcom/android/server/audio/MusicFxHelper;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/MusicFxHelper;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x44d

    .line 183
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 182
    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
