.class public Lcom/android/server/audio/AudioService$3;
.super Landroid/app/UidObserver;
.source "AudioService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1286
    iput-object p1, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final disableAudioForUid(ZI)V
    .locals 7

    .line 1297
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x64

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$mqueueMsgUnderWakeLock(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    .line 1293
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioService$3;->disableAudioForUid(ZI)V

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 0

    const/4 p2, 0x0

    .line 1289
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioService$3;->disableAudioForUid(ZI)V

    return-void
.end method
